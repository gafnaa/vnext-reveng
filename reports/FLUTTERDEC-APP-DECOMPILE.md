# Flutterdec app-level decompile — `simaster_ugm`

- **Status:** seluruh 2.796 header function aplikasi sudah memiliki record flutterdec setelah augmentasi owner top-level; **pseudo-Dart tetap parsial** dan bukan bukti runtime.
- **Target:** `id.ac.ugm.student.vnext.simaster` 1.11.1 (code 65), split ARM64.
- **Input:** `config.arm64_v8a.apk`, SHA-256 `4cfee9ab21c0f3b1f7a197849af1abfc632cd6a9b0db180ea4175ca88b2513b5`; `libapp.so` SHA-256 `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290`.
- **Snapshot hash:** `ace654289f5abc240509fc941453ebc5`.
- **Tool:** `caverav/flutterdec` `ccf7dfa` (`0.1.0-alpha.4`), source release build.
- **Sifat bukti:** pseudo-Dart dari byte binary; bukan source Dart asli dan bukan observasi runtime.
- **Tanggal run:** canonical 2026-10-27; augmented 2026-10-28.

## 1. Dua run dan hasil

Ada dua run pada snapshot yang sama:

1. **Canonical** — dump Blutter apa adanya. flutterdec memilih 2.628 record
   `package:simaster_ugm`.
2. **Augmented** — salinan dump Blutter dengan 418 header `class :: {` diberi
   owner sintetis per file. flutterdec memilih 2.796 record, tepat sama dengan
   jumlah header function paket aplikasi di Blutter.

| Ukuran | Canonical | Augmented |
|---|---:|---:|
| Record flutterdec yang dipilih | 2.628 | 2.796 |
| File pseudocode yang diemitkan | 2.628 | 2.796 |
| File pseudocode kosong | 0 | 0 |
| Ukuran teks pseudocode | 5.898.899 byte | 6.255.076 byte |
| Header function Blutter untuk paket aplikasi | 2.796 | 2.796 |
| Header Blutter yang tidak terwakili | 168 | 0 |
| Entri ASM flutterdec | 2.628 | 2.796 |
| Class / library / object-pool entry | 6.118 / 2.312 / 108.584 | 6.536 / 2.312 / 108.584 |
| Quality gate strict | lulus, batas 12 placeholder `if` | lulus, batas 15 placeholder `if` |
| Total function AOT (denominator penuh) | 29.989 | 29.989 |
| Runtime yang dijalankan | 0 | 0 |
| Request server yang dikirim | 0 | 0 |

Kenaikan 418 class berasal dari 418 owner sintetis, bukan dari class Dart baru.
Kenaikan 168 function berasal dari fungsi top-level yang sebelumnya tidak dapat
diatribusikan ke library. Tidak ada function canonical yang hilang atau berubah
nama pada run augmented.

## 2. Rekonsiliasi 168 function yang hilang

Crosswalk dilakukan dengan membandingkan alamat pada baris pertama setiap file
`asm/*.s` terhadap header `// ** addr: ...` dari dump Blutter:

| Pemeriksaan | Hasil |
|---|---:|
| Entri ASM canonical di dalam 2.796 header Blutter | 2.628 / 2.628 |
| Entri ASM canonical di luar header Blutter | 0 |
| Header Blutter tanpa entri canonical | 168 |
| Entri ASM augmented di dalam header Blutter | 2.796 / 2.796 |
| Header Blutter tanpa entri augmented | 0 |
| Function baru pada run augmented | 168 |

Seluruh 168 function yang hilang berada di blok `class ::`, yaitu representasi
Blutter untuk member top-level yang tidak memiliki owner class. Tidak ada satu
pun yang berada di dalam class Dart bernama. Karena flutterdec mengatribusikan
function melalui owner class ke library, blok tanpa owner tidak masuk ke scope
`package:simaster_ugm`.

| Klasifikasi 168 function | Jumlah |
|---|---:|
| Member top-level dengan header `class ::` | 168 |
| Ditandai `static` | 142 |
| Berupa `[closure] static` | 26 |
| Total ukuran body menurut Blutter | 114.924 byte |
| Ukuran body terkecil / terbesar | 12 / 3.620 byte |

Sebaran utamanya:

| File sumber top-level | Function |
|---|---:|
| `app/modules/checkpoint/views/widget/input_kode_dialog.dart` | 8 |
| `app/modules/my_gate_vehicle_details/data/models/user_model/user_model.dart` | 7 |
| `theme/theme.dart` | 6 |
| `app/modules/bimbingan/view/bimbingan_view.dart` | 6 |
| `app/modules/study/data/models/study_krs_model/study_krs_model.dart` | 5 |
| `app/modules/attedence/data/models/recap_presence_agenda_model.dart` | 5 |
| `app/modules/study/data/models/study_attendance_recap_model/study_attendance_recap_model.dart` | 5 |
| `main_production.dart` | 5 |

