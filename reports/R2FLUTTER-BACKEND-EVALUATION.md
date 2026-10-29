# Evaluasi backend r2flutter — Simaster Student vNEXT

- **Status:** evaluasi selesai; `r2flutter` dipakai sebagai **pembanding independen**, bukan pengganti Blutter atau Ghidra.
- **Target:** `id.ac.ugm.student.vnext.simaster` 1.11.1 (code 65), split ARM64.
- **Input:** `config.arm64_v8a.apk`, SHA-256 `4cfee9ab21c0f3b1f7a197849af1abfc632cd6a9b0db180ea4175ca88b2513b5`; `libapp.so` SHA-256 `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290`.
- **Snapshot hash:** `ace654289f5abc240509fc941453ebc5`.
- **Tool:** `trufae/r2flutter` 0.5.1, commit `7be0c178fb6f2fe479df149cfdac31fa651b90e9`; dibangun terhadap radare2 6.2.4, commit `485e5e205b190fc297a2a95a6f982ff5d9f54039`.
- **Sifat bukti:** pembacaan metadata AOT dan pseudo-Dart dari byte binary; bukan source Dart asli dan bukan observasi runtime.
- **Tanggal run:** 2026-10-29.

## 1. Ringkasan eksekutif

`r2flutter` berhasil membaca snapshot yang sama dan menghasilkan ruang nama
function serta indeks ObjectPool yang dapat dibandingkan langsung dengan dump
Blutter. Hasil utamanya:

- 42.809 entri instruction table, seluruhnya memiliki nama (`method.` 36.952,
  `stub.` 5.857); 9.888 record class dengan 7.392 nama unik; 65.981 string
  kanonik dan 94.388 string fuzzy.
- 2.748 dari 2.796 header function aplikasi Blutter memiliki **alamat start yang
  sama persis** (98,28%). Sisanya 48 header mulai 0x18 byte setelah entri
  `r2flutter`, seluruhnya thunk `dyn:` atau getter; tidak ada header yang jatuh
  di luar rentang function `r2flutter`.
- Untuk 2.748 start yang sama, ukuran body cocok pada 2.747 function (99,96%).
  Satu function terpotong oleh batas 0x8000 pada adapter.
- Pada 1.160 header yang dapat diparse menjadi pasangan class/metode, nama metode
  cocok 100% setelah normalisasi konvensi nama; nama owner cocok 98,02%. Sisa 23
  perbedaan seluruhnya `_enumToString`, yang oleh Blutter diatribusikan ke class
  pemakai, bukan ke class enum.
- ObjectPool tervalidasi sebagai ruang indeks hardware: 67.048 dari 67.440 slot
  bersama identik byte-per-byte (99,42%), dan 67.431 (99,99%) setelah satu level
  escaping punctuation Blutter. Sembilan sisa adalah artefak escaping/truncation.
- 68 slot yang hanya muncul di `r2flutter` semuanya cocok dengan string yang
  dirender Blutter di dalam baris `UnlinkedCall:` pada indeks sebelumnya; tidak
  ada konflik indeks.

Keterbatasan yang menentukan posisi backend ini:

- `r2flutter` tidak memberikan atribusi library/package pada function atau class.
  Karena itu `--function-scope app` menghasilkan 0 function; gunakan
  `--function-scope all` dengan `--focus`.
- Semua 9.888 record class hanya memiliki `super.type_ref` tanpa `name`, sehingga
  relasi superclass tidak dapat dibaca dari output ini.
- `r2flutter` tidak menggantikan Blutter untuk owner top-level, dan tidak
  menggantikan Ghidra untuk keputusan control-flow akhir.

**Keputusan:** pertahankan `r2flutter` sebagai backend pembanding untuk nama
exact dan resolusi ObjectPool. Blutter tetap menjadi sumber kanonik app-level;
Ghidra tetap menjadi sumber keputusan control-flow.

## 2. Ruang lingkup dan non-klaim

Evaluasi ini hanya menjalankan alat statis pada salinan `libapp.so` dan APK yang
sudah tercatat. Tidak ada aplikasi yang dijalankan, tidak ada instrumentasi, dan
tidak ada request ke server. Semua nama function, string, dan pseudo-Dart adalah
artefak binary, bukan bukti perilaku runtime.

