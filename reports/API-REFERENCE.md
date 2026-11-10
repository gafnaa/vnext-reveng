# Referensi API Simaster UGM (draf analisis statis APK 1.11.1)

- **Target:** `id.ac.ugm.student.vnext.simaster` 1.11.1 (code 65)
- **Sumber:** Blutter/ASM + Ghidra + flutterdec atas `libapp.so` ARM64; `analysis-results.zip` (artefak privat).
- **Sifat:** referensi kontrak API sebagaimana dibangun oleh klien. **Tidak ada request yang dikirim** ke server mana pun; semua nilai berstatus **kandidat** sampai divalidasi pada staging berizin. Laporan ini *bukan* dokumentasi resmi UGM.
- **Redaksi:** tidak memuat `client_secret`, token, atau data pengguna. Nilai identitas non-rahasia (client ID, host) mengikuti praktik [`OAUTH-DEEP-DIVE.md`](OAUTH-DEEP-DIVE.md).

> **Peringatan:** dokumen ini memetakan permukaan API untuk keperluan audit dan disclosure. Jangan memakainya untuk memanggil endpoint produksi UGM tanpa izin tertulis. Validasi apa pun harus lewat staging, akun sintetis, dan audit log ([API-AUTH-STAGING-TEST-PLAN.md](API-AUTH-STAGING-TEST-PLAN.md), [OAUTH-STAGING-TEST-PLAN.md](OAUTH-STAGING-TEST-PLAN.md)).

## 1. Apakah ada API "publik"?

Jawaban singkat dari bukti statis: **tidak ada endpoint REST data yang anonim** — setiap klien HTTP di aplikasi selalu melampirkan header `Authorization: Bearer ...`, termasuk saat belum login (karena header dibangun dari interpolasi `"Bearer " + token`, token kosong tetap menghasilkan `Bearer `). Yang berstatus **tanpa sesi** dan **tanpa password UGM** hanya:

| Permukaan | Endpoint | Login aplikasi? | Password UGM? | Catatan |
|---|---|---|---|---|
| OAuth authorize | `GET /oauth/authorize` | ✅ tidak | ✅ tidak | Publik *by design*; otentikasi terjadi di halaman SSO di browser |
| Banner intro (splash) | `GET /vnext/v1/banners/get_intro?banner_app=1` | ✅ dipanggil **sebelum** login (splash) | ✅ tidak | Header menjadi `Bearer ` kosong bila belum login |
| ToS banner | `GET /vnext/v1/banners/get_dynamic?banner_key=tosparent&banner_app=1` | ⚠️ jalur `tos_service.getToS` | ✅ tidak | Tidak ada pemeriksaan sesi di caller; konsumsi pre-login perlu konfirmasi capture |
| GPS shuttle (WebSocket) | `wss://armada.smartcampus.ugm.ac.id/gps/ws?room=room2` | ✅ tidak | ✅ tidak | Koneksi dibentuk dari URI saja; **tidak ada argumen headers/token** di call site |
| Presensi legacy | `POST /presensivnext/api/signin` | ✅ tidak | ❌ butuh password **turunan** | Kandidat F-01: password dapat dihitung offline dari username + tanggal |
| OAuth token | `POST /oauth/token` | ✅ tidak | ✅ tidak | Butuh `code` valid + client secret tertanam |

Semua sisanya (gateway micro-service, REST `vnext/v1/*`, layanan web `service_login_vnext`/`get_menu_vnext`) memakai token OAuth; bukan "publik", dan status otorisasi servernya juga belum terbukti.

## 2. Host dan lingkungan

```text
Aplikasi
├── oauth.simaster.ugm.ac.id   — OAuth authorize/token (production)
├── api.simaster.ugm.ac.id     — gateway micro-service + REST /vnext/v1
├── simaster.ugm.ac.id         — layanan web (service_login_vnext, get_menu_vnext,
│                                 presensivnext, webview /services/simaster)
└── armada.smartcampus.ugm.ac.id — GPS shuttle (WSS realtime + halaman web /gps/)
```