Di antara function tersebut terdapat sembilan converter JSON top-level
(`*ImplToJson` / `*ImplFromJson`), termasuk `_ScanEntrantParamImplToJson`
(`0xd51494`). Blutter menulis nama ini `_$$ScanEntrantParamImplToJson`;
pseudo-Dart flutterdec menampilkannya `___ScanEntrantParamImplToJson`. Laporan
ini memakai bentuk ringkas `_ScanEntrantParamImplToJson`.

### Augmentasi owner sintetis

`analysis/flutterdec/augment_top_level.py` menyalin dump Blutter dan mengganti
setiap header `class :: {` dengan nama sintetis yang diturunkan dari path file,
misalnya `__TopLevel_simaster_ugm_theme_theme__`. Pada dump ini terdapat 418 file
dengan tepat satu blok top-level masing-masing. Nama sintetis hanya bertujuan
memberi flutterdec satu owner unik agar function dapat diatribusikan ke library.

Hasilnya:

- 2.796/2.796 header Blutter terwakili;
- 2.628 record canonical tetap ada dengan ID dan nama yang sama;
- tepat 168 function baru, semuanya cocok dengan header Blutter;
- `scanEntrant` kini memanggil `___ScanEntrantParamImplToJson` secara bernama,
  bukan `fn_0xd51494` yang anonim.

**Batas:** `__TopLevel_*` bukan class Dart asli dan bukan hasil pemulihan nama.
Owner ini hanya menunjukkan file asal dan memberi konteks untuk analisis. Jangan
memakai nama sintetis sebagai bukti struktur source, inheritance, atau semantic
owner.

## 3. Kualitas output

| Metrik | Canonical | Augmented |
|---|---:|---:|
| Function yang didisassembly | 2.628 / 2.628 | 2.796 / 2.796 |
| Total call | 42.386 | 44.675 |
| Indirect call | 3.510 (8,28%) | 3.990 (8,93%) |
| Dispatch-table call | 1.834 | 2.265 |
| Instruksi yang tidak terangkat | 1.841 | 1.943 |
| Placeholder `if` | 12 | 15 |
| Penanda jalur yang dihilangkan | 88 | 90 |
| Loop back-edge | 19 | 20 |
| Blok berulang | 2.975 | 3.064 |
| Referensi nama register mentah | 26.394 | 29.196 |
| Unresolved control-flow | 0 | 0 |
| Nama heuristic / exact / placeholder | 2.628 / 0 / 0 | 2.796 / 0 / 0 |

Semua nama function bersifat heuristic dari bridge Blutter. Tidak ada simbol
Dart asli yang exact pada kedua run. Lulusnya quality gate hanya berarti artefak
memenuhi ambang kualitas flutterdec; itu **bukan** klaim bahwa source Dart telah
pulih utuh.

## 4. Hubungan dengan Blutter dan Ghidra

| Lapisan | Unit | Hasil | Interpretasi |
|---|---|---:|---|
| Blutter | Header function paket aplikasi | 2.796 | Alamat dan nama dasar dari dump AOT |
| Ghidra | Function start aplikasi yang terwakili | 2.796 / 2.796 | Batch Ghidra app-level, lihat [`GHIDRA-APP-DECOMPILE.md`](GHIDRA-APP-DECOMPILE.md) |
| Flutterdec canonical | Record yang dipilih dan diemitkan | 2.628 | Output pseudo-Dart untuk `package:simaster_ugm` |
| Flutterdec augmented | Record yang dipilih dan diemitkan | 2.796 | Cakupan alamat function app-level setelah owner sintetis |
| Selisih | Record augmented vs header Blutter | 0 | Crosswalk alamat selesai untuk paket aplikasi |

Angka 2.796/2.796 adalah **cakupan alamat function app-level**, bukan cakupan
semantik seluruh binary. Denominator penuh AOT tetap 29.989 function, dan output
ini masih memiliki 90 penanda jalur hilang serta 1.943 instruksi yang tidak
terangkat. Ghidra dan flutterdec juga memakai model batas function yang berbeda;
kecocokan alamat tidak berarti pseudocode keduanya identik.

## 5. Crosswalk object pool `poolOff`

Sebelumnya laporan ini menyebut indeks object pool sebagai ordinal dan tidak
dapat dipetakan. Pada run ini ditemukan pola yang konsisten: `poolOff[N]` adalah
offset desimal ke `pp.txt`, sehingga nilainya dapat dicari sebagai `[pp+0xN]`.