Yang **tidak** diklaim:

- bahwa `r2flutter` memulihkan seluruh 29.989 function AOT;
- bahwa nama class atau function identik dengan source Dart asli;
- bahwa pseudo-Dart dapat dipakai untuk klaim payload, token, atau keputusan
  server tanpa verifikasi Ghidra/assembly;
- bahwa hasil ini menaikkan status temuan keamanan F-01–F-06 menjadi
  tervalidasi.

## 3. Toolchain dan input

| Item | Nilai |
|---|---|
| radare2 | 6.2.4, commit `485e5e205b190fc297a2a95a6f982ff5d9f54039` |
| r2flutter | 0.5.1, commit `7be0c178fb6f2fe479df149cfdac31fa651b90e9` |
| Binary `r2flutter` | SHA-256 `4d521232867126e02b123445b4a006c759205b906054613cabd97dded766c473` |
| flutterdec | 0.1.0-alpha.4, commit `ccf7dfa`; binary SHA-256 `17b568cb4519ac1bc52ba0b98f8f2b823d242d4309062153271a91690496d94e` |
| Python adapter | 3.9.25 |
| Host | Rocky Linux 8.10, x86_64, 28 core |
| Target APK | `config.arm64_v8a.apk`, SHA-256 `4cfee9ab21c0f3b1f7a197849af1abfc632cd6a9b0db180ea4175ca88b2513b5` |
| Target `libapp.so` | SHA-256 `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290` |
| Snapshot | `ace654289f5abc240509fc941453ebc5` |

`r2flutter` dibangun dari tag 0.5.1 dengan `PREFIX` diarahkan ke instalasi
radare2 lokal agar rpath binary menunjuk ke library yang benar. Build memerlukan
`PATH` ke radare2 dan `LD_LIBRARY_PATH` saat link; setelah itu binary dapat
dijalankan tanpa `LD_LIBRARY_PATH`.

## 4. Hasil ekstraksi langsung

Perintah `-jH` dijalankan pada APK target; `-ji`, `-jc`, `-jxz`, `-jzz`, dan
`-jp` dijalankan pada `libapp.so` yang sama. Ringkasan output mentah:

| Metrik | Nilai |
|---|---:|
| Instruction-table entries | 42.809 |
| Entri dengan `kind: code` | 42.809 |
| Nama `method.*` / `stub.*` | 36.952 / 5.857 |
| Rentang alamat entry | `0x7d6b00`–`0x13f08c0` |
| Class records | 9.888 |
| Nama class unik (mentah) | 7.392 |
| Record `::` (top-level) | 2.333 |
| Metode pada record class | 37.833 |
| Class yang memiliki metode | 6.170 |
| String kanonik (`-jxz`) | 65.981 |
| String fuzzy (`-jzz`) | 94.388 |
| Slot ObjectPool yang direferensikan string | 67.508 |
| Panjang ObjectPool (`-jp`) | 109.106 slot |
| `entries_offset` / `word_size` | 16 / 8 |
| URI `package:` unik di string fuzzy | 2.543 |

Header snapshot melaporkan `dart_version: 3.12.1` dengan
`version_source: exact-hash`, sementara metadata dump Blutter mencatat 3.12.2.
Perbedaan ini belum direkonsiliasi dan **tidak** boleh dipakai sebagai bukti
versi SDK independen. Alias registry `3.12.1` tetap berstatus provenance
`r2flutter-offsets`, bukan verifikasi vendor.

Adapter flutterdec melakukan sanitasi dan pembatasan sendiri: 9.888 record class
menjadi 7.390 class bernama setelah record `::` dan nama placeholder dibuang;
2.543 URI package unik dipotong menjadi 512 library; 67.508 slot string menjadi
67.472 entry pool yang lolos filter nilai. Angka-angka adapter tersebut adalah
angka yang terlihat di `report.json` flutterdec, bukan angka mentah `r2flutter`.

## 5. Validasi alamat dan nama terhadap Blutter

### 5.1 Cakupan alamat dan ukuran body

