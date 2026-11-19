# Android App Re-signing Breaks Third-Party SDK Server Validation — Debug Brief

## Context (the programming problem)
We maintain a large production Android app — call it **AppX** (package `com.ourcompany.appx`, placeholder). As part of our internal/enterprise distribution we **re-package and re-sign the release APK with our own keystore** instead of the original release key. The app embeds a **third-party security/licensing SDK** ("the vendor SDK") whose **cloud backend validates that requests come from a genuinely-signed build**. After our re-signing step:

- A local tamper-detection module used to kill/warn the app — **we already fully fixed this part (verified)**.
- The **vendor's server still refuses the feature APIs** we need (panel/list endpoints return a specific rejection code, `34010421`, and the UI shows a generic "try again later" error / empty lists).
- Everything else works: login flows, subscription/commerce endpoints respond normally. Only the SDK-guarded feature APIs are refused.

We need our re-signed build to be treated by the vendor backend exactly like the original-signed build. Looking for the remaining bug/vector.

## Build/environment facts
- AppX: versionCode 20201600, minSdk 23, **targetSdk 36**, installed as **split APKs** (base + arm64-v8a + en/fa/xxhdpi config splits). ~37 dex files (classes.dex…classes36.dex).
- Test device: Samsung, **Android 16 (API 36)**, arm64-v8a, **no root**, adb only.
- Emulators are NOT usable for this app (it self-exits on the Android 9 emulator even when originally-signed — verified baseline).
- Our pipeline: apktool decode → edit smali → re-assemble only changed dexes → **surgical dex replacement into the original APK zip** (aapt2 full rebuild fails on obfuscated resource names like `+k.xml`), plus zipalign + apksigner (v1+v2).
- Original signer cert SHA-256: `6f33fd446f6e83a767d4fff9c19cecf76059814ea6a7ea71df1d0def2d75db31`
- Our re-sign cert SHA-256:      `b9606d3d23957cb3098a77fec8d206060f42ae5217b227241765567d60377eb6`
- Installer package name is set to the genuine store installer (`com.android.vending`) at install time.

## What we already implemented (all verified running, 0 crashes)