Base URL dipilih per flavor (`flavors.dart`):

| Flavor base | Nilai |
|---|---|
| production | `https://api.simaster.ugm.ac.id/` |
| checking | `https://api.checking.ugm.ac.id/` |
| preview | `https://api.preview.ugm.ac.id/` |
| dev (juga tertanam di binary production; kandidat F-04) | `https://api.dev.ugm.ac.id/` |

`BaseNetworkingV2` default base bila tidak dioverride: `https://api.simaster.ugm.ac.id/vnext/v1/` — sebagian service memanggilnya dengan `{baseUrl: F::baseUrl()}` + path literal `vnext/v1/...`.

## 3. Konvensi umum

### 3.1 Empat stack klien

| Stack | File | Dipakai oleh | Body default | Token |
|---|---|---|---|---|
| BaseNetworking | `utils.dart` (V1) | `/staff`, gateway student/staff | `FormData` `json1` + `json` (base64url) | `getValidAccessToken` |
| BaseNetworkingV2 | `utils.dart` | `doscanent`, vehicles/parking (`get/put/delete`) | `FormData.fromMap` (`application/form-data`) | `access_token` langsung + interceptor `_onRequestToken` |
| APIService (madzab) | `base_networking_madzab_baru.dart` | splash/ToS/banner, transgama, feeds, parents, `simaster_core` | JSON (`application/json`) + `headerMultipart` bila FormData | `access_token`; **401 → `refreshOAuth` + retry 1x** |
| APIService (v3) | `base_networking_v3.dart` | checkpoint (`apiProvider2`) | JSON | `access_token` |

### 3.2 Envelope madzab/v3

Respons dibungkus oleh parser `AuthResponse<X0>`:

```json
{"response": <payload>, "metadata": {"message": "...", "status": "..."}}
```

Pesan error diekstrak regex `(?:(?:message|error|detail)\s*:\s*([^,}]+))` dari body.

### 3.3 Header

| Header | Nilai | Stack |
|---|---|---|
| `Authorization` | `Bearer <token>` — tetap terkirim (dengan nilai kosong) bila token tidak ada | semua |
| `Content-Type` | `application/json;charset=UTF-8` (V1, dengan body FormData — mismatch statis) / `application/json` (madzab) / `multipart/form-data` (madzab multipart, `service_login_vnext`) / `application/form-data` (V2) | — |
| `Charset` | `utf-8` | V1, V2 |
| `accept` atau `Accept` | `application/json` | semua |
| `UGMFWSERVICE` | `1` | V1 dan `service_login_vnext`; **tidak** ada di V2 (`doscanent`) |

### 3.4 Encoding body V1

`BaseNetworking` membungkus payload JSON ke `FormData` dengan dua field:

```text
json1 = JSON mentah
json  = base64url(JSON UTF-8)   # base64 standar, lalu + → . , / → _ , = → -
```

Contoh (F-05, dibentuk dengan interpolasi string, bukan `jsonEncode`):

```json
{"micro":"staff","service":"get_simaster_atribut_by_username","query":[],"param":[[["<username>","8"]]]}
```

### 3.5 Siklus token

- `access_token`/`refresh_token` di SharedPreferences biasa (kandidat F-03).
- Madzab `apiProvider`: pada respons HTTP **401** (dilihat sebagai literal `0x322` di ASM karena encoding Smi), dipanggil `OauthGlobalController.refreshOAuth` dan request **diulang satu kali** (`isRetryCall`). Kondisi gabungan dengan pemeriksaan body key `token` perlu diverifikasi per build.
- BaseNetworkingV2: `getHeaders` membaca `access_token` langsung, sementara interceptor `_onRequestToken` memakai `getValidAccessToken`; urutan/penimpaan header final belum teramati di wire.

