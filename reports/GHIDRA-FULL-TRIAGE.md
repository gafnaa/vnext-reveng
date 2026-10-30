# Triase full-binary Ghidra — `libapp.so`

- **Status:** triase statis selesai untuk klasifikasi function, batas ukuran, dan cakupan byte; **bukan** klaim seluruh AOT telah didecompile.
- **Target:** `libapp.so` ARM64, Simaster Student vNEXT 1.11.1 (code 65).
- **SHA-256:** `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290`.
- **Snapshot hash:** `ace654289f5abc240509fc941453ebc5`.
- **Sifat bukti:** pembacaan byte binary, inventaris function Ghidra, dan header Blutter; bukan source Dart asli dan bukan observasi runtime.
- **Tanggal triase:** 2026-10-30.

Laporan ini menutup tiga pertanyaan yang tersisa dari [`GHIDRA-APP-DECOMPILE.md`](GHIDRA-APP-DECOMPILE.md): apa isi 953 function Ghidra tanpa padanan Blutter, mengapa 281 body-size function aplikasi berbeda, dan berapa byte executable yang benar-benar tercakup.

## 1. Bahan dan normalisasi alamat

| Bahan | Isi | Peran |
|---|---:|---|
| `function-inventory-app.tsv` | 4.815 function Ghidra | Daftar function hasil analisis |
| Header Blutter penuh | 29.989 alamat unik | Denominator function AOT |
| `blutter-app-functions.tsv` | 2.796 header paket `simaster_ugm` | Pembanding batas ukuran aplikasi |
| `i.json` (r2flutter) | 42.809 entri instruction table | Nama independen untuk klasifikasi |
| `function-index.tsv` | 2.053 baris dengan status | Sumber 50 `partial-control-flow` |
| `libapp.so` | 20.972.432 byte | Sumber byte untuk dekode trampolin |

Ghidra memakai image base `0x100000`, sehingga `alamat Ghidra − 0x100000 = alamat file = alamat Blutter`. Seluruh angka di laporan ini sudah dinormalisasi ke koordinat file. Tanpa normalisasi, pencocokan start hanya menghasilkan 57 dari 29.989 dan kesimpulannya menyesatkan.

Header Blutter dibaca dengan penelusuran direktori rekursif termasuk direktori bertitik. Cara ini menemukan 29.989 alamat; pemindaian yang melewati direktori tersembunyi hanya menemukan 29.987 dan kehilangan `0x13e3f34` serta `0x13e5338` dari `asm/.dart_tool`.

## 2. Klasifikasi 953 function Ghidra-only

Dari 4.815 function Ghidra, 3.862 (12,88%) berbagi alamat start dengan header Blutter. Sisa 953 tidak punya header Blutter pada alamat yang sama.

| Kelas | Jumlah | Dasar |
|---|---:|---|
| Seluruhnya di dalam celah antar-function Blutter | 926 | start dan akhir body berada di antara dua header |
| Dimulai tepat di akhir body Blutter sebelumnya | 258 | subset dari 926 |
| Di dalam body Blutter (overlap batas) | 12 | start berada di antara `header` dan `header + size` |
| Sebelum header Blutter pertama | 5 | `0x7d6a80`–`0x7d7adc` |
| Setelah header Blutter terakhir | 10 | `0x13ee15c`–`0x13ef428` |

Sepuluh function setelah header terakhir semuanya bernama `stub.typetest_*` menurut r2flutter. Lima function sebelum header pertama mencakup `_kDartIsolateSnapshotInstructions`, tiga method `_GrowableList`, dan satu stub alokasi `AllocateConcurrentModificationErrorStub`; kelimanya berada di region isolate tetapi tidak diberi header oleh Blutter.

Menurut nama r2flutter, 953 function ini terbagi menjadi 557 `method.*`, 386 `stub.*`, dan 10 tanpa entri instruction table. Sebanyak 943 (98,95%) memiliki entri r2flutter; sepuluh sisanya adalah `0x7d6a80` dan sembilan function 32 byte berurutan `FUN_014ddf94`–`FUN_014de074` ditambah `FUN_014de154` yang mendisassembly `str x30, [x15, -8]!` / `str x1, [x15, -8]!` / `mov` / `ldr x30, [x26, 0x200]`.

Ukuran body 953 function ini total 208.777 byte dengan median 96 byte: 350 body ≤16 byte, 81 body 17–64 byte, 291 body 65–256 byte, dan 231 body >256 byte.

