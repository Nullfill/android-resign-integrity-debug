# All modifications applied to AppX (20.2.0 / 20201600)

Every change is in the app's smali tree; final build = surgical dex replacement
(`rebuild_v4.py`). Class names below use the repo pseudonym map; `classesN`
indicates which dex tree the file lives in.

## A. New classes we added (full sources in `smali_added/`)

| Class | Dex | Purpose |
|---|---|---|
| `com.appx.patcher.OrigSig` | classes18 | Holds original signer cert as `new Signature(hex)`; `a(PackageInfo)` returns it only for our package name, `b()` always returns it |
| `com.appx.patcher.SigProxy` | classes37 (new dex) | `wrap(Context)` → CtxWrap |
| `com.appx.patcher.SigProxy$CtxWrap` | classes37 | ContextWrapper overriding `getPackageManager()` → PmProxy; `getApplicationInfo()` → Spoof.appInfo (sourceDir/publicSourceDir → original-signed APK at `/data/local/tmp/orig_signed.apk`); `getPackageCodePath()`/`getPackageResourcePath()` → same path |
| `com.appx.patcher.SigProxy$PmProxy` | classes37 | PackageManager subclass; 180 abstract methods + 46 `*Flags` overloads delegated to the real PM; `getPackageInfo(String,int)` / `getPackageInfoAsUser(String,int,int)` / Flags variants → `Spoof.apply(PackageInfo)` |
| `com.appx.patcher.Spoof` | classes37 | `apply`: replaces `signatures[]` (OrigSig) + forges `signingInfo` via hand-built Parcel → `SigningInfo.CREATOR.createFromParcel` (try/catch — falls back gracefully); `appInfo`: copy of ApplicationInfo with redirected paths |

Generated uniformly per method: real PM at v0, `move-object v1, v0`, params copied
down to v2..vN, `invoke-virtual/range {v1 .. vN}` — works for any arity
(non-range invoke caps at 5 regs; range requires contiguous registers).

## B. Signature read-site rewrites (13 sites + 1)

Pattern applied to every consumer inside app/vendor classes:

```smali
# before
iget-object vN, vM, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
# after
invoke-static {vM}, Lcom/appx/patcher/OrigSig;->a(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
move-result-object vN
```

Files: `vendorid/common/utility/SignUtils` (×2), `vendorid/bdinstall/loader/SigHashLoader`,
`X/1Eq.1`, `vendorid/sdk/component/utils/cq` (classes10); `ms/vendorid/o/n0` (the
SDK's native→Java bridge, classes11), `lm/components/utils/AppUtils`,
`appx/util/ApkSignUtil`, `ttnet/.../PackageUtils` (×2), `pgl/ssdk/t`,
`deviceregister/.../RegistrationHeaderHelper` (classes11), `bykvm/f` (classes2).
Plus the `SigningInfo.getApkContentsSigners()` path in `PainterSdkImpl$init$2`
(classes5) replaced with the OrigSig call.

## C. Application base-context wrap (classes11)

`ScaffoldApplication.attachBaseContext`, immediately before `invoke-super`:

```smali
invoke-static {v2}, Lcom/appx/patcher/SigProxy;->wrap(Landroid/content/Context;)Landroid/content/Context;
move-result-object v2
invoke-super {v1, v2}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V
```

## D. Local tamper-detection neutralization

1. **Native**: `lib/arm64-v8a/libguard.so` in the arm64 split had the ORIGINAL
   signer cert SHA-256 embedded at file offset **0x6880** (single occurrence
   across all 162 native libs). Replaced with OUR re-sign cert SHA-256, split
   re-signed.
2. **Java gate** (classes3): `GuardConfig.b()Z` → always `false`
   (`const/4 v0, 0x0; return v0`) so the module never initializes.

**Verified**: offline + fresh data → warning flow 0 triggers (was ~11).

## E. Client-side enforcement removals

1. `network/interceptors/TamperInterceptor.c(I)V` (classes11) → `return-void`
   (was writing an `isTamper=true` pref on error codes 34010421/34010422).
2. **Second interceptor** (`applauncher/core/interceptors/TamperInterceptor`,
   classes11): on `ret` ∈ {34010421, 34010422, "-4", "-5"} it used to
   `throw v6` (null) killing the request → surfaced as the user-visible
   "feature busy" error and empty panels. Patched to:

```smali
invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
return-object v7
```

3. `WarningDialogActivity.onCreate` (classes18) — call super, then finish:

```smali
invoke-static {p0, p1}, ...ActivityLifecycleHook;->a(...)V
invoke-super {p0, p1}, ...->onCreate(...)V
invoke-virtual {p0}, Landroid/app/Activity;->finish()V
return-void
```

(`finish()` BEFORE super → `SuperNotCalledException`. Learned the hard way.)

## F. Diagnostics (still in the build)

`DeeplinkIntentLancetImpl.a(Intent)` (classes11): logs tag `PatchTrace` with a
`Throwable` stack whenever an Intent containing `warning_dialog`-scheme data is
started — this identified the launch path (deeplink from native via the
precondition activity chain).

## G. Install-time

`adb install-multiple -r -i com.android.vending --no-incremental ...` so
`installerPackageName` matches a store install (was `null`/`com.android.shell`).
