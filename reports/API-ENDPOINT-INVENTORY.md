# Inventaris endpoint dan operasi gateway — Simaster UGM Student vNEXT

- **Target:** `id.ac.ugm.student.vnext.simaster` 1.11.1 (code 65)
- **Input utama:** `libapp.so` ARM64, SHA-256 `3d199b5d6983eb7f4f3865c32c1c4e017beecb167e2f7ddac37056bb07ee6290`
- **Sifat laporan:** konsolidasi analisis statis AOT/Blutter, Ghidra, dan flutterdec. Tidak ada aplikasi yang dijalankan, tidak ada request yang dikirim, dan tidak ada traffic capture. Semua temuan berstatus **kandidat** sampai diuji pada staging yang berizin.
- **Lingkup:** URL request yang sudah ditemukan dan didokumentasikan, metode, kredensial, envelope, data sensitif yang terlihat, risiko otorisasi, dan bukti alamat.
- **Bukan lingkup:** seluruh permukaan API backend, perilaku server, rate limit, idempotency, dan hasil respons nyata.

> **Peringatan:** jangan menguji endpoint ini ke sistem produksi UGM tanpa izin tertulis. Laporan ini tidak memuat token, secret, salt, kredensial Basic, atau data pengguna. Nilai penuh yang relevan tetap berada di artefak privat [`analysis-results.zip`](../analysis-results.zip).

## Ringkasan eksekutif

Aplikasi memakai tiga bidang jaringan yang berbeda:

```text
Aplikasi
├── OAuth
│   ├── https://oauth.simaster.ugm.ac.id/oauth/authorize
│   └── https://oauth.simaster.ugm.ac.id/oauth/token
├── API gateway — api.simaster.ugm.ac.id
│   ├── BaseNetworking V1
│   │   ├── /staff
│   │   ├── /v1/student/micro/services
│   │   └── /v1/staff/micro/services
│   └── BaseNetworkingV2
│       └── /v1/staff/micro/doscanent
└── Presensi legacy — simaster.ugm.ac.id
    ├── /presensivnext/api/signin
    └── /presensivnext/api/send_peserta
```

Dari bukti yang sudah terdokumentasi, ada **8 URL request production** dan **2 URL OAuth dev** yang juga tertanam di binary. Dua target redirect—custom scheme production dan callback Postman dev—bukan request API, tetapi relevan untuk alur OAuth.

Ada **29 label service unik** dan **36 pasangan caller/method/service**. Label bukan URL terpisah:

- **27 label** adalah operasi gateway student ke `/v1/student/micro/services`;
- **1 label** adalah operasi gateway staff ke `/v1/staff/micro/services`;
- **1 label** adalah lookup langsung ke `/staff`, bukan ke gateway `/v1/staff/micro/services`.

Prioritas analisis tetap pada tiga area: **`doscanent`** (kandidat cross-role/identity tampering), **presensi legacy** (kredensial turunan client), dan **OAuth** (tanpa `state`/PKCE, secret tertanam, redirect custom scheme). Lookup `/staff` tetap **latent** dan belum layak disebut pre-auth.

## Peta cepat endpoint

| Keluarga | URL production | Metode | Kredensial yang terlihat | Envelope | Status statis |
|---|---|---|---|---|---|
| OAuth authorize | `https://oauth.simaster.ugm.ac.id/oauth/authorize` | `GET` (navigasi browser) | `client_id`, `redirect_uri`, `scope`; tanpa `state`/PKCE | Query string | Kandidat F-02 |
| OAuth token | `https://oauth.simaster.ugm.ac.id/oauth/token` | `POST` | Basic `client_id:client_secret` + `client_secret` di body; `code` | Form-urlencoded | Kandidat F-02 |
| Lookup akun | `https://api.simaster.ugm.ac.id/staff` | `POST` | Bearer OAuth + `UGMFWSERVICE: 1` | `FormData` field `json1` + base64url `json` | Latent F-05 |
| Gateway student | `https://api.simaster.ugm.ac.id/v1/student/micro/services` | `POST` | Bearer OAuth + `UGMFWSERVICE: 1` | `FormData` `json1` + `json`; body `micro`/`service`/`query`/`param` | 27 label |
| Gateway staff | `https://api.simaster.ugm.ac.id/v1/staff/micro/services` | `POST` | Bearer OAuth + `UGMFWSERVICE: 1` | `FormData` `json1` + `json`; body `micro`/`service`/`param` | 1 label |
| Scan entrant | `https://api.simaster.ugm.ac.id/v1/staff/micro/doscanent` | `POST` | Bearer OAuth; tanpa `UGMFWSERVICE` | `FormData` delapan field | Kandidat F-06 |
| Signin presensi | `https://simaster.ugm.ac.id/presensivnext/api/signin` | `POST` | Basic client credential + password turunan | `FormData` `username`, `password` | Kandidat F-01 |
| Kirim peserta | `https://simaster.ugm.ac.id/presensivnext/api/send_peserta` | `POST` | Bearer token presensi | `FormData` sepuluh field | Kandidat F-01 |