Pembanding adalah 2.796 header function paket `simaster_ugm` dari dump Blutter
(`blutter-app-functions.tsv`), bukan seluruh 29.989 header AOT.

| Pemeriksaan | Hasil |
|---|---:|
| Header aplikasi Blutter | 2.796 |
| Alamat start sama persis dengan entry `r2flutter` | 2.748 (98,28%) |
| Header mulai 0x18 byte setelah entry `r2flutter` | 48 (1,72%) |
| Header di luar rentang function `r2flutter` | 0 |
| Ukuran body sama persis (dari 2.748 start yang sama) | 2.747 (99,96%) |
| Ukuran body berbeda | 1 |

48 header yang tidak sama persis terdiri dari 47 thunk `dyn:` dan satu getter
(`LandingController.get:changeTabIndex`). Semuanya mulai 0x18 byte setelah entry
`r2flutter` yang menaunginya. Ini adalah perbedaan konvensi batas function, bukan
function yang hilang: nama dan rentang `r2flutter` tetap mencakup alamat
tersebut. Satu-satunya selisih ukuran adalah `0xfc9334`: Blutter mencatat
`0xc154`, sedangkan adapter `r2flutter` memotong body pada 0x8000.

### 5.2 Perbandingan nama

Perbandingan nama dilakukan pada 1.160 header yang dapat diparse menjadi pasangan
class + metode dari file `asm/*.dart` Blutter. Header closure/top-level dan format
yang tidak terparse tidak masuk subset ini, sehingga angka di bawah bukan klaim
untuk seluruh 2.796 function.

Normalisasi yang dipakai: buang suffix private `_<angka>`, buang trailing dot
pada konstruktor, petakan `op_eq` ke `==`, dan bandingkan token setelah
menghilangkan karakter non-alfanumerik.

| Metrik | Exact setelah normalisasi dasar | Setelah normalisasi konvensi |
|---|---:|---:|
| Nama metode cocok | 1.109 / 1.160 (95,60%) | 1.160 / 1.160 (100%) |
| Nama owner cocok | 1.134 / 1.160 (97,76%) | 1.137 / 1.160 (98,02%) |
| Metode dan owner cocok | 1.083 / 1.160 (93,36%) | 1.137 / 1.160 (98,02%) |

Sisa 23 perbedaan owner seluruhnya adalah `_enumToString`: Blutter menempelkan
helper enum bersama ke class pemakai, sedangkan `r2flutter` menamainya dengan
class enum yang sebenarnya. Tidak ada perbedaan nama metode yang tersisa setelah
normalisasi konvensi pada subset ini.

Kecocokan ini bukan bukti independen bahwa nama tersebut benar secara semantik:
kedua alat membaca metadata snapshot yang sama. Nilainya adalah konsistensi
lintas-tool dan kemampuan mendeteksi perbedaan batas function, atribusi owner,
atau offset pool.

### 5.3 Nama exact yang tervalidasi

Enam nama berikut muncul di instruction table dan cocok dengan alamat yang sudah
dipakai di laporan Blutter/Ghidra:

| Alamat | Nama `r2flutter` | Catatan |
|---|---|---|
| `0xd4f850` | `method.AttedenceController.scanEntrant` | Controller scan presensi |
| `0xd4fc74` | `method.AttendanceNetworkImpl.scanEntrant` | Implementasi network scan |
| `0xd50d94` | `method.BaseNetworkingV2.post` | Method POST networking V2 |
| `0xd52bbc` | `method.BaseNetworkingV2._onRequestToken_241238401` | Refresh/request token |
| `0xfda15c` | `method.AuthNetworkImpl.signIn` | Implementasi network sign-in |
| `0x8e3834` | `method.OAuthWebviewService.exchangeCodeForToken` | Token exchange OAuth |

Nama private memakai suffix library key (misalnya `_241238401`); suffix tersebut
bukan bagian nama source dan harus dibuang saat membandingkan dengan nama Dart
manusia.

`send_peserta` bukan metode terpisah di instruction table. Referensi string
`send_peserta` berada di dalam body `AttendanceNetworkImpl.scanEntrant`
(`0xd4fc74`, rentang `0x10d8` byte), bukan function tersendiri; `r2flutter` tidak
menambahkan nama function baru untuk potongan tersebut. Ini konsisten dengan
temuan Blutter/Ghidra sebelumnya, bukan temuan baru.