Verifikasi pada function terpilih:

| Function | Referensi unik | Resolve ke `pp.txt` | Catatan |
|---|---:|---:|---|
| `configOauth` | 38 | 38 | Key OAuth, scope, dan nilai konfigurasi; nilai sensitif diredaksi |
| `_launchOAuth` | 13 | 13 | String log, `authorizationUrl`, closure, dan objek UI |
| `_handleRedirectUri` | 4 | 4 | String log dan `redirectUri` |
| `exchangeCodeForToken` | 8 | 8 | `clientId`, string perangkat, dan field logging |
| `_ScanEntrantParamImplToJson` | 8 | 8 | Seluruh key body scan |
| `scanEntrant` | 12 | 11 | `0x83d00` tidak ada sebagai entri `pp.txt` |
| `BaseNetworking__internal` | 4 | 4 | Field dan closure networking |

Crosswalk ini **inferensial**, bukan kontrak resmi flutterdec. Tool tidak
mendokumentasikan bahwa `poolOff` selalu berupa offset `pp`, dan pemetaan dapat
berubah pada build, registry, atau versi tool lain. Satu offset yang tidak
terselesaikan menunjukkan bahwa pemetaan tidak boleh dianggap lengkap. Nilai
penuh tetap hanya berada di artefak privat; laporan ini tidak memuat secret,
token, atau PII.

## 6. Review function terpilih

File lengkap ada di [`recovered/flutterdec/simaster_ugm/`](../recovered/flutterdec/simaster_ugm/).
Angka "omitted" adalah jumlah penanda jalur kompleks yang tidak diemitkan
flutterdec, bukan jumlah bug.

| Function | ID | Omitted | Catatan |
|---|---:|---:|---|
| `_handleRedirectUri` | 20916 | 9 | Memanggil `configOauth`; `redirectUri` dan string log resolve. `state`/PKCE tidak dapat disimpulkan dari pseudo-Dart ini. |
| `exchangeCodeForToken` | 20890 | 141 | Terlalu banyak jalur hilang untuk klaim payload token, secret, atau Basic auth. Gunakan Ghidra/assembly. |
| `_launchOAuth` | 20909 | 0 | Wrapper peluncuran OAuth; memanggil `configOauth`; 13/13 referensi pool resolve. |
| `configOauth` | 23360 | 0 | Membangun konfigurasi per flavor; 38/38 referensi pool resolve, termasuk key `clientId`, `clientSecret`, scope, dan URL. Nilai sensitif diredaksi. |
| `scanEntrant` | 20785 | 88 | Memanggil `baseUrl`, `post`, dan `___ScanEntrantParamImplToJson`; tidak ada pemeriksaan peran lokal yang terlihat. |
| `_ScanEntrantParamImplToJson` | 20810 | 0 | Mengonfirmasi delapan key body scan dan urutannya; sebelumnya tidak teremitkan karena berada di blok top-level. |
| `BaseNetworking__internal` | 23478 | 0 | Hanya konstruktor; perilaku token/header tidak terlihat di function ini. |

### Dampak ke temuan

- **F-02 (OAuth):** flutterdec memberikan dekompilasi independen untuk
  `_handleRedirectUri`, `exchangeCodeForToken`, `_launchOAuth`, dan
  `configOauth`. Crosswalk pool mengonfirmasi adanya konfigurasi OAuth yang
  tertanam, termasuk key `clientSecret` pada cabang yang dianalisis. Nilai tidak
  dimuat di laporan. Ini memperkuat bukti statis F-02, tetapi bukan bukti runtime
  tentang `state`, PKCE, atau isi token exchange. Status tetap kandidat; lihat
  [`OAUTH-DEEP-DIVE.md`](OAUTH-DEEP-DIVE.md).
- **F-06 (otorisasi API):** body `doscanent` sekarang terkonfirmasi dari dua
  jalur independen: Ghidra/Blutter pada `0xd51494`, dan flutterdec
  `_ScanEntrantParamImplToJson` (ID 20810) dengan 8/8 key pool resolve. Urutannya
  adalah `code`, `latitudeGps`, `longitudeGps`, `radius`, `userTipeNomor`,
  `identitasId`, `username`, `NamaLengkap`. Ini memperkuat fakta bahwa identitas
  dikirim dari client, tetapi tidak membuktikan server memakai nilai body atau
  menerima token mahasiswa. Status tetap kandidat; lihat
  [`API-AUTH-DEEP-DIVE.md`](API-AUTH-DEEP-DIVE.md).
