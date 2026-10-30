# Reseed body-24 Ghidra — 42 function serialisasi model

- **Status:** 42/42 function berhasil di-reseed ke batas `size` Blutter; 42/42 pseudocode bersih; 17.692 byte ekor masuk cakupan.
- **Target:** `libapp.so` ARM64, Simaster Student vNEXT 1.11.1 (code 65).
- **SHA-256:** `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290`.
- **Snapshot hash:** `ace654289f5abc240509fc941453ebc5`.
- **Sifat bukti:** pembacaan byte binary, batas function Blutter, disassembly terbatas Ghidra, dan pseudocode Ghidra; bukan source Dart asli dan bukan observasi runtime.
- **Tanggal:** 2026-10-30.
- **Data pendamping:** [`ghidra-body24-reseed.json`](ghidra-body24-reseed.json).

Laporan ini menindaklanjuti §4.2 [`GHIDRA-FULL-TRIAGE.md`](GHIDRA-FULL-TRIAGE.md): 42 function aplikasi hanya terdisassembly 24 byte pertama, sehingga 17.692 byte ekor tidak dimiliki function mana pun. Reseed memakai batas `size` Blutter penuh, lalu mendecompile ulang keempat puluh dua function tersebut.

## 1. Ringkasan hasil

| Metrik | Sebelum reseed | Setelah reseed |
|---|---:|---:|
| Function target | 42 | 42 |
| Body Ghidra total | 1.008 byte | 18.700 byte |
| Ekor yang dipulihkan | 0 | 17.692 byte |
| Body sama dengan `size` Blutter | 0/42 | 42/42 |
| Pseudocode bersih | 42/42 (hanya prolog) | 42/42 (body penuh) |
| Overlap dengan function lain | 0 | 0 |
| Gagal decompile | 0 | 0 |
| Body-size mismatch paket aplikasi | 281 | 239 |
| Cakupan rentang aplikasi | 1.451.716 / 1.508.476 (96,24%) | 1.469.408 / 1.508.476 (97,41%) |
| Byte rentang aplikasi tak tercakup | 56.760 (3,76%) | 39.068 (2,59%) |
| Cakupan `.text` | 2.288.353 / 12.782.208 (17,90%) | 2.306.045 / 12.782.208 (18,04%) |
| Range body disjoint (eksak) | 1.575 | 1.547 |

Sisa 39.068 byte terdiri dari 39.044 byte celah internal 191 function multi-range dan 24 byte kasus tunggal `0x1020e00`. Tidak ada lagi ekor body-24 yang tak tercakup.

## 2. Mengapa body tetap 24 byte

Pada percobaan pertama, script hanya memanggil `clearListing(start, end)`, lalu `DisassembleCommand` dan `createFunction`. Disassembly mengembalikan `true`, tetapi `getFunctionAt(start)` masih mengembalikan objek function lama dengan body 24 byte; `createFunction` tidak dijalankan karena function sudah ada. Hasilnya `body_after` tetap 1.008 byte.

Script final menghapus function lama secara eksplisit sebelum membersihkan listing:

```text
removeFunction(functionAtStart)
clearListing(start, end)
DisassembleCommand(start, restrictedRange, followFlow=true)
createFunction(start, name)
```

Setelah itu `body_after` menjadi 18.700 byte, tepat sama dengan jumlah `size` Blutter keempat puluh dua function. Ini menjelaskan mengapa reseed harus menghapus definisi function, bukan hanya code unit.

## 3. Metode

1. Ambil 42 header aplikasi dari `blutter-app-functions.tsv` yang memiliki body Ghidra tepat 24 byte dan `size` Blutter > 24.
2. Untuk setiap target, periksa apakah ada function lain yang beririsan dengan `[start, start + size)`. Tidak ada satu pun.
3. Hapus function di `start`, bersihkan listing pada range tersebut, lakukan disassembly terbatas pada range, lalu buat function baru dengan nama yang sama.
4. Decompile dengan `DecompInterface` (timeout 120 detik), tulis pseudocode per function, dan catat `body_bytes` sebelum/sesudah, jumlah range, status, serta hasil disassembly.
5. Ekspor seluruh body range aktual dengan `ExportFunctionRanges.java`, lalu hitung union untuk verifikasi cakupan.