## 4. Autentikasi

### 4.1 OAuth production

| Item | Nilai |
|---|---|
| Authorization endpoint | `https://oauth.simaster.ugm.ac.id/oauth/authorize` |
| Token endpoint | `https://oauth.simaster.ugm.ac.id/oauth/token` |
| Redirect URI | `id.ac.ugm.student.vnext.simaster://oauth2` (custom scheme, `contains` check) |
| Client ID | `e6abd4e380a5462e83873fe22ab8c219yVaU` (identitas publik; terekstrak dari APK) |
| Client secret | tertanam; **tidak dipublikasikan di repo** (artefak privat) |
| PKCE / `state` | ❌ tidak ada (kandidat F-02) |
| Scope production | `user.read`, `user.read-write-update`, `userDetail.read`, `student`, `vehicle.read`, `mygate.read-write`, `parent.read`, `parent.read-write-update`, `transgama.read`, `student.read`, `student.niu.read`, `student.read-write-update` |

**Authorize (GET, dibuka di browser/webview):**

```text
GET /oauth/authorize?response_type=code
        &client_id=e6abd4e380a5462e83873fe22ab8c219yVaU
        &redirect_uri=id.ac.ugm.student.vnext.simaster://oauth2
        &scope=<scope dijabung %20>
```

**Token (POST, form-urlencoded):**

```text
POST /oauth/token
Authorization: Basic base64(client_id:client_secret)

grant_type=authorization_code
code=<code>
redirect_uri=<redirect>
client_id=<client_id>
client_secret=<embedded secret>   # dikirim di Basic dan body sekaligus
```

Gagal non-200 pada token exchange menyetel key Crashlytics `endpoint`, `method`, `status_code`, `request_headers`, `request_body`, `response_body` tanpa redaksi (kandidat F-02.4).

### 4.2 Presensi legacy (F-01)

`POST /presensivnext/api/signin` memakai `Authorization: Basic <client_id:client_secret>` dan password yang **diturunkan lokal**:

```text
plaintext = "*_" + username + SALT + "YYYY-MM-DD" + "_#"
password  = rangkaian substring/replace atas base64(plaintext)
            (urutan: (66,160) (43,132) (26,86) (0,52) (80,end), dibaca terbalik;
             "+"→"." , "/"→"_" , "="→"-")
```

Model lengkap + implementasi referensi: [`presensi_credential_model.py`](../scripts/presensi_credential_model.py), contoh model: [`presensi-credential-model.example.json`](presensi-credential-model.example.json). Rangkaian substring menuntut base64 ≥ 160 karakter ⇒ syarat username ± 57 karakter; **temuannya** adalah kredensial presensi yang dapat dihitung tanpa password UGM, bukan bug pada model. Respons yang dipakai klien: field `token` → `Bearer` untuk `send_peserta`.

## 5. Gateway micro-service (`api.simaster.ugm.ac.id`)

Semua POST dan memakai Bearer OAuth; jalur V1 menambah `UGMFWSERVICE: 1`, sedangkan `doscanent` (V2) tidak.

### 5.1 `POST /staff` — lookup atribut akun (F-05)

- Body: `{"micro":"staff","service":"get_simaster_atribut_by_username","query":[],"param":[[["<username>","8"]]]}` (interpolasi string — tidak aman karakter khusus).
- Respons: klien **menganggap status 400 sebagai kontrak baca** field `res`; `res` kosong atau `is_active == "0"` ⇒ akun non-aktif; aktif ⇒ `user_tipe_nomor`.
- Status non-400 dipetakan ke `DioException` dengan nilai error literal `"401"`.

### 5.2 `POST /v1/student/micro/services` — gateway student

Body selalu `{"micro":"student","service":"<label>","query":<...>,"param":<...>}`. Katalog label yang teramati (29; detail caller: [FEATURE-MAP.md](FEATURE-MAP.md)):