## Konfigurasi OAuth production dan dev

| Item | Production | Dev/staging yang juga ada di binary |
|---|---|---|
| Authorization endpoint | `https://oauth.simaster.ugm.ac.id/oauth/authorize` | `https://oauth.dev.ugm.ac.id/oauth/authorize` |
| Token endpoint | `https://oauth.simaster.ugm.ac.id/oauth/token` | `https://oauth.dev.ugm.ac.id/oauth/token` |
| Redirect URI | `id.ac.ugm.student.vnext.simaster://oauth2` | `https://oauth.pstmn.io/v1/browser-callback` |
| Scope | 12 scope; 4 di antaranya write; tanpa `staff` | 5–15 scope; dapat memuat `staff`, `pegawai.*`, `tte`, `ldap` |
| Client secret | Tertanam di binary; nilai penuh di artefak privat | Tertanam di binary; nilai penuh di artefak privat |
| PKCE / `state` | Tidak ada | Tidak ada |

Scope production yang terlihat:

```text
user.read
user.read-write-update
userDetail.read
student
vehicle.read
mygate.read-write
parent.read
parent.read-write-update
transgama.read
student.read
student.niu.read
student.read-write-update
```

Keberadaan konfigurasi dev di binary production adalah temuan F-04, bukan bukti bahwa build yang beredar memakai konfigurasi dev. Pemilihan flavor production berasal dari `main_production.dart` dan `configOauth()` cabang production. Nilai penuh client ID/secret, scope dev, dan redirect dev tetap di artefak privat.

## 1. OAuth authorize dan token

### Authorization request

URL production dibentuk dari `response_type=code`, `client_id`, `redirect_uri`, dan `scope` yang digabung dengan `%20`. Tidak ada `state`, `nonce`, `code_challenge`, atau parameter anti-CSRF lain. Handler redirect hanya mengambil `queryParameters['code']`; parameter `error` tidak ditangani secara eksplisit.

Redirect production memakai custom scheme `id.ac.ugm.student.vnext.simaster://oauth2`. Pemeriksaan redirect memakai `contains` terhadap configured redirect, substring `oauth2`, dan substring `login-callback`, bukan exact match. Manifest menandai `MainActivity` exported dengan intent filter custom scheme; ini bukan Android App Link dan tidak memverifikasi kepemilikan domain.

### Token request

Token request memuat:

```text
grant_type=authorization_code
code=<code>
redirect_uri=<configured redirect>
client_id=<client id>
client_secret=<embedded secret>
```

Header juga memuat `Authorization: Basic base64(client_id:client_secret)`. Tidak ada `code_verifier`. Client secret dikirim dua kali—di Basic header dan body—sehingga ekstraksi secret dari APK cukup untuk melengkapi token request jika code diperoleh.

Pada token exchange non-200, cabang production menyetel custom key Crashlytics untuk `endpoint`, `method`, `status_code`, `request_headers`, `request_body`, dan `response_body`. `request_headers`/`request_body` dapat memuat Basic credential, `client_secret`, dan authorization code tanpa redaksi. Ini kandidat F-02.4; belum ada bukti upload aktual ke Crashlytics.

### Risiko dan status

- **Code interception:** custom scheme dapat diperebutkan aplikasi lain; tanpa PKCE, penukar code tidak perlu membuktikan bahwa ia memulai flow.
- **Login CSRF/session swapping:** tanpa `state`, aplikasi tidak dapat membedakan redirect yang ia mulai dari redirect yang disuntikkan.
- **Secret extraction:** client secret tertanam dan dapat diekstrak; ini bukan public-client flow.
- **Token leakage:** access/refresh token disimpan di SharedPreferences biasa; JWT hanya di-decode tanpa verifikasi signature/issuer/audience.
- **Dev configuration:** host, redirect Postman, dan scope tambahan tetap ada di binary.

Status: **kandidat F-02**, belum diuji ke server. Rincian ada di [`OAUTH-DEEP-DIVE.md`](OAUTH-DEEP-DIVE.md).

## 2. Lookup akun `/staff` (F-05)

`AuthNetworkImpl.signIn` membentuk JSON:

```json
{"micro":"staff","service":"get_simaster_atribut_by_username","query":[],"param":[[["<username>","8"]]]}
```

Body dikirim ke `https://api.simaster.ugm.ac.id/staff` dengan `BaseNetworking.post`. Username diinterpolasi ke string JSON, bukan `jsonEncode`, sehingga karakter khusus dapat mengubah envelope. Password divalidasi di form, tetapi tidak dibaca controller dan tidak ada di request.

