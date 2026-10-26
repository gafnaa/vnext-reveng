# Analisis Ghidra — Simaster `libapp.so`

## Target dan metode

- Target: split ARM64 `libapp.so` dari Simaster 1.11.1.
- SHA-256: `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290`.
- Ghidra: 12.1.4, headless, bahasa `AARCH64:LE:64:v8A`, image base `0x100000`.
- Auto-analysis standar pada ELF stripped ini tidak menemukan fungsi. Agar Ghidra dapat mulai menelusuri alur kode, lima entry point dan ukuran byte yang sudah diberi label oleh Blutter dipakai sebagai seed. Alamat Ghidra yang dipakai adalah alamat Blutter ditambah image base `0x100000`.
- Pencocokan alamat diverifikasi pada fungsi login: byte di Ghidra `0x10da15c` diawali `fd79bfa9fd030faa`, sama dengan instruksi pertama pada alamat Blutter `0xfda15c`. Bukti baca byte REA `ev_12b16e4f367fc8814b802c1391b7d1312024b350f26535900110555466c960d0` ada di [`ghidra-seed-evidence.json`](ghidra-seed-evidence.json); evidence awal Ghidra ada di [`ghidra-evidence-bundle.json`](ghidra-evidence-bundle.json).
- Setelah entry point di-seed dan analisis ulang, Function Manager Ghidra menghitung 2.052 fungsi. Angka ini adalah hasil analisis pada image ini; bukan klaim bahwa setiap fungsi Dart berhasil dipulihkan.

## Fungsi yang didecompile

| Fungsi berlabel Blutter | Alamat Ghidra | Ukuran Blutter | Byte body Ghidra | Hubungan yang tampak di pseudocode |
|---|---:|---:|---:|---|
| `AuthNetworkImpl.signIn` | `0x10da15c` | `0x430` | 1.072 | Memanggil `BaseNetworking.post` |
| `OAuthController.refreshOAuth` | `0xa13d58` | `0x8c4` | 2.244 | Entry point refresh token |
| `SessionMiddleware._performCheck` | `0x140f930` | `0x914` | 2.088 dalam 3 range | Memanggil `OAuthController.refreshOAuth` |
| `AttendanceNetworkImpl.getConfirmationQRStudent` | `0xe4e500` | `0x638` | 1.232 dalam 2 range | Memanggil `BaseNetworking.post` |
| `BaseNetworking.post` | `0x9ec50c` | `0x4b4` | 1.204 | Primitive POST bersama |

Pseudocode lengkap dan metadata tiap fungsi ada di [`GHIDRA-AOT-SELECTED.md`](GHIDRA-AOT-SELECTED.md). Nama metode dan batas awal/ukuran di tabel berasal dari label Blutter, bukan simbol asli ELF. Ghidra menghasilkan instruksi dan pseudocode pada alamat tersebut; pemanggilan yang sudah dinamai muncul setelah fungsi seed diberi label di database Ghidra.

## Temuan statis

- Pseudocode Ghidra untuk `signIn` dan `getConfirmationQRStudent` berujung pada `BaseNetworking.post` yang sama. Assembly Blutter mengaitkan `signIn` dengan descriptor layanan `staff/get_simaster_atribut_by_username`; peta endpoint dan caller ada di [`FEATURE-MAP.md`](FEATURE-MAP.md). Ini hubungan statis di binary, bukan traffic yang diamati.
- Pseudocode Ghidra untuk `SessionMiddleware._performCheck` memanggil `OAuthController.refreshOAuth`, sesuai dengan alur token yang dipetakan dari assembly dan rekonstruksi Dart. Ini tidak membuktikan refresh berhasil saat runtime.
- Pseudocode mempertahankan banyak variabel/register tak bertipe (`undefined8`, `unaff_x*`) dan fungsi runtime bernama alamat. Object model Dart AOT tidak pulih utuh dari hasil decompiler Ghidra ini.

## Batas analisis

- Ini analisis statis. APK tidak dijalankan; tidak ada request jaringan, respons backend, ataupun hasil login/QR runtime yang diamati.
- Auto-analysis default sendiri menghasilkan 0 fungsi. ELF ini stripped dan entry point ELF bernilai 0. Hasil 2.052 fungsi membutuhkan seed alamat Blutter dan dapat mewarisi batas fungsi Blutter; ukuran body Ghidra yang lebih kecil untuk dua fungsi menunjukkan ada byte/range yang tidak menjadi bagian body Ghidra.
- Pseudocode Ghidra bukan source Dart atau source C asli. String dan objek heap Dart masih banyak tampil sebagai pointer/offset yang tidak terdekode.
- Ghidra project lokal tersimpan di `/smster/work/ghidra/projects/SimasterAOT`; project/database tidak dimasukkan ke repo. Script seed ada di [`../analysis/ghidra/SeedBlutterFunctions.java`](../analysis/ghidra/SeedBlutterFunctions.java).
