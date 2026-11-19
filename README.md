# android-resign-integrity-debug

Debugging project: after re-signing our production Android app ("AppX") with the
enterprise keystore, a third-party security/licensing SDK's cloud backend still
rejects the guarded feature APIs (app-level error code `34010421`), while
subscription/commerce endpoints on the same backend work fine.

**Full problem statement, evidence and hypotheses:** see [`PROBLEM_BRIEF.md`](PROBLEM_BRIEF.md)
**Every code modification we made (with snippets):** see [`PATCHES.md`](PATCHES.md)

## Status summary

| Layer | State |
|---|---|
| Java-level signature spoof (13 sites + 1 SigningInfo path) | done, running |
| PackageManager proxy via ContextWrapper (226 generated methods) | done, running |
| Local tamper-detection native lib (embedded cert digest swap) | done, **verified fixed offline** |
| Client-side enforcement (throw / dialog / pref write) | done, neutralized |
| Server-side rejection on guarded APIs | **OPEN PROBLEM** — see brief, §"Remaining problem" |

Verified with network disabled + fresh app data: local warning flow fires 0×/session
(previously ~11×). Online, the backend still returns rejection verdicts.

## Repo layout

```
PROBLEM_BRIEF.md        anonymized full technical brief (start here)
PATCHES.md              every modification we applied to the app, with snippets
smali_added/            smali classes we authored from scratch (drop-in helpers)
  OrigSig.smali           static holder of the ORIGINAL signer certificate
  SigProxy.smali          Context wrapper factory (wrap/base context)
  SigProxy$CtxWrap.smali  ContextWrapper: getPackageManager/ApplicationInfo/CodePath overrides
  SigProxy$PmProxy.smali  generated PackageManager subclass (180 abstract + 46 Flags overloads)
  Spoof.smali             PackageInfo spoofing + forged SigningInfo via crafted Parcel
scripts/
  extract_cert.py         parse APK Signing Block v2/v3, extract original cert DER
  patch_sig.py            rewrite every PackageInfo.signatures read-site to OrigSig
  gen_pmproxy.py          generator: dumps device PM method list, emits all proxy smali,
                          patches Application.attachBaseContext to wrap the base context
  rebuild_v4.py           re-assemble patched dex trees + surgical zip replacement into APK
  install_phone.sh        one-shot device install (Play-store installer name) + monitoring
tools/pmproxy/Dump.java   app_process reflector: dumps runtime PackageManager method list
```

## Pseudonym map (used consistently in this repo)

| Real concept | Pseudonym |
|---|---|
| the app | AppX, package `com.ourcompany.appx` |
| app-internal namespace | `com.appx.*` |
| security SDK vendor classes | `vendorid.*` |
| tamper-detection native lib | `libguard.so` |
| request-token native lib | `libtoken.so` |
| original signer cert hex | `<ORIGINAL_CERT_HEX>` (redacted; public bytes embedded in any original APK) |

## Reproduction pipeline (outline)

1. `extract_cert.py` → `orig_cert.der` + `.hex` from the original APK's v2 block.
2. `patch_sig.py` → signature read-site rewrites + `OrigSig.smali` into the smali tree.
3. `tools/pmproxy/Dump.java` → compile→d8→`app_process` on device → `device_pm_all.txt`.
4. `gen_pmproxy.py` → emits `SigProxy*`/`Spoof` into a NEW dex tree (`classes37.dex`,
   next consecutive index — non-consecutive names are silently not loaded).
5. `rebuild_v4.py` → smali assemble (`--api 36`) + zip surgery (dex entries STORED).
6. zipalign → apksigner → `install_phone.sh` (installs with `-i com.android.vending`).

## Hard-won gotchas (documented so they are not re-discovered)

- `finish()` before `super.onCreate()` → `SuperNotCalledException`; call super first.
- New dex entries MUST use the next consecutive `classesN.dex` number.
- Python zipfile default-compresses; keep dex/native-lib entries STORED like the source.
- jarsigner output (v1-only) is rejected at targetSdk 36 — use apksigner (min v2).
- Emulator (Android 9 x86) is not a valid environment for this app: it self-exits
  even when originally-signed.
- `pm clear` does NOT reset the SDK's device identity (fingerprint-derived).