`BaseNetworking` membungkus body menjadi `FormData` dengan dua field: `json1` (JSON mentah) dan `json` (base64url dari JSON UTF-8). Header yang terlihat adalah Bearer dari `getValidAccessToken`, `Content-Type: application/json;charset=UTF-8`, `Charset: utf-8`, `accept: application/json`, dan `UGMFWSERVICE: 1`. Ada ketidaksesuaian statis: body `FormData` sedangkan header menyatakan JSON; header final di wire harus direkam pada staging.

Respons yang diharapkan justru **status 400**, lalu field `res` dibaca. `res` kosong menghasilkan pesan akun tidak aktif; `is_active == "0"` menghasilkan pesan akun tidak aktif; jika aktif, fungsi mengembalikan `user_tipe_nomor`. Status non-400 masuk ke `DioException` dengan nilai error `"401"`, bukan status HTTP sebenarnya.

Route `/auth` terdaftar, tetapi tidak memiliki pemanggil statis dan tidak ada di allowlist `SessionMiddleware`. Controller memakai Bearer, sehingga F-05 adalah **lookup akun yang latent dan session-gated**, bukan pre-auth atau account takeover. Risiko yang perlu diuji adalah enumerasi akun/status dan pengungkapan tipe pengguna bila route dapat dicapai dengan token valid.

## 3. Gateway student `/v1/student/micro/services`

URL efektifnya adalah `https://api.simaster.ugm.ac.id/v1/student/micro/services`. Pemanggil memakai `BaseNetworking.post` dengan body `micro=student`, `service=<label>`, dan `query` atau `param` sesuai operasi. Contoh yang diperiksa: `getConfirmationQRStudent` membentuk body `{"micro":"student","service":"get_konfirmasi_qr_student","param":...}` dan memanggil path literal `v1/student/micro/services`.

Header mengikuti `BaseNetworking.getHeaders`: Bearer dari `getValidAccessToken`, `Content-Type: application/json;charset=UTF-8`, `Charset: utf-8`, `accept: application/json`, dan `UGMFWSERVICE: 1`. Body dibungkus `FormData` `json1`/`json` seperti jalur `/staff`.

Beberapa caller gateway yang diperiksa membandingkan status respons dengan **400** lalu membaca field `res`. Ini terlihat pada `getConfirmationQRStudent` dan `get_staff_profil_by_staff_id`. Artinya, kontrak “400 sebagai jalur sukses” tidak hanya ada di F-05; namun belum boleh digeneralisasi ke semua 27 label tanpa pemeriksaan per caller dan uji staging.

Data yang terlihat mencakup KRS, nilai/SKS, kehadiran, jadwal, beasiswa, riwayat pembayaran/permohonan, profil, OSS, dan pengumuman. Sensitivitasnya tinggi, tetapi kontrol otorisasi server tidak diketahui. Prefiks `student` dan keberadaan token bukan bukti bahwa server membatasi setiap operasi ke pemilik data.

## 4. Gateway staff `/v1/staff/micro/services`

Satu label gateway staff yang terdokumentasi adalah `get_staff_profil_by_staff_id`, dipanggil oleh `user_service.getProfileByUserNumber`. Body memakai `micro=staff`, `service=get_staff_profil_by_staff_id`, `query=[]`, dan `param` berisi ID staff. Pemanggil memakai `BaseNetworking.post` ke path literal `v1/staff/micro/services`, sehingga URL efektifnya `https://api.simaster.ugm.ac.id/v1/staff/micro/services`.

Respons juga membandingkan status dengan 400 dan membaca `res` sebelum memetakan `DosenProfilModel`. Ini menunjukkan pola envelope yang sama dengan gateway student, tetapi bukan bukti bahwa token mahasiswa diterima untuk micro `staff`.

Risiko utamanya adalah batas peran/scope pada micro staff. Scope OAuth production tidak memuat `staff`, tetapi scope bukan satu-satunya kontrol; server dapat memakai role, audience, atau aturan lain. Status: **kandidat**, belum diuji.

## 5. Scan entrant `/v1/staff/micro/doscanent` (F-06)

`AttendanceNetworkImpl.scanEntrant` memilih jalur ini ketika panjang QR **> 37** karakter; `AttedenceController.scanEntrant` memeriksa panjang yang sama untuk penanganan hasil. Data source membangun `ScanEntrantParam`, lalu memanggil:

```text
POST https://api.simaster.ugm.ac.id/v1/staff/micro/doscanent
```

Path literal adalah `v1/staff/micro/doscanent`; `BaseNetworkingV2.post` dipanggil dengan `baseUrl: F::baseUrl()` yang pada flavor production bernilai `https://api.simaster.ugm.ac.id/`. Jadi URL efektifnya **bukan** `.../vnext/v1/v1/staff/...`, melainkan `.../v1/staff/micro/doscanent`.

Body `ScanEntrantParam.toJson` memuat delapan field:

