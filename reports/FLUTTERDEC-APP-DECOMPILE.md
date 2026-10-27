# Flutterdec app-level decompile — `simaster_ugm`

- **Status:** selesai untuk record yang dipilih flutterdec; **parsial** terhadap seluruh paket aplikasi dan belum menjadi bukti runtime.
- **Target:** `id.ac.ugm.student.vnext.simaster` 1.11.1 (code 65), split ARM64.
- **Input:** `config.arm64_v8a.apk`, SHA-256 `4cfee9ab21c0f3b1f7a197849af1abfc632cd6a9b0db180ea4175ca88b2513b5`; `libapp.so` SHA-256 `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290`.
- **Snapshot hash:** `ace654289f5abc240509fc941453ebc5`.
- **Tool:** `caverav/flutterdec` `ccf7dfa` (`0.1.0-alpha.4`), source release build.
- **Sifat bukti:** pseudo-Dart dari byte binary; bukan source Dart asli dan bukan observasi runtime.
- **Tanggal run:** 2026-10-27.

## 1. Ringkasan hasil

Run ini memakai `--function-scope app --app-package simaster_ugm`, sehingga
denominator keluarannya adalah **record yang dipilih adapter**, bukan seluruh
29.989 fungsi AOT.

| Ukuran | Hasil |
|---|---:|
| Record flutterdec yang dipilih | 2.628 |
| File pseudocode yang diemitkan | 2.628 |
| File pseudocode kosong | 0 |
| Ukuran teks pseudocode | 5.898.899 byte (sekitar 5,9 MB) |
| Header function Blutter untuk paket aplikasi | 2.796 |
| Selisih record yang belum direkonsiliasi | 168 |
| Class / library / object-pool entry | 6.118 / 2.312 / 108.584 |
| Total function AOT (denominator penuh) | 29.989 |
| Waktu run (catatan trial) | sekitar 73 detik |
| Runtime yang dijalankan | 0 |
| Request server yang dikirim | 0 |

Quality gate strict lulus dengan batas `--max-placeholder-ifs 12` (jumlah yang
terukur pada target ini), `unresolved_cf=0`, rasio indirect call 8,28%, dan
`disassembly_ratio=1,0`. Lulusnya gate hanya berarti artefak memenuhi ambang
kualitas flutterdec; itu **bukan** klaim bahwa source Dart telah pulih utuh.

## 2. Kualitas output

| Metrik | Nilai |
|---|---:|
| Function yang didisassembly | 2.628 / 2.628 record |
| Total call | 42.386 |
| Indirect call | 3.510 (8,28%) |
| Dispatch-table call | 1.834 |
| Instruksi yang tidak terangkat | 1.841 |
| Placeholder `if` | 12 |
| Penanda jalur yang dihilangkan | 88 |
| Loop back-edge | 19 |
| Blok berulang | 2.975 |
| Referensi nama register mentah | 26.394 |
| Unresolved control-flow | 0 |
| Nama heuristic / exact / placeholder | 2.628 / 0 / 0 |

Semua nama function bersifat heuristic dari bridge Blutter. Tidak ada simbol
Dart asli yang exact pada run ini.

## 3. Hubungan dengan Blutter dan Ghidra

| Lapisan | Unit | Hasil | Interpretasi |
|---|---|---:|---|
| Blutter | Header function paket aplikasi | 2.796 | Alamat dan nama dasar dari dump AOT |
| Ghidra | Function start aplikasi yang terwakili | 2.796 / 2.796 | Batch Ghidra app-level, lihat [`GHIDRA-APP-DECOMPILE.md`](GHIDRA-APP-DECOMPILE.md) |
| Flutterdec | Record yang dipilih dan diemitkan | 2.628 | Output pseudo-Dart untuk `package:simaster_ugm` |
| Selisih | Record flutterdec vs header Blutter | 168 | Belum direkonsiliasi |