Untuk 557 `method.*`, prefiks library yang dapat dipetakan dari nama r2flutter adalah 267 `flutter`, 146 tanpa kunci library, 127 kunci tak terpetakan, 13 `vector_graphics_codec`, dan 4 `pdf`. Bagian terbesar yang dapat diatribusikan adalah kode framework Flutter; tidak ada satu pun yang berasal dari modul fitur Simaster.

## 3. Trampolin 12 byte dan targetnya

Sebanyak 345 function Ghidra-only berbody tepat 12 byte. Sebanyak 344 di antaranya mendekode pola `movz` / `movk` / `b` yang identik:

```text
movz x2, #imm16
movk x2, #imm16, lsl 16
b    target
```

Nilai 32-bit yang dibentuk berkisar `0x4829c`–`0x20d421c`. Nilai itu bukan alamat cabang dan bukan penunjuk ke `.text`; ia dibentuk di `x2` sebelum lompat, sehingga paling wajar dibaca sebagai argumen bagi rutin tujuan. Instruksi `b` hanya menuju dua tujuan: `0x13de7a0` (292 kali) dan `0x13de738` (52 kali).

Kedua tujuan itu **bukan** function Ghidra dan **bukan** header Blutter. Byte di `0x13de7a0` adalah `ldr x3, [x26, 0x238]` / `br x3`, yaitu cabang tidak langsung melalui ObjectPool. Byte di `0x13de738` adalah `ldp x29, x30, [x15], 0x10` / `ret`, yaitu epilog function.

Identitas stub memperkuat pembacaan ini: seluruh 344 trampolin diberi nama `stub.Allocate*` oleh r2flutter, misalnya `stub.AllocateConcurrentModificationErrorStub`, `stub.AllocateRangeErrorStub`, dan `stub.AllocateBoxConstraintsStub`. Jadi pola yang konsisten adalah stub alokasi objek yang menyiapkan argumen di `x2` lalu melompat ke rutin bersama. Penelusuran data-flow penuh atas nilai `x2` belum dilakukan, sehingga semantik pastinya tetap kandidat.

Konsekuensinya, 344 function ini tidak menambah permukaan analisis security: body-nya hanya 12 byte, tujuannya bukan function terdaftar, dan semuanya berada di luar paket aplikasi. Mereka artefak lowering compiler dan tidak layak menjadi target decompile manual.

## 4. 281 body-size mismatch paket aplikasi

Dari 2.796 function aplikasi, 2.515 memiliki body Ghidra yang sama persis dengan `size` Blutter dan 281 berbeda. Seluruh 281 memiliki body Ghidra **lebih kecil**; tidak ada satu pun yang lebih besar, dan tidak ada satu pun yang melintasi start header Blutter berikutnya.

| Kelompok | Jumlah | Selisih byte | Byte tak tercakup |
|---|---:|---:|---:|
| Multi-range (`body_ranges > 1`) | 191 | 39.044 | 39.044 |
| Single-range, selisih tepat 24 | 48 | 1.152 | 24 |
| Single-range, body Ghidra tepat 24 | 42 | 17.692 | 17.692 |
| **Total** | **281** | **57.888** | **56.760** |

Kolom terakhir berbeda dari selisih byte karena kedua kelompok single-range saling bertaut: 42 dari 48 kasus delta-24 berakhir tepat di function body-24, sehingga 1.152 byte delta-24 itu tetap tercakup oleh function berikutnya. Hanya satu kasus delta-24 yang menyisakan byte tak tercakup.

### 4.1 Kelompok 48 selisih 24 byte

Pada 47 dari 48 kasus, akhir body Ghidra (`start + body`) tepat berimpit dengan start function Ghidra berikutnya. Jadi 24 byte terakhir rentang Blutter bukan hilang: ia sudah menjadi function tersendiri di Ghidra, dan `size` Blutter yang menggabungkannya.

Cross-check dengan r2flutter mengonfirmasi batas yang sama. Himpunan 48 header aplikasi yang **bukan** entri instruction table tetapi memiliki entri r2flutter tepat `0x18` byte **sebelumnya** **identik persis** dengan himpunan 48 mismatch delta-24 ini — 48 alamat yang sama, tanpa selisih. Tiga alat melihat satu blok yang sama dengan pembagian berbeda:

- r2flutter memberi entri thunk `dyn:` pada `start − 0x18` (47 dari 48) dan entri terpisah pada method aslinya di `start + body`;
- Blutter memberi satu header pada `start` dengan `size` yang mencakup thunk dan awal method;
- Ghidra memecahnya menjadi function thunk sepanjang `body` byte dan function method sesudahnya.

