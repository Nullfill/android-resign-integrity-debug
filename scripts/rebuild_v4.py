"""Rebuild all patched DEX files (incl. new classes29) and swap into clean base APK."""
import subprocess, zipfile, os, sys

BASE_DIR = r"D:\appx_patch"
SMALI_ROOT = os.path.join(BASE_DIR, "base_decoded_smali")
CLEAN_APK = os.path.join(BASE_DIR, "appx_patched_clean.apk")
OUT_APK = os.path.join(BASE_DIR, "appx_base_v4_unsigned.apk")
JADX_LIB = r"D:\burpsuite\jadx\lib"
JAVA = r"C:\Program Files\Java\jdk-17\bin\java.exe"

CP = ";".join(os.path.join(JADX_LIB, f) for f in os.listdir(JADX_LIB) if f.endswith(".jar"))

PATCHED = [
    ("smali_classes2", "classes2.dex"),
    ("smali_classes3", "classes3.dex"),
    ("smali_classes5", "classes5.dex"),
    ("smali_classes10", "classes10.dex"),
    ("smali_classes11", "classes11.dex"),
    ("smali_classes18", "classes18.dex"),
    ("smali_classes29", "classes37.dex"),   # NEW dex, not in original APK
]

compiled = {}
for sub, dex_name in PATCHED:
    src = os.path.join(SMALI_ROOT, sub)
    out = os.path.join(BASE_DIR, f"patched_{dex_name}")
    print(f"[1] {sub} -> {dex_name} ...")
    r = subprocess.run(
        [JAVA, "-cp", CP, "org.jf.smali.Main", "assemble", src, "-o", out, "--api", "36"],
        capture_output=True, text=True)
    if r.returncode != 0 or not os.path.exists(out):
        print("COMPILE FAILED rc=%d" % r.returncode)
        print(r.stdout[:1500]); print(r.stderr[:1500]); sys.exit(1)
    compiled[dex_name] = out
    print("    ok: %d bytes" % os.path.getsize(out))

print("[2] swapping DEX files into clean APK ...")
tmp = OUT_APK + ".tmp"
added = set()
with zipfile.ZipFile(CLEAN_APK, "r") as zin, \
     zipfile.ZipFile(tmp, "w", zipfile.ZIP_DEFLATED, allowZip64=True) as zout:
    for item in zin.infolist():
        if item.filename in compiled:
            with open(compiled[item.filename], "rb") as f:
                zout.writestr(zipfile.ZipInfo(item.filename), f.read())
            added.add(item.filename)
            print("    replaced %s" % item.filename)
        else:
            zout.writestr(item, zin.read(item.filename))
    # brand-new dex entries
    for dex_name, path in compiled.items():
        if dex_name not in added:
            with open(path, "rb") as f:
                zout.writestr(zipfile.ZipInfo(dex_name), f.read())
            print("    added NEW %s" % dex_name)
os.replace(tmp, OUT_APK)
print("[3] done -> %s (%d bytes)" % (os.path.basename(OUT_APK), os.path.getsize(OUT_APK)))
