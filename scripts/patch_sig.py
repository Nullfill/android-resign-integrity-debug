"""Spoof APK signature reporting to the original Vendor certificate.

1. Writes com/appx/patcher/OrigSig.smali (hardcoded original cert hex) into smali_classes18.
2. Replaces every `iget-object rN, rM, PackageInfo->signatures` in vendor
   classes with a call to OrigSig.a(PackageInfo) (returns original cert when the
   queried package is the app itself).
3. Special-case patch for PainterSdkImpl$init$2 (signingInfo.getApkContentsSigners path).
"""
import re, os, sys

BASE = r"D:\appx_patch"
SMALI_ROOT = os.path.join(BASE, "base_decoded_smali")
CERT_HEX = open(os.path.join(BASE, "orig_cert.hex")).read().strip()
assert len(CERT_HEX) == 1494, len(CERT_HEX)

# ---------------------------------------------------------------- helper class
HELPER_DIR = os.path.join(SMALI_ROOT, "smali_classes18", "com", "appx", "patcher")
os.makedirs(HELPER_DIR, exist_ok=True)

helper = """.class public final Lcom/appx/patcher/OrigSig;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Landroid/content/pm/Signature;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "{CERT_HEX}"

    invoke-direct {{v0, v1}}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aput-object v0, v2, v1

    sput-object v2, Lcom/appx/patcher/OrigSig;->a:[Landroid/content/pm/Signature;

    return-void
.end method

.method public static a(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .locals 2

    if-eqz p0, :own

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.ourcompany.appx"

    invoke-virtual {{v1, v0}}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :real

    :own
    sget-object v0, Lcom/appx/patcher/OrigSig;->a:[Landroid/content/pm/Signature;

    return-object v0

    :real
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    return-object v0
.end method
""".replace("{CERT_HEX}", CERT_HEX)

with open(os.path.join(HELPER_DIR, "OrigSig.smali"), "w", encoding="utf-8", newline="\n") as f:
    f.write(helper)
print("[+] OrigSig.smali written")

# ------------------------------------------------------- iget signatures swap
IGET = re.compile(
    r"iget-object ([vp]\d+), ([vp]\d+), "
    r"Landroid/content/pm/PackageInfo;->signatures:\[Landroid/content/pm/Signature;"
)

TARGETS = [
    r"smali_classes2\bykvm_throw128\f.smali",
    r"smali_classes10\X\1Eq.1.smali",
    r"smali_classes10\com\vendorid\sdk\component\utils\cq.smali",
    r"smali_classes10\com\vendorid\common\utility\SignUtils.smali",
    r"smali_classes10\com\vendorid\bdinstall\loader\SigHashLoader.smali",
    r"smali_classes11\ms\bd\o\n0.smali",
    r"smali_classes11\com\lm\components\utils\AppUtils.smali",
    r"smali_classes11\com\appx\util\ApkSignUtil.smali",
    r"smali_classes11\com\ttnet\org\chromium\base\PackageUtils.smali",
    r"smali_classes11\com\pgl\ssdk\t.smali",
    r"smali_classes11\com\ss\android\deviceregister\base\RegistrationHeaderHelper.smali",
]

CALL = ("invoke-static {{{pi}}}, Lcom/appx/patcher/OrigSig;->a(Landroid/content/pm/PackageInfo;)"
        "[Landroid/content/pm/Signature;")

total = 0
for rel in TARGETS:
    path = os.path.join(SMALI_ROOT, rel)
    with open(path, "r", encoding="utf-8") as f:
        src = f.read()

    def repl(m):
        return f"{CALL.format(pi=m.group(2))}\n\n    move-result-object {m.group(1)}"

    out, n = IGET.subn(repl, src)
    if n == 0:
        print(f"[!] NO MATCH in {rel}")
        continue
    with open(path, "w", encoding="utf-8", newline="\n") as f:
        f.write(out)
    total += n
    print(f"[+] {rel}: {n} site(s) patched")

# ------------------------------------------------- PainterSdk signingInfo path
p_path = os.path.join(SMALI_ROOT, r"smali_classes5\com\xt\retouch\painter\PainterSdkImpl$init$2.smali")
with open(p_path, "r", encoding="utf-8") as f:
    src = f.read()

PAINTER = re.compile(
    r"iget-object v0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;"
    r".*?"
    r"invoke-virtual \{v0\}, Landroid/content/pm/SigningInfo;->getApkContentsSigners\(\)\[Landroid/content/pm/Signature;"
    r".*?"
    r"move-result-object v0",
    re.S,
)
out, n = PAINTER.subn(
    "invoke-static {v0}, Lcom/appx/patcher/OrigSig;->a(Landroid/content/pm/PackageInfo;)"
    "[Landroid/content/pm/Signature;\n\n    move-result-object v0",
    src, count=1)
if n == 1:
    with open(p_path, "w", encoding="utf-8", newline="\n") as f:
        f.write(out)
    total += 1
    print(f"[+] PainterSdkImpl$init$2: signingInfo path patched")
else:
    print("[!] PainterSdk patch FAILED - pattern not found")

print(f"\nTotal sites patched: {total}")
if total < 14:
    print("WARNING: expected 14 patches (13 iget + 1 painter)")
    sys.exit(1)
print("OK")