Dari 47 function lanjutan itu, 42 berbody 24 byte (dibahas di §4.2) dan 5 berbody lebih besar (80, 76, 588, 1.160, dan 2.080 byte). Karena byte delta-24 tercakup oleh function lanjutan, kelompok ini hampir tidak menyumbang byte tak tercakup: hanya 24 byte dari kasus tunggal di bawah.

Satu kasus tidak mengikuti pola: `0x1020e00` (body Blutter 72, Ghidra 48). Akhir body Ghidra di `0x1020e30` bukan start function Ghidra, melainkan entri r2flutter `stub.typetest_29839`. Karena targetnya stub dan bukan function, 24 byte itu benar-benar tidak tercakup.

### 4.2 Kelompok 42 body Ghidra tepat 24 byte

Keempat puluh dua function ini adalah **target** dari 42 kasus delta-24 di atas: wrapper-nya sudah menjadi function 48 byte, dan method aslinya hanya terdisassembly prolognya. Body Ghidra tepat 24 byte meskipun `size` Blutter berkisar 124–1.172 byte. Isi 24 byte itu adalah prolog standar AOT:

```text
stp  x29, x30, [x15, -0x10]!
mov  x29, x15
sub  x15, x15, 0x18
mov  x0, x1
stur x1, [x29, -8]
ldr  x16, [x26, 0x48]
```

Tiga puluh tujuh di antaranya memiliki 24 byte yang identik byte-per-byte. Setelah prolog, alur berlanjut ke pemeriksaan stack overflow dan pemanggilan rutin alokasi, tetapi Ghidra berhenti.

Verifikasi batas menunjukkan pola yang konsisten: `start + 24` bukan function start, bukan header Blutter, dan tidak berada di dalam body function lain mana pun. Pada 28 kasus, `start + size Blutter` justru tepat berimpit dengan start function Ghidra berikutnya, sedangkan `start + size − 4` tidak pernah berada di dalam body function lain. Jadi byte antara offset 24 dan akhir body Blutter adalah **kode yang tidak dimiliki function mana pun**, bukan padding dan bukan function terpisah.

Total byte yang tidak tercakup dari kelompok ini adalah 17.692 byte. Function yang terkena adalah model `toJson`/`fromJson` dan beberapa helper model, misalnya `UserModelImplToJson`, `Map_String_dynamic_toJson`, dan `PresenceConfirmationModel`. Inilah kelompok yang paling merugikan cakupan: 42 function aplikasi kehilangan hampir seluruh body-nya, dan byte itu adalah kode model data yang justru relevan untuk pemetaan payload.

### 4.3 Rekonsiliasi byte

Ketiga kelompok menjelaskan seluruh selisih cakupan pada rentang paket aplikasi tanpa sisa:

| Sumber byte tak tercakup | Byte |
|---|---:|
| Celah internal 191 function multi-range | 39.044 |
| Ekor 42 function body-24 | 17.692 |
| Kasus tunggal `0x1020e00` | 24 |
| **Total** | **56.760** |

Rentang gabungan header aplikasi adalah 1.508.476 byte; body Ghidra menutup 1.451.716 byte (96,24%) dan menyisakan 56.760 byte (3,76%). Angka ini konsisten dengan perhitungan independen atas hole di dalam rentang aplikasi, yang menghasilkan 234 hole dengan total byte sama.

## 5. Cakupan `.text` dan region snapshot

`.text` membentang `0x7c0000`–`0x13f0a80` (12.782.208 byte). Penggabungan seluruh body Ghidra menghasilkan 1.456 range disjoint seluas 2.288.353 byte, atau **17,90%**.

| Region | Rentang file | Byte | Tercakup | Persentase |
|---|---|---:|---:|---:|
| `_kDartVmSnapshotInstructions` | `0x7c0000`–`0x7d6a60` | 92.768 | 0 | **0,00%** |
| Isolate snapshot | `0x7d6a80`–`0x13f0a80` | 12.689.408 | 2.288.353 | 18,03% |

Region snapshot VM sama sekali tidak memiliki function Ghidra. Ini bukan temuan bahwa region tersebut tidak berisi kode: `readelf` menandainya sebagai ELF `OBJECT`, dan Ghidra tidak menelusuri entry ke sana. Statusnya tetap **belum dipetakan**, bukan terbukti kosong.

## 6. Celah antar-function Blutter

Dari 29.989 header, 5.054 pasangan berurutan menyisakan celah positif dengan total 1.820.616 byte dan median 24 byte. Sebanyak 362 pasangan justru **tumpang tindih** (350 overlap 24 byte, 12 overlap 12 byte), yang berarti `size` Blutter kadang melewati start function berikutnya.