| Field | Sumber yang terlihat |
|---|---|
| `code` | Isi QR yang dipindai |
| `latitudeGps` | Latitude perangkat |
| `longitudeGps` | Longitude perangkat |
| `radius` | `"10"` hardcoded |
| `userTipeNomor` | Tipe pengguna; fallback `"8"` |
| `identitasId` | ID identitas dari data pengguna |
| `username` | Username dari data pengguna |
| `NamaLengkap` | Nama lengkap; fallback `"-"` |

`BaseNetworkingV2.post` default `contentType = "application/form-data"`, sehingga map dibungkus `FormData.fromMap`. `getHeaders` membaca `access_token` langsung dari SharedPreferences dan menambahkan Bearer, `Content-Type`, `Charset`, dan `accept`. Tidak ada `UGMFWSERVICE`.

`BaseNetworkingV2` juga mendaftarkan `InterceptorsWrapper` dengan `_onRequestToken` (`0xd52bbc`) pada request interceptor. Fungsi itu memanggil `OnboardingController.getValidAccessToken` (`0xd52bf8`) dan menulis `Authorization: Bearer ...` ke request; jika token null, ia menangani `logout_in_progress`/`_handleLogout`. Jadi jalur refresh **ada di interceptor V2**, bukan di `scanEntrant`. `getHeaders` dan `_onRequestToken` sama-sama dapat menulis Authorization; urutan/penimpaan header final perlu direkam pada staging.

Respons sukses dicatat, lalu fungsi mengembalikan `null`; body respons tidak dipertahankan. Pada `AttedenceController.scanEntrant`, hasil `null`/non-Map diarahkan ke `0xd4fae4` (nilai `false`), lalu `tbnz w0, #4` menuju `0xd4fb84` yang mengembalikan `true` karena representasi bool Dart (`false` = `0x30`, `true` = `0x20`). Pemeriksaan `status == "1"` hanya dijalankan bila hasilnya Map, yaitu jalur QR pendek/legacy. `DioException` di catch mengembalikan `false` dan memicu `alert_fail_scan`. Jadi tidak ada bukti statis bahwa respons 2xx jalur panjang menampilkan gagal; keterbatasannya adalah detail respons dibuang sehingga controller tidak dapat membedakan hasil server secara kaya. Risiko retry/duplikasi tetap perlu diuji terpisah, bukan disimpulkan dari UI.

Risiko: cross-role/BFLA bila token mahasiswa diterima, identity/parameter tampering bila server memakai `identitasId`/`username`/`NamaLengkap`/`userTipeNomor` dari body, dan replay/duplikasi bila tidak ada idempotency. Semua masih kandidat.

## 6. Presensi legacy `signin` dan `send_peserta` (F-01)

Kedua endpoint memakai host `simaster.ugm.ac.id` (tanpa prefiks `api`) dan berada di luar gateway `api.simaster.ugm.ac.id`.

### `POST /presensivnext/api/signin`

Request memakai:

- `Authorization: Basic <client_id:client_secret>` dari credential client yang tertanam;
- `FormData` field `username` dan `password`;
- password yang diturunkan secara deterministik dari username, tanggal lokal `YYYY-MM-DD`, salt statis, lalu Base64 dan rangkaian substring/replace.

Urutan derivasi yang terdokumentasi adalah:

```text
"*_" + username + SALT + "YYYY-MM-DD" + "_#"
        → UTF-8 → Base64 standar
        → "+"→"."  "/"→"_"  "="→"-"
        → substring(66,160), (43,132), (26,86), (0,52), (80,end)
        → password = p5 + p4 + p3 + p2 + p1
```

Respons JSON diambil field `token`, lalu dipakai sebagai `Bearer <token>` pada alur presensi berikutnya. Ini bukan token OAuth; alur `doscanent` memakai jalur OAuth terpisah.

### `POST /presensivnext/api/send_peserta`

Request memakai Bearer token presensi dan `FormData` yang terlihat memuat:

```text
jenis_id, qr_peserta, device_id, username, identitas_id,
user_tipe_nomor, user_nama, lat, lon, tgl_hp
```

`jenis_id` bernilai `"2"` dan `tgl_hp` diisi waktu ISO-8601 perangkat. Body membawa identitas, QR, device ID, dan koordinat GPS dari client.

Risiko: pembuatan kredensial presensi tanpa password UGM, penyalahgunaan token presensi, pengiriman PII/GPS, dan ketergantungan pada otorisasi server. Status: **kandidat F-01**, belum diuji.

## Katalog 29 label service

Tabel ini mempertahankan label dan caller yang sudah didokumentasikan di [`FEATURE-MAP.md`](FEATURE-MAP.md). Kolom “Endpoint” menunjukkan bahwa label adalah operasi di dalam body, bukan URL baru.

