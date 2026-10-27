#!/bin/sh
# Reuse an existing Blutter dump as the flutterdec Blutter bridge output.
# flutterdec invokes this as: bridge INPUT_APK OUTPUT_DIR.
set -eu

if [ "$#" -lt 2 ]; then
  echo "usage: $0 INPUT_APK OUTPUT_DIR" >&2
  exit 2
fi

: "${BLUTTER_DUMP:?set BLUTTER_DUMP to the directory containing asm/ and pp.txt}"

out="$2"
case "$out" in
  ""|"/")
    echo "refusing to use an empty or root output directory: $out" >&2
    exit 2
    ;;
esac
if [ ! -d "$BLUTTER_DUMP/asm" ] || [ ! -f "$BLUTTER_DUMP/pp.txt" ]; then
  echo "BLUTTER_DUMP does not contain asm/ and pp.txt: $BLUTTER_DUMP" >&2
  exit 1
fi

mkdir -p "$out"
rm -rf "$out/asm"
cp -a "$BLUTTER_DUMP/asm" "$out/asm"
cp "$BLUTTER_DUMP/pp.txt" "$out/pp.txt"
