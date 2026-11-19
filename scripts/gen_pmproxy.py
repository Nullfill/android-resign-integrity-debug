"""Generate PackageManager proxy smali classes from the device's real abstract-method list.

Outputs into base_decoded_smali/smali_classes29/com/appx/patcher/:
  SigProxy.smali            - static wrap(Context)Context
  SigProxy$CtxWrap.smali    - ContextWrapper overriding getPackageManager()
  SigProxy$PmProxy.smali    - PackageManager subclass, delegates all abstract methods
                              (spoofs getPackageInfo / getPackageInfoAsUser)
  Spoof.smali               - PackageInfo spoofing + SigningInfo parcel crafting
Also regenerates OrigSig.smali (adds b() -> always-spoofed Signature[]) and patches
ScaffoldApplication.attachBaseContext to wrap the base context.
"""
import os, sys

BASE = r"D:\appx_patch"
SMALI_ROOT = os.path.join(BASE, "base_decoded_smali")
OUT_DIR = os.path.join(SMALI_ROOT, "smali_classes29", "com", "appx", "patcher")
METHODS_FILE = os.path.join(BASE, "pmproxy", "device_pm_all.txt")
CERT_HEX = open(os.path.join(BASE, "orig_cert.hex")).read().strip()
os.makedirs(OUT_DIR, exist_ok=True)

parsed = []  # (kind, name, params, ret)  kind: A=abstract, C=concrete, S=static
for line in open(METHODS_FILE):
    line = line.strip()
    if not line or line[1:2] != " " or line[0] not in "ACS":
        continue
    kind, sig = line[0], line[2:]
    name, rest = sig.split("(", 1)
    params, ret = rest.rsplit(")", 1)
    parsed.append((kind, name, params, ret))
print(f"parsed {len(parsed)} declared methods")

# abstract ones must be implemented; concrete *Flags overloads default-throw on
# modern APIs (e.g. getPackageInfo(String, PackageInfoFlags)) so delegate them too
abstract, extras, seen_keys = [], [], set()
SPOOF_NAMES = ("getPackageInfo", "getPackageInfoAsUser",
               "getApplicationInfo", "getApplicationInfoAsUser")
for kind, name, params, ret in parsed:
    key = (name, params)
    if kind == "A":
        abstract.append((name, params, ret,
                         name in SPOOF_NAMES or name.startswith("getApplicationInfo")))
        seen_keys.add(key)
    elif kind == "C" and "Flags" in params and key not in seen_keys:
        spoof = name in SPOOF_NAMES
        extras.append((name, params, ret, spoof))
        seen_keys.add(key)
all_methods = abstract + extras
print(f"abstract: {len(abstract)}, Flags-extras: {len(extras)}")

SPECIAL = {
    ("getPackageInfo", "Ljava/lang/String;I"),
    ("getPackageInfoAsUser", "Ljava/lang/String;II"),
}

def num_param_regs(params):
    n = 0
    for t in split_params(params):
        n += 2 if t in ("J", "D") else 1
    return n

def split_params(params):
    # proper descriptor tokenizer: 'L...;' consumed as a unit regardless of
    # interior characters (e.g. the 'L' inside "List"), '[' prefixes kept
    out, i, n = [], 0, len(params)
    while i < n:
        arr = ""
        while i < n and params[i] == "[":
            arr += "["
            i += 1
        if i < n and params[i] == "L":
            j = params.index(";", i)
            out.append(arr + params[i:j + 1])
            i = j + 1
        else:
            out.append(arr + params[i])
            i += 1
    return out

def param_sig_types(params):  # e.g. Ljava/lang/String;I -> [Ljava/lang/String;, I]
    return split_params(params)

# ------------------------------------------------------------------ SigProxy
with open(os.path.join(OUT_DIR, "SigProxy.smali"), "w", newline="\n") as f:
    f.write(""".class public final Lcom/appx/patcher/SigProxy;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    if-nez p0, :ok

    const/4 v0, 0x0

    return-object v0

    :ok
    new-instance v0, Lcom/appx/patcher/SigProxy$CtxWrap;

    invoke-direct {v0, p0}, Lcom/appx/patcher/SigProxy$CtxWrap;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
""")

# ------------------------------------------------------------------ CtxWrap
with open(os.path.join(OUT_DIR, "SigProxy$CtxWrap.smali"), "w", newline="\n") as f:
    f.write(""".class public final Lcom/appx/patcher/SigProxy$CtxWrap;
.super Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 2

    invoke-super {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/appx/patcher/SigProxy$PmProxy;

    invoke-direct {v1, v0}, Lcom/appx/patcher/SigProxy$PmProxy;-><init>(Landroid/content/pm/PackageManager;)V

    return-object v1
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/appx/patcher/Spoof;->appInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/local/tmp/orig_signed.apk"

    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/local/tmp/orig_signed.apk"

    return-object v0
.end method
""")

# ------------------------------------------------------------------ PmProxy
body = []
body.append(""".class public final Lcom/appx/patcher/SigProxy$PmProxy;
.super Landroid/content/pm/PackageManager;


# instance fields
.field private final a:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    iput-object p1, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
""")

special_bodies = {
    ("getPackageInfo", "Ljava/lang/String;I"): """\
.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/appx/patcher/Spoof;->apply(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method
""",
    ("getPackageInfoAsUser", "Ljava/lang/String;II"): """\
.method public getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/appx/patcher/Spoof;->apply(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method
""",
}