Hasil: 42 function di-reseed, 0 overlap, 0 gagal, 42 pseudocode bersih. Seluruh function menjadi satu range kontigu dan berakhir tepat di `start + size`.

## 4. Daftar 42 function

Keempat puluh dua function adalah method `ToJson`; 42/42 signature Blutter menunjukkan `ToJson` atau `toJson`. Kolom `Key` adalah jumlah string key JSON yang diekstrak dari body assembly Blutter yang sama. Daftar key lengkap ada di [`ghidra-body24-reseed.json`](ghidra-body24-reseed.json).

| Alamat file | Model | Modul | Byte | Key |
|---|---|---|---:|---:|
| `0x8eba84` | UserModelImpl | `profile` | 464 | 16 |
| `0x9eaf50` | DosenProfilModel | `bimbingan` | 464 | 16 |
| `0xd4ebac` | PresenceConfirmationModelImpl | `attedence` | 188 | 5 |
| `0xd7ba28` | RsaNewsModel | `rsa` | 584 | 21 |
| `0xd7f1a4` | PeriodModelImpl | `exam_schedule` | 176 | 4 |
| `0xe68558` | ExamScheduleModelImpl | `exam_schedule` | 392 | 13 |
| `0xe69370` | StudyKrsModelImpl | `study` | 1.172 | 18 |
| `0xe6af98` | ChartModelImpl | `dashboard` | 224 | 6 |
| `0xe6c5f0` | KrsModelImpl | `study_result` | 272 | 8 |
| `0xe6dad4` | StudyPeriodScheduleModelImpl | `study` | 124 | 2 |
| `0xe742c8` | ScheduleModelImpl | `course_schedule` | 416 | 14 |
| `0xe868c8` | CountParentPendingImpl | `parent` | 124 | 1 |
| `0xe88e40` | BannerModelImpl | `home` | 272 | 8 |
| `0xe8994c` | NotificationModelImpl | `notification` | 200 | 5 |
| `0xeaffb4` | Jalur | `transgama` | 160 | 3 |
| `0x100f760` | HistoryScholarshipModelImpl | `history_scholarship` | 200 | 5 |
| `0x1012780` | NewsModelImpl | `news` | 236 | 7 |
| `0x10173bc` | VehicleUserModelImpl | `my_gate_vehicle_details` | 1.052 | 18 |
| `0x10178a4` | UserAttributeImpl | `my_gate_vehicle_details` | 256 | 5 |
| `0x1017d30` | UserModelImpl | `my_gate_vehicle_details` | 552 | 8 |
| `0x101ae68` | VehicleModelImpl | `my_gate_vehicle` | 1.080 | 20 |
| `0x101dcb4` | VehicleUserRuleModel | `my_gate_form` | 272 | 8 |
| `0x10209b0` | ParkingAreaModel | `my_gate_vehicle` | 640 | 10 |
| `0x1024344` | VehiclePortalModel | `my_gate_vehicle_details` | 344 | 11 |
| `0x1025d28` | VehicleDetailModelImpl | `my_gate_vehicle_details` | 724 | 14 |
| `0x102ea28` | OssModelImpl | `oss` | 292 | 9 |
| `0x1031acc` | OssModelImpl | `oss_v2` | 400 | 5 |
| `0x1034d40` | OssDetailModelImpl | `oss_v2` | 896 | 13 |
| `0x103df78` | ParentUserModelImpl | `parent` | 672 | 9 |
| `0x103eac8` | ParentCombinedModelImpl | `parent` | 988 | 14 |
| `0x1047ba8` | RsaServiceModel | `rsa` | 364 | 12 |
| `0x1048660` | RsaEmergencyModel | `rsa` | 196 | 5 |
| `0x104b66c` | SholarshipModelImpl | `scholarship` | 248 | 7 |
| `0x1060c00` | RecapPresenceAgendaDetailModelImpl | `attedence` | 412 | 14 |
| `0x1061b98` | RecapPresenceAgendaModelImpl | `attedence` | 808 | 12 |
| `0x1063184` | StudyAttendanceDetailModelImpl | `study` | 312 | 10 |
| `0x106427c` | StudyAttendanceRecapModelImpl | `study` | 756 | 10 |
| `0x109230c` | SearchUserModelImpl | `my_gate_form` | 536 | 7 |
| `0x111f000` | ActivityHistoryModelImpl | `history_registration` | 200 | 5 |
| `0x111f2e4` | PaymentHistoryModelImpl | `history_registration` | 440 | 15 |
| `0x111f6a0` | RequestHistoryModelImpl | `history_registration` | 416 | 14 |
| `0x1120e54` | OssDetailModelImpl | `oss` | 176 | 4 |

