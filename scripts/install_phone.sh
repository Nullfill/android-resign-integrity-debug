#!/bin/bash
# One-shot installer: patched AppX (v4) onto the connected PHONE.
# Prereq: phone plugged in with USB debugging; original apk already at
# /data/local/tmp/orig_signed.apk (pushed below if missing).
set -e
export MSYS_NO_PATHCONV=1
cd /d/appx_patch

echo "[1] device check"
adb get-serialno

echo "[2] ensure original apk is on device (needed for native digest redirect)"
if ! adb shell "ls /data/local/tmp/orig_signed.apk" >/dev/null 2>&1; then
  adb push base.apk //data/local/tmp/orig_signed.apk
fi
adb shell "chmod 644 /data/local/tmp/orig_signed.apk"

echo "[3] install patched base + splits (Play installer name, keep data)"
adb install-multiple -r -i com.android.vending --no-incremental \
  appx_base_v4_signed.apk \
  splits/arm64_v8a_final.apk \
  splits/en_final.apk \
  splits/fa_final.apk \
  splits/xxhdpi_final.apk

echo "[4] launch + monitor"
adb logcat -c
adb shell am force-stop com.ourcompany.appx 2>/dev/null || true
adb shell monkey -p com.ourcompany.appx -c android.intent.category.LAUNCHER 1 >/dev/null
sleep 45
echo "--- results ---"
echo "crashes:   $(adb logcat -d 2>/dev/null | grep -cE 'FATAL EXCEPTION' || true)"
echo "modal trys:$(adb logcat -d 2>/dev/null | grep -cE 'START u0.*WarningDialog' || true)"
echo "check_risk:$(adb logcat -d 2>/dev/null | grep -c 'check_risk' || true)"
echo ""
echo "Now open a project -> Effects / Filters and see if the list loads."