| # | Micro | Label service | Caller yang terlihat | Area | Endpoint |
|---:|---|---|---|---|---|
| 1 | student | `get_agenda_kehadiran_rekap_student` | `study_schedule_service.getStudyAttendanceRecapAgenda` | Rekap kehadiran | `/v1/student/micro/services` |
| 2 | student | `get_agenda_kehadiran_rinci_student` | `study_schedule_service.getStudyAttendanceDetailAgenda` | Detail kehadiran | `/v1/student/micro/services` |
| 3 | student | `get_banner_student` | `banner_service.getBanner` | Banner | `/v1/student/micro/services` |
| 4 | student | `get_berita_list_student` | `news_service_v2.searchNews` | Berita | `/v1/student/micro/services` |
| 5 | student | `get_jadwal_anda_agenda_student` | `schedule_network_impl.checkAgendaStudent` | Agenda jadwal | `/v1/student/micro/services` |
| 6 | student | `get_jadwal_anda_date_student` | `schedule_network_impl.getSchedules` | Jadwal per tanggal | `/v1/student/micro/services` |
| 7 | student | `get_jadwal_anda_now_student` | `schedule_network_impl.getScheduleNowHome` | Jadwal saat ini | `/v1/student/micro/services` |
| 8 | student | `get_jadwal_anda_studi_student` | `schedule_network_impl.checkStudiStudent` | Jadwal studi | `/v1/student/micro/services` |
| 9 | student | `get_konfirmasi_qr_student` | `attendance_network_impl.getConfirmationQRStudent` | Konfirmasi QR | `/v1/student/micro/services` |
| 10 | student | `get_riwayat_keaktifan_mhs` | `history_registration_service.getAllActivityHistory` | Riwayat keaktifan | `/v1/student/micro/services` |
| 11 | student | `get_riwayat_pembayaran_mhs` | `history_registration_service.getAllPaymentHistory` | Riwayat pembayaran | `/v1/student/micro/services` |
| 12 | student | `get_riwayat_permohonan_mhs` | `history_registration_service.getAllRequestHistory` | Riwayat permohonan | `/v1/student/micro/services` |
| 13 | student | `get_semester_student` | `schedule_network_impl.getNewestPeriod`; `exam_schedule_service.getAllPeriod`; `study_result_service.getAllPeriod` | Semester/periode | `/v1/student/micro/services` |
| 14 | staff | `get_simaster_atribut_by_username` | `auth_network_impl.signIn` | Lookup akun | `/staff` |
| 15 | staff | `get_staff_profil_by_staff_id` | `user_service.getProfileByUserNumber` | Profil staff | `/v1/staff/micro/services` |
| 16 | student | `get_student_beasiswa_progres_ajuan_by_niu` | `history_scholarhsip_service.findAllHistoryScholarship` | Progres beasiswa | `/v1/student/micro/services` |
| 17 | student | `get_student_beasiswa_tawar_by_tahun` | `scholarship_service.findAllScholarship`; `scholarship_service.findAllScholarshipWithFilter` | Tawaran beasiswa | `/v1/student/micro/services` |
| 18 | student | `get_student_jadwal_ujian_by_niu` | `exam_schedule_service.getAllExamSchedule`; `study_schedule_service.getStudyExamSchedule` | Jadwal ujian | `/v1/student/micro/services` |
| 19 | student | `get_student_krs_by_niu_semester` | `study_result_service.findStudyResult` | KRS/hasil studi | `/v1/student/micro/services` |
| 20 | student | `get_student_oss_detail_by_id` | `oss_services.findDocumentDetails` | Detail OSS | `/v1/student/micro/services` |
| 21 | student | `get_student_oss_list_by_niu` | `oss_services.findAllDocuments` | Daftar OSS | `/v1/student/micro/services` |
| 22 | student | `get_student_pengumuman_by_niu` | `home_service.findLatestNotification`; `notification_service.findAllNotification` | Pengumuman/notifikasi | `/v1/student/micro/services` |
| 23 | student | `get_student_profil_by_niu` | `user_service.getProfile` | Profil mahasiswa | `/v1/student/micro/services` |
| 24 | student | `get_student_sks__semester_by_niu` | `dashboard_service.findAllChart`; `study_result_service.findSksSemesterByNiu` | SKS per semester | `/v1/student/micro/services` |
| 25 | student | `get_studi_jadwal_periode` | `study_schedule_service.getPeriodSchedule` | Jadwal periode | `/v1/student/micro/services` |
| 26 | student | `get_studi_kehadiran_rekap` | `study_schedule_service.getStudyAttendanceRecap` | Rekap kehadiran | `/v1/student/micro/services` |
| 27 | student | `get_studi_kehadiran_rinci` | `study_schedule_service.getStudyAttendanceDetail` | Detail kehadiran | `/v1/student/micro/services` |
| 28 | student | `get_studi_krs` | `study_plan_services.getStudyKrs`; `study_schedule_service.getStudyKrs` | KRS | `/v1/student/micro/services` |
| 29 | student | `get_studi_max_sks` | `study_result_service.getStudiMaxSks` | Batas SKS | `/v1/student/micro/services` |

## Envelope, header, dan respons