| # | Label service | Caller utama | Area |
|---:|---|---|---|
| 1 | `get_agenda_kehadiran_rekap_student` | `study_schedule_service.getStudyAttendanceRecapAgenda` | Rekap kehadiran |
| 2 | `get_agenda_kehadiran_rinci_student` | `study_schedule_service.getStudyAttendanceDetailAgenda` | Detail kehadiran |
| 3 | `get_banner_student` | `banner_service.getBanner` | Banner |
| 4 | `get_berita_list_student` | `news_service_v2.searchNews` | Berita |
| 5 | `get_jadwal_anda_agenda_student` | `schedule_network_impl.checkAgendaStudent` | Agenda jadwal |
| 6 | `get_jadwal_anda_date_student` | `schedule_network_impl.getSchedules` | Jadwal per tanggal |
| 7 | `get_jadwal_anda_now_student` | `schedule_network_impl.getScheduleNowHome` | Jadwal saat ini |
| 8 | `get_jadwal_anda_studi_student` | `schedule_network_impl.checkStudiStudent` | Jadwal studi |
| 9 | `get_konfirmasi_qr_student` | `attendance_network_impl.getConfirmationQRStudent` | Konfirmasi QR |
| 10 | `get_riwayat_keaktifan_mhs` | `history_registration_service.getAllActivityHistory` | Riwayat keaktifan |
| 11 | `get_riwayat_pembayaran_mhs` | `history_registration_service.getAllPaymentHistory` | Riwayat pembayaran |
| 12 | `get_riwayat_permohonan_mhs` | `history_registration_service.getAllRequestHistory` | Riwayat permohonan |
| 13 | `get_semester_student` | `schedule_network_impl`, `exam_schedule_service`, `study_result_service` | Semester |
| 14 | `get_student_beasiswa_progres_ajuan_by_niu` | `history_scholarhsip_service.findAllHistoryScholarship` | Beasiswa |
| 15 | `get_student_beasiswa_tawar_by_tahun` | `scholarship_service.findAllScholarship(WithFilter)` | Beasiswa |
| 16 | `get_student_jadwal_ujian_by_niu` | `exam_schedule_service`, `study_schedule_service` | Jadwal ujian |
| 17 | `get_student_krs_by_niu_semester` | `study_result_service.findStudyResult` | KRS |
| 18 | `get_student_oss_detail_by_id` | `oss_services.findDocumentDetails` | OSS |
| 19 | `get_student_oss_list_by_niu` | `oss_services.findAllDocuments` | OSS |
| 20 | `get_student_pengumuman_by_niu` | `home_service`, `notification_service` | Pengumuman |
| 21 | `get_student_profil_by_niu` | `user_service.getProfile` | Profil |
| 22 | `get_student_sks__semester_by_niu` | `dashboard_service`, `study_result_service` | SKS |
| 23 | `get_studi_jadwal_periode` | `study_schedule_service.getPeriodSchedule` | Jadwal |
| 24 | `get_studi_kehadiran_rekap` | `study_schedule_service.getStudyAttendanceRecap` | Kehadiran |
| 25 | `get_studi_kehadiran_rinci` | `study_schedule_service.getStudyAttendanceDetail` | Kehadiran |
| 26 | `get_studi_krs` | `study_plan_services`, `study_schedule_service` | KRS |
| 27 | `get_studi_max_sks` | `study_result_service.getStudiMaxSks` | SKS |
| 28 | `get_periode` | (label literal di ASM; caller belum dipetakan) | Periode |
| 29 | `presensi_status` | (literal tabel jadwal; bukan label service terkonfirmasi) | kehadiran |

Catatan #28–29: string `"get_periode"` dan `"presensi_status"` teramati di pool ASM; kedudukannya (label service vs key model) belum pasti. `presensi_status` muncul berdekatan dengan key model (`is_hitung`, `ke`, `kode`, `mulai`) sehingga lebih mungkin key model jadwal.

