#!/bin/sh
# Reproduce the app-package run recorded in reports/FLUTTERDEC-APP-DECOMPILE.md.
set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

: "${FLUTTERDEC_BIN:?set FLUTTERDEC_BIN to the flutterdec release binary}"
: "${FLUTTERDEC_DATA_DIR:?set FLUTTERDEC_DATA_DIR to the patched data directory}"
: "${INPUT_APK:?set INPUT_APK to config.arm64_v8a.apk}"
: "${OUT_DIR:?set OUT_DIR to the output directory}"

python3 -c 'import sys; raise SystemExit(0 if sys.version_info >= (3, 9) else 1)' || {
  echo "flutterdec's Python adapter requires python3 >= 3.9 on PATH" >&2
  exit 1
}

if [ -z "${FLUTTERDEC_BLUTTER_CMD:-}" ]; then
  : "${BLUTTER_DUMP:?set BLUTTER_DUMP or FLUTTERDEC_BLUTTER_CMD}"

  # The adapter host only forwards an allowlisted environment, so a plain
  # BLUTTER_DUMP export would not reach the bridge. Embed the path in a small
  # temporary wrapper instead.
  bridge=$(mktemp "${TMPDIR:-/tmp}/flutterdec-bridge.XXXXXX")
  trap 'rm -f "$bridge"' EXIT HUP INT TERM
  dump_escaped=$(printf '%s' "$BLUTTER_DUMP" | sed "s/'/'\\\\''/g")
  bridge_path=$(printf '%s' "$script_dir/blutter_bridge.sh" | sed "s/'/'\\\\''/g")
  {
    echo '#!/bin/sh'
    printf "BLUTTER_DUMP='%s'\n" "$dump_escaped"
    echo 'export BLUTTER_DUMP'
    printf "exec '%s' \"\$@\"\n" "$bridge_path"
  } >"$bridge"
  chmod 700 "$bridge"
  FLUTTERDEC_BLUTTER_CMD="$bridge"
fi
export FLUTTERDEC_BLUTTER_CMD

mkdir -p "$OUT_DIR"

# This target produces 12 placeholder ifs; keep the gate at the measured count.
"$FLUTTERDEC_BIN" decompile "$INPUT_APK" \
  --out "$OUT_DIR" \
  --adapter-backend blutter \
  --function-scope app \
  --app-package simaster_ugm \
  --analysis-profile light \
  --require-snapshot-hash-match \
  --max-placeholder-ifs 12 \
  "$@"
