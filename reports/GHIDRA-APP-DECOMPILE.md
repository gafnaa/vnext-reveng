# Ghidra app-level AOT decompile — `simaster_ugm`

- **Status:** analisis statis selesai untuk paket aplikasi; **belum 100% untuk seluruh `libapp.so`**.
- **Target:** `libapp.so` ARM64, Simaster Student vNEXT 1.11.1.
- **SHA-256:** `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290`.
- **Ruang lingkup:** 2.796 function header Blutter di `dart-recovered/asm/simaster_ugm/`.
- **Sifat bukti:** pseudocode Ghidra dari byte binary; bukan source Dart asli dan bukan observasi runtime.
- **Tanggal run:** 2026-10-27.

## 1. Hasil

| Ukuran | Hasil |
|---|---:|
| Function header Blutter paket aplikasi | 2.796 |
| Function Ghidra yang sudah ada sebelum seed aplikasi | 33 |
| Function baru yang di-seed dan didecompile | 2.762 |
| Perbaikan batas satu closure | 1 |
| Function start aplikasi yang sekarang terwakili | **2.796 / 2.796** |
| Pseudocode baru yang bersih | 2.763 |
| Pseudocode baru dengan caveat control-flow | 0 |
| Pseudocode baru yang gagal | 0 |
| Function Manager setelah seed aplikasi | 4.815 |
| Function body Ghidra di `.text` | 2.288.353 byte (17,90%) |
| Ukuran `.text` | 12.782.208 byte |

Seluruh 2.796 function start aplikasi sekarang memiliki function Ghidra. Sebanyak 33 sudah ada pada run baseline lima seed; 2.762 ditambahkan pada batch aplikasi; satu closure batas didaftarkan ulang setelah koreksi overlap. Tidak ada kegagalan decompiler pada batch aplikasi.

## 2. Cakupan seluruh `libapp.so`

Batch aplikasi **tidak** berarti seluruh binary sudah selesai.

| Cakupan | Terwakili | Total | Persentase |
|---|---:|---:|---:|
| Function header Blutter, seluruh paket | 3.862 | 29.989 | 12,88% |
| Paket aplikasi `simaster_ugm` | 2.796 | 2.796 | 100% |
| Paket non-aplikasi (Flutter/SDK/paket pihak ketiga) | 1.066 | 27.193 | 3,92% |
| Function Ghidra tanpa padanan header Blutter | 953 | — | — |

Angka 2.051/2.051 pada laporan batch sebelumnya hanya mengukur function yang **sudah ditemukan** di Function Manager baseline. Angka itu bukan cakupan seluruh AOT. Perbandingan ini memakai 29.989 alamat unik dari header `// ** addr` Blutter.

## 3. Batas dan anomali yang tersisa

- **281 body-size mismatch** pada function aplikasi. Ukuran body Ghidra sering lebih kecil dari `size` Blutter karena decompiler berhenti pada `ret`, memecah range, atau tidak memasukkan padding. Ini bukan kegagalan pseudocode, tetapi batas ukuran tidak boleh dianggap identik dengan source.
- **Satu overlap batas** pada `0xd0bd2c`: closure Blutter berukuran `0x3c`, tetapi byte setelah `ret` di `0xd0bd4c` sudah menjadi awal `changeTabIndex` di `0xd0bd50`. Seed koreksi memakai `0x24` byte agar dua function tidak digabung.
- **50 caveat indirect jump table** dari baseline masih terbuka; batch aplikasi tidak menambah caveat baru.
- **`_kDartVmSnapshotInstructions`** selebar 92.768 byte belum dipetakan menjadi function. Range ini adalah gap eksplisit, bukan area yang sudah terbukti tidak berisi kode.
- **953 function Ghidra tanpa padanan Blutter** dapat berasal dari alur yang ditelusuri Ghidra, stub, atau function boundary yang berbeda; belum ditriase satu per satu.
- **Object model Dart** tidak pulih utuh: variabel `undefined8`, `unaff_x*`, pointer object pool, dan dispatch tidak sama dengan source Dart.

## 4. Hubungan dengan temuan keamanan

Seed aplikasi menutup function start yang sebelumnya hanya tersedia sebagai assembly Blutter, termasuk jalur `AuthNetworkImpl`, `AttedenceController`, `AttendanceNetworkImpl`, `LandingController`, `SessionMiddleware`, dan `BaseNetworking`. Ini memperkuat keterlacakan pseudocode untuk F-05/F-06, tetapi tidak mengubah status temuan:

- belum ada request, login, scan, atau respons server yang diamati;
- pseudocode tidak membuktikan perilaku runtime;
- klaim otorisasi server tetap harus diuji di staging berizin.

Lihat [`API-AUTH-DEEP-DIVE.md`](API-AUTH-DEEP-DIVE.md) dan [`SECURITY-FINDINGS.md`](SECURITY-FINDINGS.md).

## 5. Reproduksi

Generator TSV dan script seed disimpan di repo:

```sh
# 1. Ekstrak function header Blutter menjadi TSV.
python3 analysis/ghidra/extract_blutter_functions.py \
  dart-recovered/asm/simaster_ugm \
  /tmp/app-functions.tsv

# 2. Seed function yang belum ada dan decompile.
JAVA_HOME=/smster/tools/rea-tools/jdk-21.0.13 \
JAVA_TOOL_OPTIONS='-Duser.home=/smster/work/ghidra/home -Duser.name=smster -Djava.io.tmpdir=/smster/work/ghidra/tmp' \
XDG_CONFIG_HOME=/smster/work/ghidra/home/.config \
XDG_CACHE_HOME=/smster/work/ghidra/cache \
TMPDIR=/smster/work/ghidra/tmp \
/smster/tools/bin/analyzeHeadless /smster/work/ghidra/projects-app-2026-10-27 SimasterAOT \
  -process libapp.so \
  -noanalysis \
  -scriptPath /smster/repo/analysis/ghidra \
  -postScript SeedAndDecompileMissing.java \
  /tmp/app-functions.tsv /smster/work/ghidra/decompiled-app-2026-10-27 5

# 3. Ekspor inventaris function untuk audit cakupan.
/smster/tools/bin/analyzeHeadless /smster/work/ghidra/projects-app-2026-10-27 SimasterAOT \
  -process libapp.so -noanalysis \
  -scriptPath /smster/repo/analysis/ghidra \
  -postScript ExportFunctionInventory.java \
  /smster/work/ghidra/function-inventory-app.tsv
```

Output pseudocode dan project Ghidra tetap berada di mesin ini, bukan di Git. Script hanya menerima input yang sudah diverifikasi hash-nya; jangan menjalankan batch ini pada binary versi lain tanpa memperbarui bukti.

## 6. Langkah berikutnya

1. Seed dan klasifikasikan 27.193 function non-aplikasi, atau dokumentasikan batas bahwa fokus security hanya paket aplikasi.
2. Triase 953 function Ghidra-only dan 281 body-size mismatch.
3. Petakan `_kDartVmSnapshotInstructions` dan 50 indirect jump table.
4. Bandingkan seluruh code range `.text` dengan daftar function; target akhir adalah status terminal per range, bukan hanya per function start.
5. Pertahankan pemisahan tegas antara pseudocode, assembly Blutter, dan source Dart asli.