## 5. Isi serialisasi

Keempat puluh dua function membangun `Map<String, dynamic>` dengan pola yang sama: alokasi array key/value, penulisan key dari ObjectPool, pembacaan field model, lalu `Map._fromLiteral`. Total ada 411 kemunculan key dan 252 key unik.

Key yang paling sering muncul:

| Key | Kemunculan |
|---|---:|
| `id` | 10 |
| `created_time` | 8 |
| `updated_time` | 7 |
| `niu` | 6 |
| `semester` | 5 |
| `created_by` | 5 |
| `updated_by` | 5 |
| `user_nama_lengkap` | 5 |
| `ke` | 4 |
| `type` | 4 |
| `user_tipe_nomor` | 4 |
| `is_active` | 4 |
| `user_email` | 4 |

Contoh pemetaan yang relevan:

- `PresenceConfirmationModelImpl` — `id`, `ke`, `name`, `sesi`, `type`.
- `UserModelImpl` (`profile`) — 16 key, termasuk `stud_nim`, `stud_niu`, `stud_ktm`, `staff_email`, `ipk`, `ips`, `sks_kum`, `sks_sem`.
- `VehicleUserModelImpl` — 18 key, termasuk `user_pribadi_nik`, `user_email`, `user_telepon_no`, `vehicle_plate_number`.
- `ParentCombinedModelImpl` — 14 key, termasuk `parent_nik`, `parent_no_hp`, `parent_email`, `user_pribadi_nik`, `user_telepon_no`.
- `PaymentHistoryModelImpl` — 15 key, termasuk `SPP`, `SPP_BAYAR`, `BOP`, `BOP_BAYAR`, `tanggal_bayar`.
- `StudyKrsModelImpl` — 18 key akademik, termasuk `matakuliah_kode`, `nilai_kode`, `nilai_bobot`, `sks`, `semester`.

Tidak ada key yang mengandung `token`, `secret`, `password`, `credential`, `session`, `cookie`, `otp`, atau `pin` pada 411 key ini. Ini hasil negatif untuk 42 function, bukan klaim untuk seluruh AOT.

## 6. Verifikasi

- **Batas:** 42/42 `body_after` sama dengan `size` Blutter; 0 short body; 0 overlap; 0 gagal.
- **Key vs store:** pada 42/42 function, jumlah string key yang diekstrak sama dengan jumlah `StoreField`/`ArrayStore ... = r16` di body Blutter. Ini mengikat key ke instruksi penulisan map, bukan sekadar komentar lepas.
- **Akhir body:** empat byte terakhir pada 42/42 function adalah branch ke jalur cold stack-overflow di dalam body, bukan padding. Karena itu `size` Blutter memang mencakup cold path.
- **Cakupan eksak:** union body range aktual menghasilkan 2.306.045 byte di `.text` dan 1.469.408 byte di rentang aplikasi. Angka ini sama dengan perhitungan hole independen setelah 17.692 byte ekor ditutup.

Catatan koreksi metrik: angka `disjoint_body_ranges` 1.456 di laporan triase sebelumnya berasal dari aproksimasi body kontigu (`body_bytes`). Ekspor body range aktual memberi 1.575 range pada baseline dan 1.547 setelah reseed. Byte coverage tidak berubah; yang berubah hanya jumlah range.