- **F-01/F-05:** tidak ada klaim baru dari run ini.
- **F-06.3:** koreksi—`null`/non-Map dari jalur QR panjang diperlakukan sebagai
  `true` oleh controller; klaim lama `null` → `false` tidak didukung. Data source
  tetap membuang body respons; konsistensi UI/server menunggu uji A-11.

Tidak ada status temuan yang dinaikkan menjadi tervalidasi.

## 7. Mengapa registry lokal dipatch

Record upstream untuk snapshot ini tidak memuat enam fitur layout yang terlihat
pada adapter lokal:

`dedup_instructions`, `no-asan`, `no-dwarf_stack_traces_mode`, `no-msan`,
`no-shared_data`, `no-tsan`.

Tanpa patch, flutterdec tidak menemukan record exact dan jatuh ke core recovery:
fungsi menjadi `fn_0x...` tanpa atribusi package. Patch hanya menambahkan fitur
ke salinan lokal `adapters/registry.json` dan menghitung ulang
`feature_fingerprint`. Repositori upstream dan byte adapter tidak diubah.
Detail ada di [`analysis/flutterdec/README.md`](../analysis/flutterdec/README.md).

## 8. Reproduksi

Pipeline ada di [`analysis/flutterdec/`](../analysis/flutterdec/):

- `prepare_registry.py` — menambahkan fitur yang teramati dan menghitung ulang
  fingerprint pada salinan registry.
- `blutter_bridge.sh` — memakai ulang dump Blutter yang sudah ada (`asm/` dan
  `pp.txt`), bukan menjalankan Blutter lagi.
- `augment_top_level.py` — menyalin dump dan memberi owner sintetis pada blok
  `class ::` agar function top-level masuk scope aplikasi.
- `run_app.sh` — menjalankan flutterdec dengan scope `simaster_ugm`, backend
  Blutter, profile `light`, pengecekan snapshot hash, dan batas placeholder
  yang dapat dikonfigurasi.

Run canonical:

```sh
export FLUTTERDEC_BIN=/path/to/flutterdec
export FLUTTERDEC_DATA_DIR=/path/to/patched-data
export FLUTTERDEC_ADAPTER_STORE=/path/to/adapter-store
export INPUT_APK=/path/to/config.arm64_v8a.apk
export OUT_DIR=/path/to/output-canonical
export BLUTTER_DUMP=/path/to/blutter-dump

analysis/flutterdec/run_app.sh --emit-asm
```

Run augmented:

```sh
python3 analysis/flutterdec/augment_top_level.py \
  /path/to/blutter-dump /path/to/blutter-augmented \
  --package simaster_ugm \
  --manifest /path/to/augmentation.json

export BLUTTER_DUMP=/path/to/blutter-augmented
export OUT_DIR=/path/to/output-augmented
export MAX_PLACEHOLDER_IFS=15

analysis/flutterdec/run_app.sh --emit-asm
```

`run_app.sh` memakai `MAX_PLACEHOLDER_IFS=12` secara default untuk dump
canonical. Run augmented memakai 15 karena tambahan 168 function membawa tiga
placeholder `if` baru, ketiganya dari `ColorOpacity.withCustomOpacity` (ID 23202).
Python adapter memerlukan Python 3.9 atau lebih baru.
Jangan menjalankan pipeline pada binary lain tanpa memeriksa ulang snapshot hash,
registry, dan provenance input.

## 9. Batas interpretasi

- Ini **pseudo-Dart**, bukan source Dart asli; komentar, nama lokal, dan sebagian
  struktur tipe hilang akibat AOT.
- Nama function heuristic; tidak ada exact symbol pada run ini.
- Owner `__TopLevel_*` adalah workaround analisis, bukan class Dart asli.
- Crosswalk `poolOff[N]` → `[pp+0xN]` bersifat inferensial; satu referensi pada
  `scanEntrant` tidak menemukan entri. Jangan menganggap pemetaan ini kontrak
  tool atau stabil antar-build.
- 90 penanda jalur kompleks dihilangkan dan 1.943 instruksi tidak terangkat;
  function dengan banyak omitted path tidak boleh dijadikan dasar klaim akhir.
- 3.990 call bersifat indirect; target call tidak selalu diketahui.
- 2.796/2.796 adalah cakupan alamat function aplikasi, bukan cakupan seluruh
  29.989 function AOT atau bukti pemulihan semantik penuh.
- Registry patch dan augmentasi owner adalah workaround lokal untuk alpha tool,
  bukan kontribusi upstream dan bukan bukti bahwa record tersebut sudah
  diverifikasi vendor.