Function Ghidra-only menutup 206.468 byte dari celah tersebut. Sekitar 13.042 entri instruction table r2flutter juga berada di dalam celah ini, dan hanya 917 di antaranya memiliki function Ghidra. Jadi celah antar-function Blutter bukan ruang kosong: ia berisi stub, trampolin, dan function yang tidak diberi header oleh Blutter.

Sebagian celah sangat besar. Tiga terbesar adalah 90.296 byte setelah `0x8f6618`, 57.872 byte setelah `0x7e1864`, dan 53.168 byte setelah `0x801acc`; masing-masing memuat 351, 238, dan 153 entri r2flutter. Celah besar inilah yang menjelaskan mengapa 26.127 header Blutter belum punya function Ghidra — dan mengapa sebagian besar dari mereka sesungguhnya sudah teridentifikasi namanya oleh r2flutter.

## 7. 50 `partial-control-flow`

Kelima puluh function dengan indirect jump table yang belum pulih semuanya berada di inventory Ghidra, tidak satu pun di paket aplikasi, dan hanya 3 yang memiliki header Blutter. Ukurannya 12–1.492 byte dengan median 44 byte.

| Alamat | Body Ghidra | Size Blutter |
|---|---:|---:|
| `0xb5a088` | 1.492 | `0x134c` |
| `0xeb0b54` | 88 | `0x12c` |
| `0xfcec78` | 148 | `0x30c` |

Karena tidak ada yang berada di paket aplikasi, caveat ini tidak memengaruhi temuan F-01–F-06. Ketiganya adalah kandidat untuk pemulihan jump table, bukan prioritas security.

## 8. Batas interpretasi

- Angka 12,88% mengukur **kecocokan alamat start**, bukan cakupan byte, semantik, atau perilaku. Cakupan byte adalah 17,90%.
- Body Ghidra yang lebih kecil bukan bukti decompiler gagal. Pada 47 kasus ia memecah batas yang Blutter gabungkan dan byte sisa tetap tercakup function berikutnya; pada 42 kasus ia berhenti setelah prolog dan menyisakan kode yang tidak dimiliki function mana pun.
- 17.692 byte ekor body-24 adalah kode yang belum didecompile. Klaim apa pun tentang isi function tersebut harus menunggu seed ulang dengan batas yang benar.
- 26.127 header Blutter tanpa function Ghidra tetap gap. Nama r2flutter yang tersedia untuk 25.545 di antaranya adalah metadata, bukan pseudocode.
- Region snapshot VM 0% tercakup. Statusnya belum dipetakan, bukan terbukti tidak berisi kode.
- Tidak ada aplikasi yang dijalankan, tidak ada instrumentasi, dan tidak ada request ke server pada triase ini.

## 9. Reproduksi

```sh
python3 analysis/ghidra/triage_full_binary.py \
  --blutter-asm /smster/work/blutter-top-level/asm \
  --inventory /smster/work/ghidra/function-inventory-app.tsv \
  --app-functions /smster/work/flutterdec-2026-10-28/blutter-app-functions.tsv \
  --r2flutter /smster/work/r2flutter-2026-10-29/i.json \
  --function-index /smster/work/ghidra/decompiled-all/SimasterAOT-2026-10-27-audited/function-index.tsv \
  --binary /smster/artifacts/native/libapp.so \
  --output /tmp/ghidra-full-triage.json
```

Script hanya membaca artefak dan menulis JSON ringkasan. Direktori project Ghidra, dump Blutter, dan output r2flutter tetap di mesin ini, bukan di Git.

## 10. Langkah berikutnya

1. Seed ulang 42 function body-24 dengan batas `size` Blutter penuh, lalu decompile 17.692 byte ekor yang sekarang tidak dimiliki function mana pun.
2. Petakan 191 function multi-range agar byte di antara range ikut terdisassembly, bukan hanya dihitung sebagai selisih.
3. Petakan `_kDartVmSnapshotInstructions` (92.768 byte, 0% tercakup) minimal sampai status per range, termasuk kemungkinan bahwa region itu memang data.
4. Triase celah terbesar (`0x8f6618`, `0x7e1864`, `0x801acc`) dengan nama r2flutter sebagai panduan seed.
5. Pulihkan jump table pada 3 function `partial-control-flow` yang memiliki header Blutter, lalu putuskan apakah 47 sisanya layak.
6. Pertahankan pemisahan tegas antara pseudocode Ghidra, assembly Blutter, pseudo-Dart flutterdec, dan source Dart asli.