Beberapa caller membandingkan **status 400** sebelum membaca `res` — pola yang sama dengan F-05; tidak boleh digeneralisasi ke semua label tanpa capture.

### 5.3 `POST /v1/staff/micro/services` — gateway staff

| Item | Nilai |
|---|---|
| Label terdokumentasi | `get_staff_profil_by_staff_id` (`user_service.getProfileByUserNumber`) |
| Body | `micro=staff`, `service=<label>`, `query=[]`, `param` berupa ID staff |
| Respons | membaca `res` setelah status 400; dipetakan ke `DosenProfilModel` |
| Risiko | token mahasiswa belum terbukti diterima; scope production tidak memuat `staff` |

### 5.4 `POST /v1/staff/micro/doscanent` — scan entrant (F-06)

Dipilih saat panjang QR **> 37** karakter. V2 form-data, header Bearer tanpa `UGMFWSERVICE`:

| Field | Sumber |
|---|---|
| `code` | isi QR |
| `latitudeGps` / `longitudeGps` | GPS perangkat |
| `radius` | `"10"` hardcoded |
| `userTipeNomor` | tipe pengguna; fallback `"8"` |
| `identitasId` | dari data pengguna (dari client) |
| `username` | dari data pengguna (dari client) |
| `NamaLengkap` | dari data pengguna; fallback `"-"` |

Data source membuang body respons; kontrak server-side (cek role, idempotency, identitas body dipercaya atau tidak) **belum diketahui** — semua kandidat F-06.

## 6. REST langsung `vnext/v1/*` (temuan tambahan di luar gateway)

Keluarga endpoint ini tidak dieksplorasi penuh pada [`API-ENDPOINT-INVENTORY.md`](API-ENDPOINT-INVENTORY.md) sebelumnya; berikut hasil pemetaan call-site Blutter. Semua di base `https://api.simaster.ugm.ac.id/`, token Bearer (kadang `Bearer ` kosong bila belum login), kecuali dinyatakan lain.

### 6.1 Kendaraan & parkir (My Gate)

| Method | Path | Query / body | Caller |
|---|---|---|---|
| GET | `/vnext/v1/vehicles` | `limit=20&skip=0` (literal) | `vehicle_service.getAllVehicle` |
| GET | `/vnext/v1/vehicles/<id>` | — | `vehicle_details_service.getVehicleById` |
| GET | `/vnext/v1/vehicles/<id>/users` | — | `vehicle_details_service.getVehicleUserById` |
| DELETE | `/vnext/v1/vehicles/<id>` | — | `deleteVehicle` |
| DELETE | `/vnext/v1/vehicles/<id>/users/<uid>` | — | `deleteVehicleUsers` |
| PUT | `/vnext/v1/vehicles/<id>/users/<uid>` | body `{is_active}` | `changeUserStatus` |
| GET | `/vnext/v1/portal/vehicle/` | `vehicle_plate_number=...&limit=...&skip=...` | `getVehiclePortals` |
| GET | `/vnext/v1/parking-areas` | — (+varian terinterpolasi) | `parking_area_service.getParkingAreas` |
| GET | `/vnext/v1/vehicle/user-rules` | — | `my_gate_form_service.getVehicleUserRules` |

Operasi **DELETE/PUT** memakai header Bearer dari `access_token` langsung; tidak ada konfirmasi otorisasi server per pemilik kendaraan (kandidat baru, belum diberi nomor F).

### 6.2 Transgama (shuttle)