seen, dup = set(), 0
for name, params, ret, do_spoof in all_methods:
    key = (name, params)
    if key in seen:
        dup += 1
        continue
    seen.add(key)
    if key in SPECIAL:
        body.append(special_bodies[key])
        body.append("\n")
        continue

    ptypes = split_params(params)
    nregs = sum(2 if t in ("J", "D") else 1 for t in ptypes)
    locals_n = nregs + 2
    body.append(f".method public {name}({params}){ret}\n    .locals {locals_n}\n\n")
    body.append("    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;\n\n")
    if nregs == 0:
        body.append(f"    invoke-virtual {{v0}}, Landroid/content/pm/PackageManager;->{name}({params}){ret}\n\n")
    else:
        # uniform strategy: real PM at v1, params copied down to v2..v{1+nregs}
        # so invoke/range {v1 .. v{1+nregs}} always fits; params live above
        # (p-registers start at v_{locals_n}), so sources never overlap targets
        body.append("    move-object v1, v0\n\n")
        offset = 0
        for t in ptypes:
            tgt = 2 + offset
            # p0 (this) occupies one register at v_{locals_n}; param i lives at v_{locals_n + 1 + offset}
            src = locals_n + 1 + offset
            if t in ("J", "D"):
                op = "move-wide"
            elif t.startswith("L") or t.startswith("["):
                op = "move-object"
            else:
                op = "move"
            if src > 15:
                op += "-from16"
            body.append(f"    {op} v{tgt}, v{src}\n\n")
            offset += 2 if t in ("J", "D") else 1
        body.append(f"    invoke-virtual/range {{v1 .. v{1 + nregs}}}, Landroid/content/pm/PackageManager;->{name}({params}){ret}\n\n")
    if ret == "V":
        body.append("    return-void\n")
    elif ret in ("J", "D"):
        body.append("    move-result-wide v0\n\n    return-wide v0\n")
    elif ret.startswith("L") or ret.startswith("["):
        body.append("    move-result-object v0\n\n")
        if do_spoof and ret == "Landroid/content/pm/ApplicationInfo;":
            body.append("    invoke-static {v0}, Lcom/appx/patcher/Spoof;->appInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;\n\n    move-result-object v0\n\n")
        elif do_spoof and ret == "Landroid/content/pm/PackageInfo;":
            body.append("    invoke-static {v0}, Lcom/appx/patcher/Spoof;->apply(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;\n\n    move-result-object v0\n\n")
        body.append("    return-object v0\n")
    else:
        body.append("    move-result v0\n\n    return v0\n")
    body.append(".end method\n\n")

with open(os.path.join(OUT_DIR, "SigProxy$PmProxy.smali"), "w", newline="\n") as f:
    f.write("".join(body))
print(f"PmProxy: {len(seen)} methods ({dup} dups skipped)")

# ------------------------------------------------------------------ Spoof
with open(os.path.join(OUT_DIR, "Spoof.smali"), "w", newline="\n") as f:
    f.write(""".class public final Lcom/appx/patcher/Spoof;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .locals 3

    if-eqz p0, :ret

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.ourcompany.appx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :ret

    :try_start_0
    invoke-static {}, Lcom/appx/patcher/Spoof;->signingInfo()Landroid/content/pm/SigningInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :sig

    :catch_0
    move-exception v0

    :sig
    invoke-static {p0}, Lcom/appx/patcher/OrigSig;->a(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :ret
    return-object p0
.end method

.method public static appInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 3

    if-eqz p0, :ret

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.ourcompany.appx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :ret

    :try_start_0
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    const-string v2, "/data/local/tmp/orig_signed.apk"

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object p0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :ret

    :catch_0
    move-exception v1

    :ret
    return-object p0
.end method

.method public static signingInfo()Landroid/content/pm/SigningInfo;
    .locals 6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {}, Lcom/appx/patcher/OrigSig;->b()[Landroid/content/pm/Signature;

    move-result-object v2

    array-length v3, v2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    array-length v5, v4

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length v3, v2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    array-length v5, v4

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v3, Landroid/content/pm/SigningInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3
.end method
""")

# ------------------------------------------------------------------ OrigSig (regen with b())
with open(os.path.join(SMALI_ROOT, "smali_classes18", "com", "appx", "patcher", "OrigSig.smali"), "w", newline="\n") as f:
    f.write(f""".class public final Lcom/appx/patcher/OrigSig;
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

.method public constructor <init>()V
    .locals 0

    invoke-direct {{p0}}, Ljava/lang/Object;-><init>()V

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

.method public static b()[Landroid/content/pm/Signature;
    .locals 1

    sget-object v0, Lcom/appx/patcher/OrigSig;->a:[Landroid/content/pm/Signature;

    return-object v0
.end method
""".replace("{CERT_HEX}", CERT_HEX))
print("OrigSig.smali regenerated with b()")

# ------------------------------------------------------------------ ScaffoldApplication patch
scaf = os.path.join(SMALI_ROOT, "smali_classes11", "com", "appx", "launcher", "ScaffoldApplication.smali")
src = open(scaf, encoding="utf-8").read().replace("\r\n", "\n")
anchor = "    invoke-super {v1, v2}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V"
if anchor not in src:
    print("SCAFFOLD ANCHOR NOT FOUND"); sys.exit(1)
if "SigProxy;->wrap" in src:
    print("ScaffoldApplication already patched")
else:
    src = src.replace(anchor,
        "    invoke-static {v2}, Lcom/appx/patcher/SigProxy;->wrap(Landroid/content/Context;)Landroid/content/Context;\n\n"
        "    move-result-object v2\n\n" + anchor, 1)
    open(scaf, "w", encoding="utf-8", newline="\n").write(src)
    print("ScaffoldApplication.attachBaseContext patched")

print("DONE")
