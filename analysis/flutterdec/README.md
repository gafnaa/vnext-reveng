# Flutterdec analysis pipeline

This directory documents the secondary static pipeline used for the
`simaster_ugm` Dart AOT package. It is not a replacement for the Blutter/Ghidra
evidence in [`../../reports/GHIDRA-APP-DECOMPILE.md`](../../reports/GHIDRA-APP-DECOMPILE.md).

The recorded run is sanitized in
[`../../reports/FLUTTERDEC-APP-DECOMPILE.md`](../../reports/FLUTTERDEC-APP-DECOMPILE.md).
Selected verbatim pseudocode is under
[`../../recovered/flutterdec/`](../../recovered/flutterdec/).

## Pinned inputs

| Item | Value |
|---|---|
| Tool | `caverav/flutterdec` `ccf7dfa` (`0.1.0-alpha.4`) |
| Target APK | `config.arm64_v8a.apk` (ARM64 native split) |
| `libapp.so` SHA-256 | `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290` |
| Snapshot hash | `ace654289f5abc240509fc941453ebc5` |
| Registry Dart alias | `3.12.1` (provenance: r2flutter offsets; not an independent SDK proof) |
| Backend | Blutter bridge, reusing the existing Blutter dump |
| Scope | `--function-scope app --app-package simaster_ugm` |

## Why a local registry patch is needed

The upstream compatibility record for this snapshot did not list six layout
features that the local adapter observes:

`dedup_instructions`, `no-asan`, `no-dwarf_stack_traces_mode`, `no-msan`,
`no-shared_data`, `no-tsan`.

Without those features, flutterdec selects no exact record and falls back to
core recovery, which emits unnamed `fn_0x...` functions without package
attribution. The patch is applied only to a local copy of `registry.json`; it
changes `features` and the canonical `feature_fingerprint` for this snapshot.
It does not change the upstream repository or the adapter bytes.

`prepare_registry.py` performs that edit idempotently. The canonical fingerprint
is SHA-256 over the sorted, lowercased, newline-joined feature names.

## Setup

The adapter is a Python program and requires Python 3.9 or newer. The default
`python3` on the analysis host was 3.6, so the recorded run put a 3.9 interpreter
first on `PATH`:

```sh
python3.9 -m venv /tmp/flutterdec-py39   # use the host's Python 3.9 binary
export PATH=/tmp/flutterdec-py39/bin:$PATH
python3 --version                       # must be >= 3.9
```

Build the pinned source:

```sh
git clone https://github.com/caverav/flutterdec.git "$FLUTTERDEC_SRC"
git -C "$FLUTTERDEC_SRC" checkout ccf7dfa
cargo build --release --manifest-path "$FLUTTERDEC_SRC/Cargo.toml"
export FLUTTERDEC_BIN="$FLUTTERDEC_SRC/target/release/flutterdec"
```

Prepare a patched read-only data directory and an adapter store:

```sh
mkdir -p "$PATCHED_DATA" "$STORE"
cp -a "$FLUTTERDEC_SRC/adapters" "$FLUTTERDEC_SRC/data" "$PATCHED_DATA/"
python3 analysis/flutterdec/prepare_registry.py \
  "$PATCHED_DATA/adapters/registry.json" \
  ace654289f5abc240509fc941453ebc5 \
  dedup_instructions no-asan no-dwarf_stack_traces_mode \
  no-msan no-shared_data no-tsan

export FLUTTERDEC_DATA_DIR="$PATCHED_DATA"
export FLUTTERDEC_ADAPTER_STORE="$STORE"
"$FLUTTERDEC_BIN" adapter install --dart-hash ace654289f5abc240509fc941453ebc5
```

## Reuse the Blutter dump

The bridge does not rerun Blutter. It copies the existing `asm/` tree and
`pp.txt` into the directory flutterdec gives it. The adapter host only forwards
an allowlisted environment, so `run_app.sh` builds a small wrapper that embeds
the dump path; a plain `BLUTTER_DUMP` export would not reach the bridge.

```sh
export BLUTTER_DUMP=/path/to/blutter-dump   # contains asm/ and pp.txt
export INPUT_APK=/path/to/config.arm64_v8a.apk
export OUT_DIR=/path/to/flutterdec-output
analysis/flutterdec/run_app.sh --emit-asm
```

`run_app.sh` passes:

- `--adapter-backend blutter`
- `--function-scope app --app-package simaster_ugm`
- `--analysis-profile light`
- `--require-snapshot-hash-match`
- `--max-placeholder-ifs "$MAX_PLACEHOLDER_IFS"` (default `12`)

The canonical run took about 73 seconds and produced 2,628 pseudocode files and
2,628 ASM files. The quality gate passed with 12 placeholder `if`s, 0 unresolved
control-flow edges, 8.28% indirect calls, and a 1.0 disassembly ratio.

## Add synthetic owners for top-level members

Blutter writes members that have no Dart class as a block headed by
`class :: {`. flutterdec attributes functions through their owning class, so
those members are not attached to `package:simaster_ugm` and disappear from an
app-scoped run. The canonical run therefore emitted 2,628 of 2,796 Blutter app
headers.

`augment_top_level.py` copies the dump and rewrites each `class :: {` header to
a deterministic, path-derived name such as
`__TopLevel_simaster_ugm_theme_theme__`. It does not modify `pp.txt` or the
upstream dump. The synthetic owner is an attribution workaround, not a recovered
Dart class.

```sh
python3 analysis/flutterdec/augment_top_level.py \
  /path/to/blutter-dump /path/to/blutter-augmented \
  --package simaster_ugm \
  --manifest /path/to/augmentation.json

export BLUTTER_DUMP=/path/to/blutter-augmented
export OUT_DIR=/path/to/flutterdec-augmented
export MAX_PLACEHOLDER_IFS=15
analysis/flutterdec/run_app.sh --emit-asm
```

The augmented run emits 2,796/2,796 app headers: the 2,628 canonical records
with unchanged IDs and names, plus 168 top-level functions. The gate passes at 15
placeholder `if`s, 0 unresolved control-flow edges, 8.93% indirect calls, and a
1.0 disassembly ratio. Raising the limit from 12 to 15 is required by the three
additional placeholders in the new functions, not by a change in the canonical
records.

## Output and limits

The full output stays outside Git. It is pseudo-Dart, not original Dart source:

- function names are heuristic (2,796/2,796 in the augmented run);
- `poolOff[N]` maps empirically to `[pp+0xN]` on this snapshot, but the mapping
  is inferred, not documented by flutterdec; one reference in `scanEntrant`
  (`0x83d00`) does not resolve, so the crosswalk is not complete;
- the augmented run contains 90 omitted-path markers and 1,943 unlifted
  instructions;
- the run emits 2,796 records against 2,796 Blutter app headers after synthetic
  top-level owners; the 168-function difference from the canonical run is
  reconciled and documented in the report.

Synthetic `__TopLevel_*` names identify a source file, not a Dart class. Do not
use them as evidence of inheritance, owner, or original source structure.

Use flutterdec for triage, call-name recovery, and fast package-level summaries.
Use Blutter addresses and Ghidra pseudocode for address-level evidence and final
control-flow checks. Do not run this pipeline against another binary without
rechecking the snapshot hash, registry record, and artifact provenance.