Angka 2.628 **tidak boleh** langsung disebut 94% cakupan aplikasi. Perbedaan 168
dapat berasal dari deduplikasi record, fungsi tanpa blok yang dapat diemitkan,
atribusi package, atau perbedaan model function antara adapter dan Blutter.
Crosswalk berbasis alamat/nama belum dilakukan karena nama flutterdec bersifat
heuristic dan object-pool index-nya ordinal.

## 4. Review function terpilih

File lengkap ada di [`recovered/flutterdec/simaster_ugm/`](../recovered/flutterdec/simaster_ugm/).
Angka "omitted" adalah jumlah penanda jalur kompleks yang tidak diemitkan
flutterdec, bukan jumlah bug.

| Function | ID | Omitted | Catatan |
|---|---:|---:|---|
| `_handleRedirectUri` | 20916 | 9 | Memanggil `configOauth`; alur redirect terlihat, tetapi `state`/PKCE tidak dapat disimpulkan dari pseudo-Dart ini saja. |
| `exchangeCodeForToken` | 20890 | 141 | Terlalu banyak jalur hilang untuk klaim payload token, secret, atau Basic auth. Gunakan Ghidra/assembly. |
| `_launchOAuth` | 20909 | 0 | Wrapper peluncuran OAuth; memanggil `configOauth`; literal pool tetap belum terselesaikan. |
| `configOauth` | 23360 | 0 | Membangun konfigurasi per flavor; `poolOff[N]` tidak otoritatif sehingga endpoint/ID tidak boleh dibaca dari sini. |
| `scanEntrant` | 20785 | 88 | Memanggil `baseUrl`, `post`, dan konverter parameter scan; tidak ada pemeriksaan peran lokal yang terlihat. String endpoint tetap berupa pool index. |
| `BaseNetworking__internal` | 23478 | 0 | Hanya konstruktor; perilaku token/header tidak terlihat di function ini. |

### Dampak ke temuan

- **F-02 (OAuth):** flutterdec memberikan dekompilasi independen untuk
  `_handleRedirectUri` dan `exchangeCodeForToken`, dan call graph-nya konsisten
  dengan analisis Ghidra. Namun 9 dan 141 jalur yang hilang berarti output ini
  tidak menambah bukti baru tentang `state`, PKCE, atau isi token exchange.
  Status tetap kandidat; lihat [`OAUTH-DEEP-DIVE.md`](OAUTH-DEEP-DIVE.md).
- **F-06 (otorisasi API):** `scanEntrant` menunjukkan pemakaian `baseUrl()` dan
  `post()` dari paket aplikasi serta konverter parameter scan, tanpa role check
  lokal. Ini memperkuat reachability statis, tetapi tidak membuktikan server
  menerima token mahasiswa atau mempercayai identitas di body. Status tetap
  kandidat; lihat [`API-AUTH-DEEP-DIVE.md`](API-AUTH-DEEP-DIVE.md).
- **F-01/F-05:** tidak ada klaim baru dari run ini.
- **F-06.3:** anomali `null` → `false` tetap temuan fungsional kandidat; flutterdec
  tidak mengubah statusnya.

Tidak ada status temuan yang dinaikkan menjadi tervalidasi.

## 5. Mengapa registry lokal dipatch

Record upstream untuk snapshot ini tidak memuat enam fitur layout yang terlihat
pada adapter lokal:

`dedup_instructions`, `no-asan`, `no-dwarf_stack_traces_mode`, `no-msan`,
`no-shared_data`, `no-tsan`.

Tanpa patch, flutterdec tidak menemukan record exact dan jatuh ke core recovery:
fungsi menjadi `fn_0x...` tanpa atribusi package. Patch hanya menambahkan fitur
ke salinan lokal `adapters/registry.json` dan menghitung ulang
`feature_fingerprint`. Repositori upstream dan byte adapter tidak diubah.
Detail ada di [`analysis/flutterdec/README.md`](../analysis/flutterdec/README.md).

## 6. Reproduksi

Pipeline ada di [`analysis/flutterdec/`](../analysis/flutterdec/):