| Method | Path + query | Caller |
|---|---|---|
| GET | `/vnext/v1/transgama/lanes/?show_deleted=false` | `getMasterLanes` |
| GET | `/vnext/v1/transgama/lanes/<id>/haltes` | `getDetailLanesHalte` |
| GET | `/vnext/v1/transgama/lane/<id>/putaran/<...>` | `getPutaran` |
| GET | `/vnext/v1/transgama/rute?halte_awal_id=<id>&halte_akhir_id=<id>` | `getRute` |
| GET | `/vnext/v1/transgama/jadwal/halte?lane_id=<id>&putaran=<n>&jam=<jam>` | `getJadwalHalte` |
| GET | `/vnext/v1/transgama/halte/terdekat?lat=<lat>&lon=<lon>&limit=50&show_all=false` | `getHalteTerdekat` |

### 6.3 Feed, berita, krisis

| Method | Path + query | Caller |
|---|---|---|
| GET | `/vnext/v1/feeds?limit=<n>&unit_id=<id>&is_info=<0|1>` (+header `accept`) | `rsa_service.getNews` / `getServices` |
| GET | `/vnext/v1/feeds` (varian) | `getNewsDetail` |
| GET | `/vnext/v1/feeds/krisis?limit=<n>&unit_id=<id>` | `getEmergencyContacts` |
| GET | `/vnext/v1/news?unit_id=1&limit=7&skip=0` | `home_controller.fetchNews`, `news_service_v2.getAllNews` |
| GET | `/vnext/v1/kontak-krisis` | `crisis_center_service.getCrisisCenterContact` |

### 6.4 Banner / intro / ToS / update

| Method | Path + query | Keterangan |
|---|---|---|
| GET | `/vnext/v1/banners/get_intro?banner_app=1` | dipanggil dari **splash view sebelum login** dijalankan; kandidat endpoint konsumsi pre-auth |
| GET | `/vnext/v1/banners/get_dynamic?banner_key=tosparent&banner_app=1` | jalur `tos_service.getToS` |
| GET | `/vnext/v1/banners/get_dynamic?banner_key=pengumuman_home&banner_app=<n>` | `pop_up_pengumunan` |
| GET | `/vnext/v1/fitur/1/<...>` | cek versi/fitur untuk notifikasi update (`app_update_notif`, key `android`) |

### 6.5 Portal (orang tua), checkpoint, bimbingan

| Method | Path + query | Body | Caller |
|---|---|---|---|
| GET | `/vnext/v1/parents/count_parent_pending/<...>` | — | `parent_service.getCountParentPending` |
| GET | `/vnext/v1/parents/list_parent/<...>` | — | `parent_service.getParents` |
| POST | `/vnext/v1/parents/child/approval` | `{is_approve}` | `parent_service.approveParent` |
| GET | `/vnext/v1/checkpoint/get_active_session/<...>` | — | `checkpoint_service.getActiveCheckpointSession` (v3) |
| POST | `/vnext/v1/checkpoint/checkin/<id>/?lat=<lat>&long=<lon>` | — | `checkInWithQRCode` (v3) |
| POST | `/vnext/v1/checkpoint/checkout/<id>/?lat=<lat>&long=<lon>` | — | `checkOut` (v3) |
| GET/PUT | `/vnext/v1/students/<nomor>/tugas-akhir/bimbingan/<...>` | — | `bimbingan_service._listBimbinganRaw` (PUT dipakai untuk simpan, "Hasil Save Bimbingan Data") |

Jalur `/vnext/v1/students/<...>` menyentuh data bimbingan akademik mahasiswa; risiko akses data lintas mahasiswa bila otorisasi server longgar. Status: **kandidat**.

## 7. Layanan web `simaster.ugm.ac.id`

### 7.1 `POST /service_login_vnext`

- Mendaftarkan/menyinkronkan sesi web vNext dari token aplikasi.
- Body: `FormData` `token`, `deviceID`, `refDevice` (`"1"`), `deviceNama`.
- Header: `UGMFWSERVICE: 1`, `Content-Type: multipart/form-data` (+ Bearer dari `access_token`), via madzab `apiProvider` (`HttpMethod.post`).
- Klien membaca field `token`, `deviceID`, `refDevice`, `deviceNama` sebelum memanggil; asal nilai tiap field perlu konfirmasi capture.

