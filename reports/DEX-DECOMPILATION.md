# DEX inventory dan hasil JADX

**Target:** base APK Simaster Student vNEXT 1.11.1 (code 65)
**Hash base APK:** `68dd03aea2796fdfd9467d8382ab4f8a991c53c091330e40b60d236028c2e809`
**Analisis:** 2026-10-27

## Inventaris DEX

APK Analyzer `dex packages --defined-only` dijalankan pada tiap file DEX. Jumlah method dan field di bawah adalah item yang didefinisikan pada DEX, bukan referensi eksternal.

| DEX | Class | Method | Field |
|---|---:|---:|---:|
| `classes.dex` | 7.420 | 55.728 | 24.655 |
| `classes2.dex` | 31 | 31 | 0 |
| `classes3.dex` | 172 | 1.845 | 501 |
| `classes4.dex` | 11.169 | 56.199 | 34.926 |
| `classes5.dex` | 8.525 | 56.254 | 19.875 |
| **Total** | **27.317** | **170.057** | **79.957** |

Inventaris mentah dari APK Analyzer berada di `/smster/work/dex-inventory/`. Output JADX mencatat 27.328 class dan 170.057 method yang dimuat; perbedaan 11 class terhadap APK Analyzer masih perlu direkonsiliasi.

## Perbandingan mode JADX 1.5.6

| Mode | Input dan opsi | Unit diproses | Output Java | Resource | Error CLI | Status |
|---|---|---:|---:|---:|---:|---|
| `auto` | XAPK; baseline terdahulu | 10.477 | 14.647 | 797 | 164 | Parsial, exit code 3 |
| `simple` | base APK, `--show-bad-code`, 4 thread | 10.477 | 14.749 | 797 | 67 | Parsial, exit code 3; 46 marker error pada 23 file |
| `fallback` | base APK, `--show-bad-code`, `--no-res`, 4 thread | 9.707 | 14.749 | tidak diproses | 0 | Selesai, exit code 0; tidak ada marker `JADX ERROR` |

Mode `fallback` mengeluarkan instruksi linear dengan label kontrol seperti `goto Lxx`. Ini mempertahankan lebih banyak detail bytecode daripada hasil `auto`/`simple`, tetapi bukan Java bersih yang dapat dianggap source asli. Nilai `unit diproses` adalah progress unit JADX, bukan denominator method; karena itu persentase metode belum diklaim.

JADX pada semua run melaporkan 27.328 class dimuat, 170.057 method, dan 3.961.288 instruksi. Pada fallback terdapat warning duplikasi `DebugProbesKt` antara asset `DebugProbesKt.bin` dan `classes5.dex`; JADX mempertahankan definisi dari DEX.

## Artefak

- [`analysis-results.zip`](../analysis-results.zip) berisi hasil baseline JADX dan Blutter yang sudah disanitasi.
- [`analysis-results-jadx-fallback.zip`](../analysis-results-jadx-fallback.zip) berisi 14.749 file `.java` dari mode fallback, tanpa APK/DEX/library native/resource mentah. SHA-256: `e6c770efda9b7167139491f591afdc6647690907389968495a0c8b212a1cd1f4` (21.661.766 byte; 126.217.343 byte sebelum kompresi).
- Direktori kerja fallback berada di `/smster/decompiled-fallback/sources/`; log dan exit status ada di `/smster/work/jadx-fallback-2026-10-27.log` dan `/smster/work/jadx-fallback-2026-10-27.exit`.
- Simple-mode log dan exit status berada di `/smster/work/jadx-simple-2026-10-27.log` dan `/smster/work/jadx-simple-2026-10-27.exit`.

CI memeriksa isi teks di dalam ZIP terhadap pola private key lengkap, JWT, bearer token, API key Google, dan credential literal. Pemindaian ini berfokus pada pola umum; ia tidak menggantikan review manual atau membuktikan seluruh metode telah dipetakan ke output.

## Crosswalk awal class-level (2026-10-27)

Pencocokan sederhana nama file top-level menghasilkan:

- 27.317 class DEX; 14.463 nama top-level setelah class inner `$...` dilipat.
- 14.749 file Java fallback; 14.749 nama top-level file.
- **423** nama top-level DEX tidak memiliki file Java dengan nama yang sama.
- **709** file Java tidak memiliki pasangan nama top-level DEX; banyak di antaranya adalah stub API Android/AndroidX atau class sintetis.
- Selisih 11 class antara hitungan APK Analyzer dan JADX masih terbuka.

Angka ini **bukan** klaim bahwa 423 class gagal didecompile. Inner class, synthetic class, nama yang dinormalisasi, dan stub API dapat menghasilkan selisih. Crosswalk method-level dan triase per unit tetap diperlukan sebelum status 100% dapat diberikan.

## Gap untuk cakupan penuh

1. Hubungkan 170.057 method DEX ke output fallback dan class/file asal, termasuk method tanpa code item, abstract/native, synthetic, dan error-mode.
2. Rekonsiliasi selisih 11 class antara APK Analyzer dan JADX.
3. Triase 67 error di `simple` dan 164 error pada baseline `auto` per method; bandingkan dengan representasi `fallback`.
4. Cocokkan 797 resource hasil decode dengan semua resource dan asset dari seluruh split XAPK.
5. Bedakan library Android/Jetpack pihak ketiga dari wrapper dan kode aplikasi; fitur Simaster utama juga berada di Flutter AOT.

Kriteria “100%” tetap mengikuti [PRD](../docs/PRD-REVERSE-ENGINEERING.md): semua unit perlu memiliki status dan bukti; mode fallback yang sukses tidak dengan sendirinya membuktikan bahwa setiap DEX method telah dipulihkan dengan semantik utuh.