## 6. Validasi ObjectPool

`-jp` merekonstruksi ObjectPool statis dengan `entries_offset=16`,
`word_size=8`, dan `length=109.106`. Ini adalah ruang indeks hardware: referensi
`ldr xN, [x27, #disp]` dapat dipetakan ke `entry = (disp - 16) / 8`. Validasi
dilakukan terhadap 67.508 slot yang direferensikan string di `-jxz`.

| Pemeriksaan | Hasil |
|---|---:|
| Slot string `r2flutter` | 67.508 |
| Slot yang juga ada di `pp.txt` Blutter | 67.440 |
| Identik byte-per-byte | 67.048 (99,42%) |
| Identik setelah satu level escaping punctuation Blutter | 67.431 (99,99%) |
| Sisa perbedaan setelah normalisasi | 9 |
| Slot hanya di `r2flutter` | 68 |
| Slot hanya di `r2flutter` yang cocok dengan baris `UnlinkedCall: String:` | 68 / 68 |

Sembilan sisa perbedaan adalah artefak rendering Blutter: escaped newline,
nested escaping, karakter kontrol, dan satu string yang tampak terpotong. Tidak
ada bukti konflik nilai pada indeks yang sama. Sebaliknya, 68 slot yang tidak
muncul sebagai baris `String:` di `pp.txt` semuanya muncul sebagai
`UnlinkedCall: String: "..."` pada indeks sebelumnya; Blutter merender string
inline di objek `UnlinkedCall`, sedangkan `r2flutter` tetap memberinya slot
tersendiri.

Hasil ini memvalidasi pemetaan `pool[index]` yang dipakai pseudo-Dart
`r2flutter` dan menunjukkan bahwa `r2flutter` dapat mengisi celah `pp.txt` untuk
string yang dirender inline. Nilai penuh tetap berada di artefak privat; laporan
ini tidak memuat string sensitif.

## 7. Focus run pseudo-Dart

Karena tidak ada atribusi package, run pseudo-Dart memakai
`--function-scope all` dan `--focus` dengan prefiks nama lengkap. `--focus`
adalah filter **prefix**, bukan substring: `--focus scanEntrant` tidak memilih
apa pun karena nama dimulai dengan `method.`. Enam run berikut memakai prefiks
yang benar dan menghasilkan satu function masing-masing:

| Function | Alamat | ID | Baris pseudo | Omitted | Indirect call | Rantai panggilan utama |
|---|---|---:|---:|---:|---:|---|
| `AttedenceController.scanEntrant` | `0xd4f850` | 19817 | 58 | 0 | 0,600 | `AttendanceNetworkImpl.scanEntrant` |
| `AttedenceController.getConfirmationQRStudent` | `0xd4e2f8` | 19792 | 28 | 0 | 0,111 | `AttendanceNetworkImpl.getConfirmationQRStudent` |
| `AuthNetworkImpl.signIn` | `0xfda15c` | 29005 | 116 | 0 | 0,232 | `BaseNetworking.post`, perbandingan field respons `0x190` |
| `BaseNetworkingV2._onRequestToken_241238401` | `0xd52bbc` | 19836 | 412 | 0 | 0,103 | `OnboardingController.getValidAccessToken`, `SharedPreferences.getBool/setBool`, `_handleLogout` |
| `OAuthWebviewService.exchangeCodeForToken` | `0x8e3834` | 4568 | 656 | 1 | 0,000 | `configOauth`, `FirebaseMessaging.getToken`, `MobileDeviceIdentifier.getDeviceId` |
| `F.get:configOauth` | `0x8bff94` | 3933 | 154 | 0 | 0,000 | Membangun map konfigurasi bercabang pada nilai runtime |

Semua run selesai dengan exit 0 setelah ambang eksploratif
`--min-disassembly-ratio 0.0 --max-indirect-call-ratio 1.0`. Tanpa flag itu,
quality gate strict gagal karena pembagi disassembly adalah 42.809 function, bukan
satu function yang dipilih `--focus`; kegagalan tersebut adalah artefak
denominator, bukan kegagalan recovery. Artefak tetap ditulis meski gate gagal.