### 7.2 `GET /get_menu_vnext?sesId=<sesId>&groupMenu=<groupMenu>`

- Ambil konfigurasi menu web vNext; konstanta `token`, `sesId`, `groupMenu` juga teramati dipakai di sekitar pemanggilan (`getMenuService response: `).
- Host dibangun dari konstanta global yang sama dengan `service_login_vnext` (static field ASM `0x1874`) — konsisten dengan `simaster.ugm.ac.id`.
- Alur pakai: `service_login_vnext` → dapat `sesId` → `get_menu_vnext` per grup menu.

### 7.3 Presensi legacy

- `POST /presensivnext/api/signin` — Basic client + password turunan (_bagian 4.2_), respon field `token`.
- `POST /presensivnext/api/send_peserta` — Bearer token presensi; `FormData` 10 field:

```text
jenis_id=2, qr_peserta, device_id, username, identitas_id,
user_tipe_nomor, user_nama, lat, lon, tgl_hp   # tgl_hp ISO-8601 perangkat
```

### 7.4 Webview (bukan API)

`https://simaster.ugm.ac.id/services/simaster` (web UI vNext), `https://armada.smartcampus.ugm.ac.id/gps/?from=<...>` (peta transgama), `https://laporkan.ugm.ac.id/` (module lapor — pengiriman laporan lewat UI eksternal), plus tautan toko aplikasi.

## 8. Kanal realtime armada

`ParkingWssService.connect` memanggil `WebSocketChannel.connect(Uri.parse(...))` untuk:

```text
wss://armada.smartcampus.ugm.ac.id/gps/ws?room=room2
```

Negosiasi terlihat memakai URI saja — **tidak ada headers/auth** di call site (kandidat "anonim" satu-satunya di aplikasi, di luar OAuth UI). Reconnect otomatis `_scheduleReconnect` + log `Failed to connect Parking WSS: `. Data yang diterima dipakai untuk posisi shuttle realtime.

## 9. Perilaku API yang perlu diperhatikan auditor

1. **`Bearer ` kosong** — semua stack membangun header dari interpolasi; request pre-login tetap membawa `Authorization: Bearer ` (V2, madzab). Perilaku server tidak diketahui.
2. **Status 400 = jalur sukses baca `res`** (F-05 dan beberapa caller gateway) — jangan baca 4xx sebagai selalu gagal tanpa capture.
3. **`DioException` dengan error literal `"401"`** di F-05 — status HTTP sebenarnya hilang.
4. **401 → refresh + retry 1x** di madzab `apiProvider`.
5. **Mismatch Content-Type vs body** (V1 `application/json` + FormData).
6. **Identitas dari client**: `doscanent` (8 field) dan `send_peserta` (10 field) membawa identitas/GPS dari perangkat.
7. **Log tidak redaksi**: prefix `sso response: ` (F-05), `ini data scanEntrant success: ` (F-06), dan payload Crashlytics token-exchange (F-02.4).
8. **Idempotensi tidak teramati** pada scan/checkin; replay/duplikat belum diuji.
9. Rate limit, skema pagination lengkap, TTL token presensi: **tidak teramati statis** — butuh capture berizin.

## 10. Batas interpretasi

- Semua dari rekonstruksi statis Flutter AOT 1.11.1; string dapat dibangun dinamis dan sebagian control flow belum pulih.
- Label gateway 29 dalam tabel adalah **macro yang teramata**, bukan denominator semua operasi API backend.
- URL REST `vnext/v1/*` adalah tambahan pemetaan ini atas inventaris sebelumnya, dari call-site `BaseNetworkingV2`/madzab/v3; sebagian tail path dibangun interpolasi sehingga format parameternya perlu konfirmasi capture.
- Alamat adalah alamat Blutter; Ghidra = Blutter + `0x100000` (lihat [`GHIDRA-ANALYSIS.md`](GHIDRA-ANALYSIS.md)).
- **Tidak ada klaim server**: dokumen ini tidak membuktikan bahwa endpoint berfungsi, bahwa token mahasiswa diterima, ataupun perilaku otorisasi, rate limit, dan TTL di server.