### BaseNetworking V1

Dipakai oleh `/staff`, gateway student, dan gateway staff.

- Base URL production: `https://api.simaster.ugm.ac.id/`.
- Body selalu dibungkus `FormData` field `json1` (JSON mentah) dan `json` (base64url; Base64 standar lalu `+`→`.`, `/`→`_`, `=`→`-`).
- `getHeaders` memakai `getValidAccessToken`, lalu menambahkan `Authorization: Bearer ...`, `Content-Type: application/json;charset=UTF-8`, `Charset: utf-8`, `accept: application/json`, dan `UGMFWSERVICE: 1`.
- `BaseNetworking` juga memiliki `_onRequestToken` (`0x92057c`) dan `_onErrorToken` (`0x91f660`).
- Beberapa caller membandingkan status dengan 400 dan membaca `res`; ini perlu diverifikasi per operasi.

### BaseNetworkingV2

Dipakai oleh `doscanent`.

- Default base URL bila `baseUrl` tidak diberikan: `https://api.simaster.ugm.ac.id/vnext/v1/`.
- `doscanent` mengoverride dengan `F::baseUrl()` (`https://api.simaster.ugm.ac.id/`) dan path `v1/staff/micro/doscanent`.
- Default `contentType` adalah `application/form-data`; map dibungkus `FormData.fromMap`.
- `getHeaders` membaca `access_token` langsung dari SharedPreferences dan menambahkan Bearer, `Content-Type`, `Charset`, dan `accept`.
- Constructor V2 mendaftarkan `_onRequestToken` yang memanggil `getValidAccessToken` dan menulis Authorization. Ini **mengoreksi** klaim lama bahwa V2 tidak memiliki jalur refresh.
- Tidak ada `UGMFWSERVICE` pada jalur V2.

### Presensi legacy

- `signin` memakai Dio langsung ke host `simaster.ugm.ac.id`, Basic client credential, dan `FormData` `username`/`password`.
- `send_peserta` memakai Bearer token presensi dan `FormData` berisi QR, identitas, device ID, dan GPS.
- Tidak ada gateway `micro`/`service` pada jalur ini.

## Matriks kredensial dan data sensitif

| Endpoint | Kredensial | Data sensitif yang terlihat | Risiko utama | Status |
|---|---|---|---|---|
| OAuth authorize/token | `client_id`, `client_secret`, code, Basic | Code, access/refresh token, client secret | Code interception, login CSRF, secret extraction | Kandidat F-02 |
| `/staff` | Bearer OAuth + `UGMFWSERVICE` | Username, status akun, `user_tipe_nomor` | Enumerasi akun bila reachable | Latent F-05 |
| `/v1/student/micro/services` | Bearer OAuth + `UGMFWSERVICE` | KRS, nilai/SKS, kehadiran, beasiswa, pembayaran, profil, OSS | Akses data lintas operasi bila otorisasi lemah | 27 label; kandidat |
| `/v1/staff/micro/services` | Bearer OAuth + `UGMFWSERVICE` | Profil staff/dosen | Batas peran/scope | 1 label; kandidat |
| `/v1/staff/micro/doscanent` | Bearer OAuth; tanpa `UGMFWSERVICE` | QR, GPS, identitas, nama, username, tipe pengguna | Cross-role, identity tampering, replay | Kandidat F-06 |
| `/presensivnext/api/signin` | Basic client + password turunan | Username, password turunan, token presensi | Kredensial tanpa password UGM | Kandidat F-01 |
| `/presensivnext/api/send_peserta` | Bearer token presensi | QR, device ID, identitas, nama, GPS, waktu | Penyalahgunaan token, PII/GPS | Kandidat F-01 |

## Temuan lintas endpoint

1. **Dua stack networking.** V1 memakai `getValidAccessToken` dan `UGMFWSERVICE`; V2 membaca token langsung di `getHeaders`, tetapi juga memiliki interceptor `_onRequestToken` yang memanggil `getValidAccessToken`. Perbedaan ini penting untuk token kedaluwarsa dan untuk membaca header final di wire.
2. **Status 400 sebagai jalur sukses.** F-05 dan beberapa caller gateway membandingkan status dengan 400 lalu membaca `res`. Jangan menganggap 2xx selalu sukses atau 400 selalu gagal tanpa uji staging.
3. **Body FormData, header JSON.** V1 membungkus body sebagai `FormData` `json1`/`json`, tetapi `getHeaders` menyatakan `application/json`. Header final harus direkam, bukan diasumsikan.
4. **Identitas dari client.** `doscanent` mengirim `identitasId`, `username`, `NamaLengkap`, dan `userTipeNomor`; `send_peserta` mengirim identitas, device ID, dan GPS. Jika server memakai nilai body tanpa membandingkan dengan token, terbuka kandidat tampering.
5. **Scope lebar dan konfigurasi dev.** Production meminta 12 scope, termasuk 4 write; dev menambahkan `staff`, `pegawai.*`, `tte`, dan `ldap`. Scope bukan bukti otorisasi server, tetapi relevan untuk least privilege.
6. **Token dan logging.** Token disimpan di SharedPreferences biasa; F-05 mencatat respons `sso response`, F-06 mencatat respons scan. Apakah log aktif dan dikirim ke Crashlytics belum dibuktikan.
7. **Tidak ada pemeriksaan peran di UI yang terpulihkan.** Jalur `participant_student` memeriksa integritas perangkat/lokasi, bukan peran. Ini mendukung kandidat F-06, bukan membuktikan server menerima token mahasiswa.