### Apa yang dikonfirmasi

- `AttedenceController.scanEntrant` adalah wrapper yang memanggil
  `AttendanceNetworkImpl.scanEntrant`; tidak ada method `send_peserta` terpisah.
- `getConfirmationQRStudent` juga merupakan wrapper controller ke implementasi
  network dengan nama yang sama.
- `AuthNetworkImpl.signIn` memanggil `BaseNetworking.post` dan membandingkan
  field respons dengan `0x190`. Ini bukti statis call dan perbandingan nilai,
  bukan bukti kode HTTP, payload, atau perilaku server.
- `_onRequestToken` memakai `OnboardingController.getValidAccessToken`,
  `SharedPreferences.getBool/setBool`, dan `_handleLogout`. Ini melengkapi
  gambaran alur token yang sudah ada, tetapi tidak membuktikan kapan atau ke
  server mana request dikirim.
- `exchangeCodeForToken` menyebut `configOauth`, `FirebaseMessaging.getToken`,
  dan `MobileDeviceIdentifier.getDeviceId`. Pseudocode ini tidak cukup untuk
  klaim payload, secret, atau Basic auth; gunakan Ghidra/assembly untuk detail.
- `configOauth` membangun map/list konfigurasi yang bercabang pada nilai runtime
  (`thread.f120.f11408`) dan memuat beberapa map literal. Nilai sensitif tidak
  dimuat di laporan atau excerpt.

Tidak ada status temuan keamanan yang dinaikkan. Semua temuan tetap kandidat
sampai ada validasi staging berizin.

## 8. Keterbatasan

- **Tanpa atribusi library/package.** `--function-scope app --app-package
  simaster_ugm` menghasilkan 0 function. Ini keterbatasan backend, bukan bukti
  tidak ada function aplikasi. Gunakan `--function-scope all` + `--focus`.
- **Tanpa nama superclass.** 9.888 record class memiliki `super.type_ref` tetapi
  tidak ada `super.name`; 0 relasi superclass terbaca.
- **Batas function berbeda untuk 48 header.** Blutter memulai 48 thunk
  `dyn:`/getter pada +0x18 dari entry `r2flutter`. Jangan membandingkan ukuran
  body untuk 48 header tersebut tanpa menyesuaikan konvensi.
- **Satu body terpotong.** Adapter membatasi ukuran function pada 0x8000;
  `0xfc9334` adalah contoh yang terpotong.
- **Sembilan slot pool tersisa.** Perbedaan setelah normalisasi adalah artefak
  escaping/truncation Blutter; tidak ada konflik indeks yang terbukti.
- **Class record mentah vs adapter.** 9.888 record/7.392 nama unik menjadi 7.390
  class bernama setelah sanitasi adapter; 2.333 record `::` adalah top-level,
  bukan class Dart.
- **Quality gate fokus.** Gate strict memakai denominator seluruh function;
  run fokus memerlukan ambang eksploratif dan tidak boleh dibaca sebagai lulus
  gate strict.
- **Bukan bukti runtime.** Tidak ada eksekusi aplikasi, instrumentasi, proxy
  capture, atau request server.

## 9. Keputusan dan rekomendasi

| Penggunaan | Rekomendasi |
|---|---|
| Validasi nama exact pada alamat tertentu | Gunakan `r2flutter`; cocokkan dengan Blutter/Ghidra |
| Resolusi slot ObjectPool dan string yang dirender `UnlinkedCall` | Gunakan `r2flutter` sebagai pembanding/pengisi celah |
| Cakupan app-level dan owner top-level | Tetap gunakan Blutter + augmentasi owner |
| Keputusan control-flow dan semantik akhir | Tetap gunakan Ghidra/assembly |
| Analisis ukuran body > 0x8000 | Jangan gunakan adapter `r2flutter` tanpa menaikkan cap |
| Klaim library/package atau inheritance | Jangan gunakan output `r2flutter` |

Langkah lanjutan yang disarankan:

1. Triase 48 header +0x18 dan konfirmasi apakah konvensi ini konsisten pada
   snapshot lain.