## 7. Batas interpretasi

- Ini pseudocode Ghidra, bukan source Dart asli. Nama field berasal dari komentar assembly Blutter pada body yang sama; nilai field tidak dibaca dari runtime.
- Arah serialisasi belum dibuktikan. `ToJson` dapat dipakai untuk request body, cache lokal, log, atau struktur lain. Tidak ada kesimpulan bahwa field tertentu benar-benar dikirim ke server.
- Nama field seperti `user_pribadi_nik`, `parent_nik`, `user_email`, dan `user_telepon_no` menunjukkan permukaan data yang dapat diserialisasi, bukan bukti kebocoran atau kelemahan otorisasi.
- Tidak ada aplikasi yang dijalankan, tidak ada instrumentasi, dan tidak ada request ke server pada pekerjaan ini.
- Reseed ini hanya menutup 42 function aplikasi; 191 function multi-range dan 26.127 header Blutter tanpa function Ghidra tetap menjadi gap.

## 8. Reproduksi

```sh
# 1. Bentuk daftar target dari header aplikasi + inventory Ghidra
python3 - <<'PY'
import csv
inv = {}
for row in csv.DictReader(open('/smster/work/ghidra/function-inventory-app.tsv'), delimiter='\t'):
    inv[int(row['address'], 16) - 0x100000] = row
with open('/smster/work/ghidra/body24-targets.tsv', 'w') as out:
    out.write('address\tsize\tname\n')
    for row in csv.DictReader(open('/smster/work/flutterdec-2026-10-28/blutter-app-functions.tsv'), delimiter='\t'):
        address = int(row['address'], 16)
        size = int(row['size'], 16)
        ghidra = inv.get(address)
        if ghidra and int(ghidra['body_bytes']) == 24 and size > 24:
            out.write('0x%x\t0x%x\t%s\n' % (address, size, ghidra['name']))
PY

# 2. Jalankan reseed pada salinan project Ghidra
JAVA_TOOL_OPTIONS='-Duser.home=/smster/work/ghidra/home -Duser.name=smster -Djava.io.tmpdir=/smster/work/ghidra/tmp' \
XDG_CONFIG_HOME=/smster/work/ghidra/home/.config \
XDG_CACHE_HOME=/smster/work/ghidra/cache \
TMPDIR=/smster/work/ghidra/tmp \
/smster/tools/bin/analyzeHeadless /smster/work/ghidra/projects-body24-2026-10-30 SimasterAOT \
  -process libapp.so -noanalysis \
  -scriptPath /smster/repo/analysis/ghidra \
  -postScript ReseedBody24.java \
  /smster/work/ghidra/body24-targets.tsv \
  /smster/work/ghidra/decompiled-body24-2026-10-30 120

# 3. Ekspor body range aktual dan hitung cakupan eksak
/smster/tools/bin/analyzeHeadless /smster/work/ghidra/projects-body24-2026-10-30 SimasterAOT \
  -process libapp.so -noanalysis \
  -scriptPath /smster/repo/analysis/ghidra \
  -postScript ExportFunctionRanges.java \
  /smster/work/ghidra/function-ranges-reseed.tsv

python3 analysis/ghidra/triage_full_binary.py \
  --blutter-asm /smster/work/blutter-top-level/asm \
  --inventory /smster/work/ghidra/function-inventory-app-reseed.tsv \
  --app-functions /smster/work/flutterdec-2026-10-28/blutter-app-functions.tsv \
  --r2flutter /smster/work/r2flutter-2026-10-29/i.json \
  --function-index /smster/work/ghidra/decompiled-all/SimasterAOT-2026-10-27-audited/function-index.tsv \
  --function-ranges /smster/work/ghidra/function-ranges-reseed.tsv \
  --binary /smster/artifacts/native/libapp.so \
  --output /tmp/ghidra-body24-triage.json
```

Direktori project Ghidra, dump Blutter, dan pseudocode lengkap tetap berada di mesin analisis, bukan di Git. Artefak yang masuk repo hanya ringkasan, daftar key, dan script.