### 1) Java-level signature spoof — done, apparently insufficient
Replaced every read of `PackageInfo.signatures` inside app/vendor Java classes (13 sites, including the SDK's Java bridge class that native code can call back into) with a helper returning the ORIGINAL cert bytes (`new Signature(hexString)`). Also patched one `SigningInfo.getApkContentsSigners()` path the same way.

### 2) PackageManager proxy via ContextWrapper (no-root technique) — done, apparently insufficient
The Application class's `attachBaseContext` now wraps the base context in a ContextWrapper that:
- `getPackageManager()` → returns a generated `PackageManager` subclass proxy. The proxy was **generated from the device's own runtime abstract-method list** (dumped via `app_process` reflection, 180 abstract methods + 46 `*Flags` concrete overloads that otherwise default-throw). All methods delegate to the real PM; `getPackageInfo`/`getPackageInfoAsUser` (+`PackageInfoFlags` variants) return a PackageInfo whose `signatures[]` = original cert and `signingInfo` = a **forged SigningInfo built via a hand-crafted Parcel + `SigningInfo.CREATOR.createFromParcel`** (writeInt hasPast=0, hasMultiple=0, then two typed-array blocks of the cert bytes).
- `getApplicationInfo()` → returns a copy with `sourceDir`/`publicSourceDir` redirected to the ORIGINAL Play-signed APK file (pushed to `/data/local/tmp/orig.apk`, chmod 644).
- `getPackageCodePath()` / `getPackageResourcePath()` → return the same original-APK path.
Notes learned the hard way: a **new dex entry must use the next consecutive multidex index** (classes37.dex; `classes99.dex` was silently not loaded); native callers that obtain PM through this context DO hit the proxy (JNI virtual dispatch).

### 3) Local tamper-detection kill — done and **VERIFIED FIXED**
The app ships an obfuscated native guard library (`libguard.so`, pseudonym). Binary-searching all 162 native libs for embedded digests found the **original cert SHA-256 raw bytes at file offset 0x6880 inside `libguard.so`** (single occurrence). We:
- replaced those 32 bytes with OUR cert SHA-256 inside the arm64 split, re-signed the split;
- also forced the Java-side enable-gate (`GuardConfig.b()`) to always return `false` so the module never initializes.
**Verification: with network disabled (airplane) + fresh app data, the warning flow that previously fired ~11×/session now fires 0×.** So local detection is fully defeated.

### 4) Client-side enforcement removals — done
- An interceptor that used to **throw** on vendor rejection codes (`34010421`, `34010422`, `-4`, `-5`) now passes the response through.
- The warning "dialog activity" is force-finished in `onCreate` (after `super.onCreate()` — calling finish() before super throws SuperNotCalledException).
- The pref write that recorded the tamper flag is a no-op.

## The remaining problem (exactly one layer)
**Online, the vendor backend still returns the rejection verdict on the guarded APIs** — the warning flow is triggered ~30-40×/session (visually suppressed), a risk-control endpoint (`…/v1/risk_control/check`) is hit twice per session, and the feature panel API responses carry `ret=34010421`.

Given local checks are dead and everything Java-visible reports the original signature, the verdict must originate from one of:

- **H1 — native request tokens**: the vendor's obfuscated token library (`libtoken.so`, pseudonym; ~1.9MB, OLLVM-style, **zero readable strings**, JNI bridges registered from native) computes X-Sign-style request headers over the REAL APK signature, read via a path our context wrapper cannot intercept: hidden static `ActivityThread.getPackageManager()`, direct parse of the installed APK's v2 signing block at `/data/app/.../base.apk`, `/proc/self/maps`, or cached JNI method IDs resolved before our wrap. (Our wrap runs in `attachBaseContext`, i.e. earliest possible.)
- **H2 — sticky server-side flag on device identity**: the app's `device_id`/`iid`/`openudid` **survive `pm clear`** (re-derived from a hardware fingerprint, not from external storage — we checked /sdcard). The backend may simply remember this device from earlier refused sessions and keep refusing regardless of token correctness.

## Candidate next moves (what we want help deciding/executing)
A. **Native RE of `libtoken.so`** (arm64, extracted, path available): find where it reads the signer cert/digest and patch it to use the original cert so tokens validate. We have capstone; no Ghidra/IDA installed. Pointers on locating the JNI read in an OLLVM binary welcome (exports are minimal; strings encrypted).
B. **Cheap H2 test**: how to truly reset the fingerprint-derived identity without root (we already know `pm clear` is insufficient; `ANDROID_ID` is in settings-internal storage; no other vendor apps installed on the device that could act as an identity provider).
C. **Client-side verdict ignore**: patch handling of the risk-control response so the verdict is discarded — but ONLY useful if the feature APIs themselves aren't independently refused; we haven't yet proven which exact request returns the rejection (bodies not visible in logcat; SDK uses TLS pinning so MITM shows nothing).
D. **Prove the failing request**: any no-root technique to log the SDK's HTTP layer (it's OkHttp-like with its own cronet stack and pinning) — e.g. smali-level hook of its response callback to dump URL+body for the feature panel fetch.

## Data points that might matter
- A second interceptor class (pure Java, different package) ALSO inspected responses for the same codes — now neutralized; its `throw` was what surfaced as the user-visible "too many people" style error and empty lists.
- Subscription/commerce endpoints on the same backend respond fine in the same session (so it's not blanket blocking).
- Emulator baseline: the app self-exits (`System.exit(-1)` after a `ClassNotFoundException` for an optional tracing class) even when originally signed — so all testing must be on the real device.
- The v2 signing block of the original APK contains: v2, v3, source-stamp (stamp cert SHA-256 `3257d599a49d2c961a471ca9843f59d341a405884583fc087df4237b733bbd6d`), plus two proprietary block IDs. Our re-signed build has only v2+v3 — **no source stamp** (we can't forge it). If the backend or SDK checks stamp presence, that's another possible vector.

## Deliverables available if needed
- Patched base APK + patched arm64 split (our key), keystore.
- Original cert DER, method-dump tooling, PM-proxy generator script, full smali tree with all patches.