2. Selidiki 9 slot pool residual untuk memastikan tidak ada truncation yang
   memengaruhi string keamanan.
3. Pertahankan 23 perbedaan `_enumToString` sebagai catatan atribusi Blutter,
   bukan sebagai konflik nama.
4. Integrasikan nama exact `r2flutter` ke crosswalk alamat Ghidra/Blutter untuk
   function OAuth dan presensi.
5. Jangan menaikkan status temuan tanpa validasi staging berizin.

## 10. Reproduksi

Build radare2 6.2.4 dan r2flutter 0.5.1:

```sh
export R2_PREFIX=/path/to/radare2-install
git clone --depth 1 --branch 6.2.4 https://github.com/radareorg/radare2 "$R2_SRC"
cd "$R2_SRC"
./configure --prefix="$R2_PREFIX"
PATH=/path/to/python3.9/bin:$PATH make -j"$(nproc)"
PATH=/path/to/python3.9/bin:$PATH make install

git clone --depth 1 --branch 0.5.1 https://github.com/trufae/r2flutter "$R2F_SRC"
cd "$R2F_SRC"
export PATH="$R2_PREFIX/bin:$PATH"
export LD_LIBRARY_PATH="$R2_PREFIX/lib"
make PREFIX="$R2_PREFIX" -j"$(nproc)"
```

Ekstraksi langsung:

```sh
export R2F="$R2F_SRC/bin/r2flutter"
export LIBAPP=/path/to/libapp.so
mkdir -p "$OUT"

"$R2F" -jH  "$LIBAPP" > "$OUT/H.json"
"$R2F" -ji  "$LIBAPP" > "$OUT/i.json"
"$R2F" -jc  "$LIBAPP" > "$OUT/c.json"
"$R2F" -jxz "$LIBAPP" > "$OUT/xz.json"
"$R2F" -jzz "$LIBAPP" > "$OUT/zz.json"
"$R2F" -jp  "$LIBAPP" > "$OUT/p.json"
```

Run flutterdec dengan backend `r2flutter`:

```sh
export PATH=/path/to/python3.9/bin:$PATH
export FLUTTERDEC_DATA_DIR=/path/to/patched-data
export FLUTTERDEC_ADAPTER_STORE=/path/to/adapter-store
export FLUTTERDEC_R2FLUTTER_BIN="$R2F"
export FLUTTERDEC_BIN=/path/to/flutterdec

"$FLUTTERDEC_BIN" decompile /path/to/config.arm64_v8a.apk \
  --out "$OUT/focus-scanentrant" \
  --adapter-backend r2-flutter \
  --function-scope all \
  --focus method.AttedenceController.scanEntrant \
  --analysis-profile light \
  --require-snapshot-hash-match \
  --emit-asm \
  --min-disassembly-ratio 0.0 \
  --max-indirect-call-ratio 1.0
```

Ganti `--focus` dengan prefiks nama lengkap function lain. Jangan memakai
`--function-scope app` untuk backend ini sampai atribusi package tersedia.
Patch registry dan adapter store mengikuti
[`analysis/flutterdec/README.md`](../analysis/flutterdec/README.md).

## 11. Artefak

| Artefak | Lokasi |
|---|---|
| Output langsung `r2flutter` | `/var/smster/work/r2flutter-2026-10-29/` |
| Enam focus run + log | `/var/smster/work/r2flutter-2026-10-29/focus-*` |
| Excerpt pseudo-Dart | [`recovered/r2flutter/`](../recovered/r2flutter/) |
| Pipeline dan setup | [`analysis/flutterdec/`](../analysis/flutterdec/) |
| Manifest artifact | [`artifact-manifest.json`](artifact-manifest.json) |
| Laporan flutterdec app-level | [`FLUTTERDEC-APP-DECOMPILE.md`](FLUTTERDEC-APP-DECOMPILE.md) |
| Laporan Ghidra app-level | [`GHIDRA-APP-DECOMPILE.md`](GHIDRA-APP-DECOMPILE.md) |

Output lengkap tidak dimasukkan ke Git; hanya excerpt yang ditinjau yang
disimpan. File APK, DEX, `.so`, dan database Ghidra tetap berada di luar repo.