- Alias Dart `3.12.1` berasal dari record registry/r2flutter offsets dan ditandai
  `unverified`; manifest Blutter mencatat 3.12.2. Jangan memakai alias ini sebagai
  bukti versi SDK independen.
- Tidak ada eksekusi aplikasi, instrumentasi, atau request backend. Semua klaim
  server dan runtime tetap memerlukan staging berizin.

## 10. Langkah berikutnya

1. Tindak lanjuti evaluasi backend `r2flutter` yang sudah dijalankan pada
   snapshot ini; lihat
   [`R2FLUTTER-BACKEND-EVALUATION.md`](R2FLUTTER-BACKEND-EVALUATION.md).
   Fokus pada 48 header dengan batas +0x18, 9 slot pool residual, dan 23
   perbedaan atribusi `_enumToString`.
2. Buat crosswalk alamat untuk function OAuth dan `doscanent` antara flutterdec,
   Ghidra, dan assembly, lalu gunakan Ghidra/assembly untuk keputusan
   control-flow final.
3. Lanjutkan triase full-binary Ghidra: 953 function Ghidra-only, 281 body-size
   mismatch, 50 indirect jump table, dan VM snapshot yang belum dipetakan.
4. Jalankan validasi staging OAuth/API hanya setelah input uji dan izin tersedia;
   jangan memakai produksi.
5. Pertahankan augmentasi owner sebagai alat diagnosis lokal; jangan mengklaim
   nama sintetis sebagai struktur source.

## 11. Artefak

| Artefak | Lokasi |
|---|---|
| Output canonical (lokal) | `/var/smster/work/flutterdec-2026-10-27/app-simaster_ugm/` |
| Output augmented (lokal) | `/var/smster/work/flutterdec-2026-10-28/app-simaster_ugm-toplevel/` |
| Dump Blutter augmented (lokal) | `/var/smster/work/flutterdec-2026-10-28/blutter-augmented/` |
| Manifest augmentasi (lokal) | `/var/smster/work/flutterdec-2026-10-28/blutter-augmentation.json` |
| Excerpt terpilih | [`recovered/flutterdec/`](../recovered/flutterdec/) |
| Quality JSON | [`flutterdec-quality.json`](flutterdec-quality.json) |
| Pipeline | [`analysis/flutterdec/`](../analysis/flutterdec/) |
| Batch Ghidra app-level | [`GHIDRA-APP-DECOMPILE.md`](GHIDRA-APP-DECOMPILE.md) |

Output lengkap tidak dimasukkan ke Git; hanya excerpt yang ditinjau yang
disimpan. File APK, DEX, `.so`, dan database Ghidra tetap berada di luar repo.

## 12. Evaluasi backend r2flutter

Backend `r2flutter` 0.5.1 diuji pada snapshot yang sama sebagai pembanding
independen. Ringkasnya:

- 42.809 entri instruction table, 9.888 record class, dan 67.508 slot
  ObjectPool yang direferensikan string berhasil dibaca.
- 2.748/2.796 header function aplikasi Blutter memiliki alamat start yang sama
  persis; 48 header sisanya mulai 0x18 byte setelah entry `r2flutter` dan
  seluruhnya berupa thunk `dyn:` atau getter. Ukuran body cocok pada
  2.747/2.748 start yang sama.
- Pada 1.160 header yang dapat diparse menjadi class + metode, nama metode cocok
  100% setelah normalisasi konvensi; nama owner cocok 98,02%, dengan 23 sisa
  perbedaan `_enumToString` yang merupakan atribusi Blutter.
- ObjectPool tervalidasi: 67.048/67.440 slot identik byte-per-byte (99,42%),
  dan 67.431/67.440 (99,99%) setelah normalisasi escaping punctuation Blutter.
  Enam puluh delapan slot yang tidak muncul sebagai baris `String:` di
  `pp.txt` semuanya dirender Blutter sebagai `UnlinkedCall: String:`.

Keterbatasan utama: tidak ada atribusi library/package, sehingga
`--function-scope app` menghasilkan 0 function; tidak ada nama superclass pada
9.888 record class; dan pseudo-Dart fokus memerlukan ambang gate eksploratif
karena denominator disassembly adalah seluruh 42.809 function. Gunakan
`--function-scope all` + `--focus <prefix-nama-lengkap>`, bukan substring.

Enam excerpt fokus ada di [`recovered/r2flutter/`](../recovered/r2flutter/).
Metrik lengkap, perbandingan nama/pool, dan perintah reproduksi ada di
[`R2FLUTTER-BACKEND-EVALUATION.md`](R2FLUTTER-BACKEND-EVALUATION.md).
