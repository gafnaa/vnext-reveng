# Ghidra AOT seeding dan batch decompile

`SeedBlutterFunctions.java` membuka batas fungsi Dart AOT yang diambil dari label Blutter, menginstruksikan Ghidra mendisassemble range yang dibatasi, memberi label fungsi, lalu menyimpan pseudocode hasil decompiler.

Gunakan target `libapp.so` dengan hash yang tercantum di `reports/GHIDRA-ANALYSIS.md`. Pada image ini, import ELF ke proyek headless terlebih dahulu lalu proses proyek sekali lagi dengan daftar seed yang sama agar analisis Ghidra menelusuri alur instruksi dari entry point tersebut:

```sh
JAVA_HOME=/smster/tools/rea-tools/jdk-21.0.13 \
JAVA_TOOL_OPTIONS='-Duser.home=/smster/work/ghidra/home -Duser.name=smster -Djava.io.tmpdir=/smster/work/ghidra/tmp' \
XDG_CONFIG_HOME=/smster/work/ghidra/home/.config \
XDG_CACHE_HOME=/smster/work/ghidra/cache \
TMPDIR=/smster/work/ghidra/tmp \
/smster/tools/bin/analyzeHeadless /smster/work/ghidra/projects SimasterAOT \
  -import /smster/artifacts/native/libapp.so \
  -scriptPath /smster/repo/analysis/ghidra \
  -postScript SeedBlutterFunctions.java /smster/repo/reports/GHIDRA-AOT-SELECTED.md \
  '0xfda15c,0x430,AuthNetworkImpl_signIn' \
  '0x913d58,0x8c4,OAuthController_refreshOAuth' \
  '0x130f930,0x914,SessionMiddleware_performCheck' \
  '0xd4e500,0x638,AttendanceNetworkImpl_getConfirmationQRStudent' \
  '0x8ec50c,0x4b4,BaseNetworking_post'
```

Untuk analisis lanjutan pada proyek tersimpan, ganti `-import /smster/artifacts/native/libapp.so` dengan `-process libapp.so`. Direktori project, konfigurasi, cache, dan temporary Ghidra pada perintah ini berada di `/smster`.


## Decompile seluruh function entry yang ditemukan

Setelah project mempunyai seed di atas, jalankan batch berikut. Script mencoba semua fungsi internal yang tercatat di Function Manager, menulis satu pseudocode `.c` per fungsi, serta `function-index.tsv` dan `summary.txt`. Hasil lengkap berada di `/smster/work/ghidra`, bukan di checkout Git. Cocokkan hash input sebelum menjalankan.

```sh
JAVA_HOME=/smster/tools/rea-tools/jdk-21.0.13 \
JAVA_TOOL_OPTIONS='-Duser.home=/smster/work/ghidra/home -Duser.name=smster -Djava.io.tmpdir=/smster/work/ghidra/tmp' \
XDG_CONFIG_HOME=/smster/work/ghidra/home/.config \
XDG_CACHE_HOME=/smster/work/ghidra/cache \
TMPDIR=/smster/work/ghidra/tmp \
/smster/tools/bin/analyzeHeadless /smster/work/ghidra/projects SimasterAOT \
  -process libapp.so \
  -scriptPath /smster/repo/analysis/ghidra \
  -postScript DecompileAllFunctions.java \
  /smster/work/ghidra/decompiled-all/SimasterAOT-YYYY-MM-DD 15
```

Status `partial-control-flow` tetap menghasilkan pseudocode, tetapi menunjukkan jump table yang belum pulih. Symbol ELF `_kDartIsolateSnapshotInstructions` yang hanya muncul sebagai stub 1 byte diperlakukan sebagai kandidat non-code. Hasil run 2026-10-27 dan keterbatasan range AOT ada di [`reports/GHIDRA-FULL-DECOMPILE.md`](../../reports/GHIDRA-FULL-DECOMPILE.md).