- `prepare_registry.py` — menambahkan fitur yang teramati dan menghitung ulang
  fingerprint pada salinan registry.
- `blutter_bridge.sh` — memakai ulang dump Blutter yang sudah ada (`asm/` dan
  `pp.txt`), bukan menjalankan Blutter lagi.
- `run_app.sh` — menjalankan flutterdec dengan scope `simaster_ugm`, backend
  Blutter, profile `light`, dan pengecekan snapshot hash.

Ringkasnya:

```sh
export FLUTTERDEC_BIN=/path/to/flutterdec
export FLUTTERDEC_DATA_DIR=/path/to/patched-data
export FLUTTERDEC_ADAPTER_STORE=/path/to/adapter-store
export INPUT_APK=/path/to/config.arm64_v8a.apk
export OUT_DIR=/path/to/output
export BLUTTER_DUMP=/path/to/blutter-dump

analysis/flutterdec/run_app.sh
```

Python adapter memerlukan Python 3.9 atau lebih baru. Jangan menjalankan
pipeline pada binary lain tanpa memeriksa ulang snapshot hash, registry, dan
provenance input.

## 7. Batas interpretasi

- Ini **pseudo-Dart**, bukan source Dart asli; komentar, nama lokal, dan sebagian
  struktur tipe hilang akibat AOT.
- Nama function heuristic; tidak ada exact symbol pada run ini.
- Object-pool index bersifat ordinal; `poolOff[N]` bukan alamat atau literal
  string yang dapat dipercaya.
- 88 penanda jalur kompleks dihilangkan dan 1.841 instruksi tidak terangkat;
  function dengan banyak omitted path tidak boleh dijadikan dasar klaim akhir.
- 3.510 call bersifat indirect; target call tidak selalu diketahui.
- 2.628 record bukan 2.796 header Blutter; selisih 168 belum direkonsiliasi.
- Registry patch adalah workaround lokal untuk alpha tool, bukan kontribusi
  upstream dan bukan bukti bahwa record tersebut sudah diverifikasi vendor.
- Alias Dart `3.12.1` berasal dari record registry/r2flutter offsets dan ditandai
  `unverified`; manifest Blutter mencatat 3.12.2. Jangan memakai alias ini sebagai
  bukti versi SDK independen.
- Tidak ada eksekusi aplikasi, instrumentasi, atau request backend. Semua klaim
  server dan runtime tetap memerlukan staging berizin.

## 8. Langkah berikutnya

1. Rekonsiliasi 168 selisih record flutterdec terhadap 2.796 header Blutter;
   klasifikasikan sebagai deduplikasi, atribusi package, atau fungsi yang hilang.
2. Tambahkan crosswalk alamat untuk function terpilih, misalnya dengan `--emit-asm`
   atau output IR, lalu bandingkan dengan Ghidra dan Blutter.
3. Uji backend `r2flutter` pada snapshot yang sama untuk melihat apakah object
   pool dan nama function menjadi lebih akurat; backend ini belum diuji pada
   laporan ini.
4. Gunakan Ghidra/assembly untuk keputusan control-flow final, bukan pseudo-Dart
   flutterdec.
5. Jalankan validasi staging OAuth/API hanya setelah input uji dan izin tersedia;
   jangan memakai produksi.

## 9. Artefak

| Artefak | Lokasi |
|---|---|
| Output lengkap (lokal) | `/var/smster/work/flutterdec-2026-10-27/app-simaster_ugm/` |
| Excerpt terpilih | [`recovered/flutterdec/`](../recovered/flutterdec/) |
| Quality JSON | [`flutterdec-quality.json`](flutterdec-quality.json) |
| Pipeline | [`analysis/flutterdec/`](../analysis/flutterdec/) |
| Batch Ghidra app-level | [`GHIDRA-APP-DECOMPILE.md`](GHIDRA-APP-DECOMPILE.md) |

Output lengkap tidak dimasukkan ke Git; hanya excerpt yang ditinjau yang
disimpan. File APK, DEX, `.so`, dan database Ghidra tetap berada di luar repo.
