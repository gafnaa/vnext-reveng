# Ghidra batch decompile — `libapp.so`

## Ruang lingkup

Pada **2026-10-27**, Ghidra 12.1.4 headless memproses ulang project `SimasterAOT` dan menjalankan `DecompileAllFunctions.java` terhadap semua function entry yang ada di database untuk input `libapp.so` ARM64. SHA-256 input: `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290`.

Script mencoba seluruh fungsi internal dengan batas 15 detik per fungsi, menyimpan satu pseudocode `.c` per fungsi, lalu menulis `function-index.tsv` dengan alamat, nama, ukuran body, jumlah range, status, dan file hasil. Indeks dan pseudocode lengkap berada di mesin ini pada:

```text
/smster/work/ghidra/decompiled-all/SimasterAOT-2026-10-27-audited/
```

Repo hanya menyimpan script dan ringkasan. Database Ghidra serta 2.051 file pseudocode tidak masuk Git.

## Hasil

| Ukuran | Hasil |
|---|---:|
| Function entry dalam Function Manager | 2.052 |
| Kandidat code function setelah klasifikasi | 2.051 |
| Pseudocode dihasilkan | 2.051 / 2.051 |
| Tanpa marker control-flow yang ditriase script | 2.001 |
| Pseudocode dengan indirect jump table yang belum pulih | 50 |
| Gagal/timeout pada API decompiler | 0 |
| Kandidat non-code yang dikecualikan | 1 |
| Byte pseudocode UTF-8 | 6.421.320 |

Status `decompiled` berarti Ghidra menyelesaikan pemanggilan decompiler dan menulis output. Status `partial-control-flow` berarti pseudocode ada, tetapi Ghidra memberi marker bahwa indirect jump table tidak dapat dipulihkan (“too many branches”/jump diperlakukan sebagai call). Angka 2.001 hanya berarti marker tersebut tidak ditemukan oleh script; itu **bukan** penilaian manual bahwa seluruh semantik benar.

## Klasifikasi dan gap yang masih terbuka

- Entry `0x8d6a80` berlabel `_kDartIsolateSnapshotInstructions` hanya memiliki body 1 byte dan pseudocode `halt_baddata()`. `readelf` menandainya sebagai ELF `OBJECT` berukuran `0xc1a000`, bukan symbol `FUNC`; script menaruhnya sebagai `non-code-candidate` dan tidak menghitungnya sebagai code function.
- ELF juga menandai `_kDartVmSnapshotInstructions` sebagai `OBJECT` di `0x7c0000` dengan ukuran 92.768 byte. Tidak ada function entry Ghidra dalam range snapshot VM setelah image base `0x100000` diterapkan (`0x8c0000` sampai sebelum `0x8d6a60`). Rentang ini belum diklasifikasi byte-per-byte, sehingga fungsi runtime/builtin yang mungkin ada di sana tetap gap.
- Sebanyak 50 pseudocode menunjukkan indirect jump table yang tidak terpulihkan. Contoh entry: `0x8db310`, `0x8de36c`, `0x8e0eb4`, `0x8e7350`, dan `0x8e8db0`; daftar lengkap ada di `function-index.tsv` lokal.
- Analisis `Embedded Media` melaporkan data GIF tidak valid pada offset file `0x0027840e` dan `0x0032b214`. Script decompile tetap selesai; warning klasifikasi media ini belum ditriase.
- Function Manager merupakan output analisis Ghidra yang dibantu seed alamat Blutter. Ia belum membuktikan bahwa semua code range AOT, fungsi tak langsung, trampoline, atau byte executable telah ditemukan.

Dengan demikian, hasil ini menunjukkan **2.051 dari 2.051 code function candidate yang ditemukan berhasil diberi pseudocode**, dengan 50 caveat control-flow. Ini bukan 100% decompile seluruh `libapp.so`, seluruh APK/split, atau source Dart asli.

## Audit cakupan setelah batch aplikasi

Run lanjutan pada 2026-10-27 memakai 2.796 function header Blutter dari paket `simaster_ugm` sebagai denominator aplikasi. Hasilnya:

- 2.796/2.796 function start aplikasi sekarang memiliki function Ghidra; 2.763 di antaranya menghasilkan pseudocode baru yang bersih, 0 gagal, 0 caveat baru.
- Function Manager naik dari 2.052 menjadi 4.815 function.
- Dari 29.989 header function Blutter untuk seluruh `libapp.so`, 3.862 (12,88%) memiliki function Ghidra; 27.193 function non-aplikasi baru 1.066 (3,92%) yang terwakili.
- 953 function Ghidra tidak memiliki padanan header Blutter; 281 body-size aplikasi berbeda dari `size` Blutter; satu closure batas memerlukan koreksi overlap.
- Cakupan body function Ghidra di `.text` adalah 2.288.353 byte dari 12.782.208 byte (17,90%).
- Gap `_kDartVmSnapshotInstructions` dan 50 indirect jump table tetap terbuka.

Artinya, **paket aplikasi sudah tercakup pada level function start**, tetapi seluruh binary belum. Rincian, batas, dan perintah reproduksi ada di [`GHIDRA-APP-DECOMPILE.md`](GHIDRA-APP-DECOMPILE.md). Triase atas 953 function Ghidra-only, 281 body-size mismatch, dan cakupan byte ada di [`GHIDRA-FULL-TRIAGE.md`](GHIDRA-FULL-TRIAGE.md).

## Reproduksi

Gunakan project Ghidra tersimpan dengan seed Blutter yang sama. Pastikan SHA-256 input cocok dengan nilai di atas. Semua konfigurasi/cache/output tetap di `/smster`:

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

Langkah import dan seed pertama tersedia di [`analysis/ghidra/README.md`](../analysis/ghidra/README.md). Ringkasan lima alur prioritas tetap ada di [`GHIDRA-ANALYSIS.md`](GHIDRA-ANALYSIS.md) dan [`GHIDRA-AOT-SELECTED.md`](GHIDRA-AOT-SELECTED.md).

## Langkah berikutnya

1. Seed dan klasifikasikan 26.127 header non-aplikasi yang belum punya function Ghidra, atau catat secara eksplisit bahwa fokus security dibatasi ke paket `simaster_ugm`.
2. Triase 50 indirect jump table dan tentukan apakah dapat dipulihkan melalui konfigurasi ARM64/Ghidra atau metadata Blutter.
3. Petakan code/data di object `_kDartVmSnapshotInstructions` serta sisa executable segment ke status terminal.
4. Tutup 39.068 byte rentang aplikasi yang tidak dimiliki function Ghidra mana pun: 39.044 byte celah internal 191 function multi-range dan 24 byte kasus `0x1020e00`. 42 function body-24 sudah di-reseed pada 2026-10-30.
5. Pisahkan decompile hasil Ghidra dari klaim pemulihan source Dart; informasi yang dibuang compiler AOT tidak tersedia lagi.

Klasifikasi 953 function Ghidra-only, mekanisme body-size mismatch, dan rekonsiliasi cakupan byte sudah selesai dan dicatat di [`GHIDRA-FULL-TRIAGE.md`](GHIDRA-FULL-TRIAGE.md); reseed 42 function body-24 ada di [`GHIDRA-BODY24-RESEED.md`](GHIDRA-BODY24-RESEED.md).