## 11. Peta bukti (tambahan call-site baru)

| Temuan | Bukti | Lokasi Blutter |
|---|---|---|
| `vnext/v1/vehicles` (list) | literal + map `limit`/`skip` | `vehicle_service.dart` `0x101abb4` |
| DELETE / PUT vehicles | `delete()`/`put()` | `vehicle_details_service.dart` `0x10279f0`, `0x109c17c` |
| transgama paths | literal per fungsi | `transgama_service.dart` `0xeab364`, `0xeafb0c`, `0x10cafa0`, `0xeaaed8`, `0x11fc960`, `0x11fd654`, `0x11fd980` |
| feeds/krisis/news/kontak | literal + `accept` | `rsa_service.dart` `0x1044bc4`, `0x1047ea0`; `home_controller.dart` `0xe87aac`; `crisis_center_service.dart` `0x11f2984` |
| banners intro/ToS/pengumuman | literal | `splash_service.dart` `0xd54d34`; `tos_service.dart` `0x11fbd88`; `pop_up_pengumunan.dart` `0x11f412c` |
| fitur update | literal + key `android` | `app_update_notif.dart` `0xf80564` |
| parents | literal segmen | `parent_service.dart` `0xe867a0`, `0x103dce4`, `0x10a8dc8` |
| checkpoint | literal + v3 `apiProvider2` | `checkpoint_service.dart` `0xbab428`, `0xd79dec`, `0x106e510` |
| bimbingan | literal segmen + PUT | `bimbingan_service.dart` `0x9e9ce0`, `0xe65e44`, `0xe66910` |
| `service_login_vnext` | FormData + `UGMFWSERVICE` | `simaster_core_service.dart` `0x11fa324`–`0x11fa5b8` |
| `get_menu_vnext` | URL template | `simaster_core_service.dart` `0x11f9e78`–`0x11f9e9c` |
| WSS GPS tanpa headers | `Uri.parse` tanpa headers arg | `parking_wss_service.dart` `0x11e90dc`–`0x11e90f4` |
| Madzab 401 refresh+retry | `cmp #0x322` (Smi 401) + `refreshOAuth` | `base_networking_madzab_baru.dart` `0x91b664`, `0x91b6c0` |
| Empty-Bearer quirk | interpolasi `"Bearer "` | `base_networking_madzab_baru.dart` `0x91bdc8`; `utils.dart` (V2) `0xd513c4` |
| `HttpMethod` enum mapping | `objs.txt`: `12bd4d1`=get, `12bd4f1`=post, `12bd511`=get, `12bd531`=post, `12bd551`=put | `blutter-output/objs.txt` |

## 12. Referensi

- [Inventaris endpoint dan operasi gateway](API-ENDPOINT-INVENTORY.md) — 8 URL production + kredensial + matriks risiko (dokumen induk dari sesi sebelumnya; dokumen ini memperluasnya).
- [API authorization deep dive](API-AUTH-DEEP-DIVE.md) — F-05/F-06, envelope V1/V2, koreksi token V2.
- [OAuth deep dive](OAUTH-DEEP-DIVE.md) — authorize/token, scope, redirect, F-02.
- [Temuan keamanan statis](SECURITY-FINDINGS.md) — F-01–F-06.
- [Feature map](FEATURE-MAP.md) — route UI, middleware, 29 label + caller lengkap.
- [Model kredensial presensi](../scripts/presensi_credential_model.py) — derivasi password presensi (statis).
- [Rencana uji staging](API-AUTH-STAGING-TEST-PLAN.md) — matriks A-01–A-13. **Jangan dieksekusi di production.**