## Prioritas validasi staging

| Prioritas | Kandidat | Pertanyaan utama | Rencana |
|---|---|---|---|
| P1 | F-06 `doscanent` | Apakah token mahasiswa diterima? Apakah identitas body dipercaya? Apakah scan replay/duplikat? | A-06–A-11 |
| P1 | F-01 presensi | Apakah server menerima password turunan dan token presensi? Apakah `send_peserta` memeriksa identitas/peran? | Rencana presensi |
| P1 | F-02 OAuth | Apakah server menolak code tanpa PKCE/`state`? Apakah redirect exact? Apakah payload error terkirim ke Crashlytics? | O-01–O-13 |
| P2 | F-05 `/staff` | Apakah route reachable? Apakah lookup username lain diizinkan? Apakah status 400 kontrak stabil? | A-02–A-05 |
| P2 | Gateway staff | Apakah token mahasiswa dapat memanggil micro `staff`? | A-05/A-06 |
| P2 | Gateway student | Apakah setiap label membatasi data ke pemilik token? | A-12/A-13 |
| P3 | F-04 config | Apakah build production benar-benar memakai konfigurasi production? | O-08 |
| P3 | F-03 token storage | Apakah token dapat dibaca dari backup/root pada perangkat uji? | O-06 |

Rincian langkah, evidence, dan stop condition ada di [`API-AUTH-STAGING-TEST-PLAN.md`](API-AUTH-STAGING-TEST-PLAN.md) dan [`OAUTH-STAGING-TEST-PLAN.md`](OAUTH-STAGING-TEST-PLAN.md). Jangan menjalankan uji ini pada production.

## Peta bukti

| Pertanyaan | Bukti statis | Alamat |
|---|---|---|
| OAuth authorize production | URL dan scope | `flavors.dart` `0x8c0410`–`0x8c0444` |
| OAuth token production | `exchangeCodeForToken` | `oauth_webview_service.dart` `0x8e3834`; Basic `0x8e3dbc`; secret `0x8e425c` |
| OAuth dev | host/token/redirect | `flavors.dart` `0x8c0318`; redirect dev |
| F-05 path | `staff` | `auth_network_impl.dart` `0xfda200` |
| F-05 body | `micro=staff`, lookup | `auth_network_impl.dart` `0xfda1b8`–`0xfda1e4` |
| F-05 envelope | `json1` + base64url `json` | `utils.dart` `0x8ec794`–`0x8ec7d8` |
| F-05 header | Bearer, JSON, `UGMFWSERVICE` | `utils.dart` `0x912a50`–`0x912ae0` |
| F-05 response | status 400, `res`, `is_active`, `user_tipe_nomor` | `auth_network_impl.dart` `0xfda27c`–`0xfda420` |
| Student gateway path | `v1/student/micro/services` | `attendance_network_impl.dart` `0xd4e644` |
| Student gateway caller | `getConfirmationQRStudent` | `attendance_network_impl.dart` `0xd4e500` |
| Staff gateway path | `v1/staff/micro/services` | `user_service.dart` `0x9eb240` |
| Staff gateway body | `micro=staff`, profil | `user_service.dart` `0x9eb210` |
| Staff gateway response | status 400, `res` | `user_service.dart` `0x9eb268`–`0x9eb310` |
| F-06 path | `v1/staff/micro/doscanent` | `attendance_network_impl.dart` `0xd50b1c` |
| F-06 base override | `baseUrl()` | `attendance_network_impl.dart` `0xd50b00` |
| F-06 body | delapan field | `attendance_network_impl.dart` `0xd51494`–`0xd5157c`; flutterdec ID 20810 |
| F-06 V2 post | FormData default | `utils.dart` `0xd50d94`–`0xd5101c` |
| F-06 V2 header | Bearer dari `access_token` | `utils.dart` `0xd5135c`–`0xd51450` |
| F-06 V2 refresh | `_onRequestToken` → `getValidAccessToken` | `utils.dart` `0xd52094`, `0xd52bbc`, `0xd52bf8` |
| F-06 response | QR panjang `null`/non-Map → `true`; Map (QR pendek) `status == "1"`; exception → `false` | `attendance_network_impl.dart` `0xd50b74`; controller `0xd4fa3c`–`0xd4fb88`; UI `0xd4d5d4` |
| F-01 signin | URL, Basic, password | `attendance_network_impl.dart` `0xd502c4`; derivation `0xd51f2c`–`0xd5203c` |
| F-01 send_peserta | URL, Bearer, fields | `attendance_network_impl.dart` `0xd50708`; fields `0xd504fc`–`0xd50618` |
| Middleware | `/auth`, `/attedence`, `/qr-scanner` tidak allowlisted | `SessionMiddleware` `0xeb03e4`–`0xeb050c` |

