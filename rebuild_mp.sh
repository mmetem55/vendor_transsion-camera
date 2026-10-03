#!/usr/bin/env bash

set -euo pipefail

TC="$(pwd)/TranssionCamera"
: "${ANDROID_HOME:?set ANDROID_HOME}"
A="$ANDROID_HOME/platforms/android-33/android.jar"
BAKSMALI="$(pwd)/tools/baksmali.jar"
SMALI="$(pwd)/tools/smali-3.0.10-fat-release.jar"
D2J="$(pwd)/tools/dex-tools-v2.4/d2j-dex2jar.sh"
STUB_DIR="${STUB_DIR:-.stubs}"
FORCE_STUBS="${FORCE_STUBS:-0}"

java -version 2>&1 | head -1 | grep -q '"21' || { echo "Java 21 not found"; exit 1; }
command -v javac >/dev/null || { echo "javac not found"; exit 1; }
[ -f "$BAKSMALI" ] || { echo "baksmali not found: $BAKSMALI"; exit 1; }
[ -f "$SMALI" ] || { echo "smali not found: $SMALI"; exit 1; }
[ -x "$D2J" ] || { echo "d2j not found: $D2J"; exit 1; }
PYTHON_BIN="$(command -v python3 || command -v python || true)"
[ -n "$PYTHON_BIN" ] || { echo "python3 not found"; exit 1; }

patch_classfile_version() {
  local jar="$1"
  "$PYTHON_BIN" - "$jar" <<'PY'
import sys, zipfile, struct, os
jar = sys.argv[1]
tmp = jar + ".tmp"
changed = 0
with zipfile.ZipFile(jar, 'r') as zin, zipfile.ZipFile(tmp, 'w', zipfile.ZIP_DEFLATED) as zout:
    for item in zin.infolist():
        data = zin.read(item.filename)
        if item.filename.endswith('.class') and len(data) >= 8 and data[0:4] == b'\xca\xfe\xba\xbe':
            major = struct.unpack('>H', data[6:8])[0]
            if major < 52:
                data = data[:6] + struct.pack('>H', 52) + data[8:]
                changed += 1
        zout.writestr(item, data)
os.replace(tmp, jar)
if changed:
    print(f"     ({changed} class file version has been upgraded to 52: {jar})")
PY
}

mkdir -p "$STUB_DIR"
STUBCP=""
for d in "$TC"/smali_classes*; do
  n=$(basename "$d")
  jar="$STUB_DIR/$n.jar"
  if [ "$FORCE_STUBS" = "1" ] || [ ! -f "$jar" ]; then
    echo "  -> $n compiling (smali assemble + dex2jar)"
    java -jar "$SMALI" a -o "$STUB_DIR/$n.dex" "$d"
    "$D2J" -f "$STUB_DIR/$n.dex" -o "$jar" >/dev/null
  else
    echo "  -> $n (to delete from cache and try again FORCE_STUBS=1)"
  fi

  patch_classfile_version "$jar"
  STUBCP="$STUBCP:$jar"
done
STUBCP="${STUBCP#:}"

rm -rf mp_classes mp_out mp_smali
mkdir -p mp_classes mp_out mp_smali

echo "== 1) javac"
javac --release 8 -Xlint:-options -cp "$A:$STUBCP" -d mp_classes $(find src -name '*.java')

echo "== 2) d8 + baksmali"
d8 --lib "$A" --min-api 26 --output mp_out/ $(find mp_classes -name '*.class')
java -jar "$BAKSMALI" d mp_out/classes.dex -o mp_smali/

rm -rf "$TC/smali_classes8/com/transsion/motionphoto"
mkdir -p "$TC/smali_classes8/com/transsion"
cp -r mp_smali/com/transsion/motionphoto "$TC/smali_classes8/com/transsion/"
find "$TC/smali_classes8/com/transsion/motionphoto" -maxdepth 1

grep -rc "TransMotionPhotoBridge" \
  "$TC/smali_classes2/com/transsion/camera/adapter/CameraProxy2Impl\$7.smali" \
  "$TC/smali_classes2/com/transsion/camera/adapter/CameraProxy2Impl\$CapturePictureCallback.smali" \
  "$TC/smali_classes2/com/transsion/camera/app/common/storage/InternalStorageOperator\$PhotoSaveRequest.smali"

echo "Patch succesfully"