## Batas interpretasi

- Tidak ada aplikasi yang dijalankan, tidak ada Frida/proxy, dan tidak ada request ke server. Laporan ini tidak menyatakan bahwa server menerima token, memproses scan, atau mengembalikan data.
- “Tidak ditemukan” berarti tidak teramati pada code path yang dipulihkan; Flutter AOT dapat membangun string secara dinamis dan sebagian control flow belum pulih.
- Label service adalah operasi di dalam body, bukan bukti bahwa setiap operasi dapat dipanggil atau diotorisasi untuk peran tertentu.
- Jumlah 29 label dan 36 caller triple berasal dari inventaris yang sudah diekstrak; ini bukan denominator lengkap seluruh API backend.
- Alamat adalah alamat Blutter. Alamat Ghidra = alamat Blutter + `0x100000`, sesuai [`GHIDRA-ANALYSIS.md`](GHIDRA-ANALYSIS.md).
- Crosswalk `poolOff[N]` ke `[pp+0xN]` hanya diuji pada function terpilih dan tidak didokumentasikan flutterdec; satu referensi `scanEntrant` tidak ditemukan. Jangan memperlakukan pemetaan ini sebagai kontrak stabil antar-build.
- Status 400 pada F-05/gateway dan pembuangan body respons pada F-06 adalah perilaku statis yang mengejutkan; keduanya harus diverifikasi dengan capture, bukan diasumsikan sebagai perilaku production.

## Rekomendasi

### Server-side

1. Terapkan pemeriksaan peran/scope eksplisit pada `/staff`, gateway staff, dan `doscanent`; jangan mengandalkan prefiks path.
2. Untuk F-05, tolak lookup username yang berbeda dari identitas token, atau batasi ke role staff dan gunakan parameter yang tidak dapat dienumerasi.
3. Untuk F-06, turunkan identitas peserta dari token/QR yang ditandatangani server; jangan percaya `identitasId`, `username`, `NamaLengkap`, atau `userTipeNomor` dari body.
4. Ikat QR ke event, peserta, waktu, dan nonce; tambahkan idempotency dan audit log untuk scan.
5. Untuk presensi legacy, hentikan penerimaan password turunan client; gunakan token per pengguna berumur pendek yang diterbitkan setelah autentikasi kuat.
6. Untuk OAuth, terapkan PKCE S256, `state`, exact redirect URI, dan rotasi/revoke secret; hapus konfigurasi dev dari build production.
7. Redaksi log respons dan jangan kirim PII/token/secret ke Crashlytics.

### Client-side

1. Hapus route `/auth` dan kode lookup yang tidak dipakai, atau hubungkan ke alur yang jelas dengan kontrol otorisasi.
2. Jangan meminta password bila tidak dikirim/diverifikasi.
3. Hentikan pengiriman identitas dari client; gunakan identitas yang diturunkan server dari token.
4. Perbaiki penanganan hasil `doscanent`: data source membuang body dan mengembalikan `null`; pertahankan status/response agar controller dapat membedakan sukses, gagal aplikasi, dan error, serta jangan memakai `alert_fail_scan` sebagai penentu hasil server.
5. Samakan sumber token pada V2: `getHeaders` membaca `access_token` langsung, sedangkan `_onRequestToken` memakai `getValidAccessToken`; pastikan tidak ada penimpaan header yang tidak konsisten.
6. Gunakan secure storage untuk token dan hapus konfigurasi dev/Postman dari build production.

## Referensi

- [Feature map](FEATURE-MAP.md) — route, middleware, 29 label, dan caller.
- [API authorization deep dive](API-AUTH-DEEP-DIVE.md) — F-05/F-06, envelope, dan koreksi token V2.
- [OAuth deep dive](OAUTH-DEEP-DIVE.md) — authorize/token, scope, redirect, dan F-02.
- [Temuan keamanan statis](SECURITY-FINDINGS.md) — ringkasan F-01–F-06.
- [Rencana uji API staging](API-AUTH-STAGING-TEST-PLAN.md) — matriks A-01–A-13.
- [Rencana uji OAuth staging](OAUTH-STAGING-TEST-PLAN.md) — matriks O-01–O-13.
- [Decompile Flutterdec](FLUTTERDEC-APP-DECOMPILE.md) — bukti pseudo-Dart dan crosswalk.
- [Manifest artifact](artifact-manifest.json) — hash, tool, dan metadata batch.
