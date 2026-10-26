# Peta route dan service Simaster

## Cakupan

Peta ini diturunkan dari assembly ARM64 hasil Blutter pada `libapp.so` yang sama dengan hash di [`ANALYSIS.md`](ANALYSIS.md). Ini inventaris deklarasi dan string statis; peta ini tidak menyatakan bahwa route dibuka atau request dikirim saat aplikasi berjalan.

Dump memiliki 43 direktori modul tingkat atas di `app/modules/`. Nama-namanya adalah:

```text
achievement, attedence, auth, bimbingan, checkpoint, course,
course_information, course_information_detail, course_schedule,
crisis_center, dashboard, e_ktm, e_service, exam_schedule,
history_registration, history_scholarship, home,
home_information_detail_service_clinic, landing, lapor, my_gate,
my_gate_form, my_gate_vehicle, my_gate_vehicle_details, news,
notification, organizer_attendance, oss, oss_v2, other_menus, parent,
profile, reusable_component, rsa, scholarship, setting, simaster_core,
splash, study, study_result, testing, tos, transgama
```

## Route yang dideklarasikan

49 literal path dan 49 konstruksi `GetPage` ditemukan di `AppPages::routes`. Binding adalah nama yang tampak berdekatan dengan konstruksi route di assembly; `/oss_v2` tidak memiliki binding yang berhasil dipasangkan oleh ekstraksi ini.

| Path | Binding yang dipulihkan |
| --- | --- |
| `/home` | `HomeBinding` |
| `/landing` | `LandingBinding` |
| `/auth` | `AuthBinding` |
| `/splash` | `SplashBinding` |
| `/e-service` | `EServiceBinding` |
| `/course` | `CourseBinding` |
| `/course-schedule` | `CourseScheduleBinding` |
| `/scholarship` | `ScholarshipBinding` |
| `/course-information` | `CourseInformationBinding` |
| `/dashboard` | `DashboardBinding` |
| `/e-ktm` | `EKtmBinding` |
| `/achievement` | `AchievementBinding` |
| `/crisis-center` | `CrisisCenterBinding` |
| `/other-menus` | `OtherMenusBinding` |
| `/profile` | `ProfileBinding` |
| `/attedence` | `AttedenceBinding` |
| `/notification` | `NotificationBinding` |
| `/organizer-attendance` | `OrganizerAttendanceBinding` |
| `/forgot-password` | `AuthBinding` |
| `/setting` | `SettingBinding` |
| `/oss` | `OssBinding` |
| `/historyflowview` | `OssBinding` |
| `/oss_v2` | tidak dipasangkan |
| `/onboarding` | `AuthBinding` |
| `/study-result` | `StudyResultBinding` |
| `/course-information-detail` | `CourseInformationDetailBinding` |
| `/home-information-detail-service-clinic` | `HomeInformationDetailServiceClinicBinding` |
| `/exam-schedule` | `ExamScheduleBinding` |
| `/history-scholarship` | `HistoryScholarshipBinding` |
| `/study` | `StudyBinding` |
| `/news` | `NewsBinding` |
| `/history-registration` | `HistoryRegistrationBinding` |
| `/oauth-webview` | `AuthBinding` |
| `/oauth-webview-old` | `AuthBinding` |
| `/my-gate` | `MyGateBinding` |
| `/my-gate-form` | `MyGateFormBinding` |
| `/my-gate-vehicle` | `MyGateVehicleBinding` |
| `/parent` | `ParentBinding` |
| `/my-gate-vehicle-details` | `MyGateVehicleDetailsBinding` |
| `/tos` | `ToSBinding` |
| `/personal-qr` | `AttedenceBinding` |
| `/lapor` | `LaporBinding` |
| `/checkpoint` | `CheckpointBinding` |
| `/qr-scanner` | `AttedenceBinding` |
| `/transgama` | `TransgamaBinding` |
| `/simaster-core` | `SimasterCoreBinding` |
| `/bimbingan` | `BimbinganBinding` |
| `/rsa` | `RsaBinding` |
| `/rsa-news-detail` | `RsaBinding` |

## Route yang melewati pemeriksaan sesi

Konstruktor `SessionMiddleware` menaruh 18 nama berikut di daftar yang dipakai untuk melewati pemeriksaan sesi:

```text
/splash                 /onboarding             /introduction
/OAuthWebView           /login-google           /login-facebook
/login-ugm              /tos                    /oauth-webview
/oauth-webview-old      /landing                /OnboardingScreens
/PermissionBottomSheet  /PengumumanPopUp        /ScopeValidityDialog
/not-found              /oauth2                 /login-callback
```

Nama persis dipertahankan, termasuk kapitalisasi. Kehadiran nama di daftar ini tidak membuktikan route dapat dibuka dari keadaan tertentu.

## Pemanggilan API statis

36 pasangan caller/method/service dipulihkan dari modul aplikasi, dengan 29 label service unik. Jalur literal `v1/student/micro/services` tampak pada pemanggilan student; pemanggilan profil staff menggunakan `v1/staff/micro/services`. `AuthNetworkImpl.signIn` membentuk micro `staff` dan label `get_simaster_atribut_by_username`, tetapi path gabungannya tidak tampak sebagai literal di fungsi tersebut.

| Micro | Label service | Caller yang tampak di assembly |
| --- | --- | --- |
| student | `get_agenda_kehadiran_rekap_student` | `study_schedule_service.getStudyAttendanceRecapAgenda` |
| student | `get_agenda_kehadiran_rinci_student` | `study_schedule_service.getStudyAttendanceDetailAgenda` |
| student | `get_banner_student` | `banner_service.getBanner` |
| student | `get_berita_list_student` | `news_service_v2.searchNews` |
| student | `get_jadwal_anda_agenda_student` | `schedule_network_impl.checkAgendaStudent` |
| student | `get_jadwal_anda_date_student` | `schedule_network_impl.getSchedules` |
| student | `get_jadwal_anda_now_student` | `schedule_network_impl.getScheduleNowHome` |
| student | `get_jadwal_anda_studi_student` | `schedule_network_impl.checkStudiStudent` |
| student | `get_konfirmasi_qr_student` | `attendance_network_impl.getConfirmationQRStudent` |
| student | `get_riwayat_keaktifan_mhs` | `history_registration_service.getAllActivityHistory` |
| student | `get_riwayat_pembayaran_mhs` | `history_registration_service.getAllPaymentHistory` |
| student | `get_riwayat_permohonan_mhs` | `history_registration_service.getAllRequestHistory` |
| student | `get_semester_student` | `schedule_network_impl.getNewestPeriod`; `exam_schedule_service.getAllPeriod`; `study_result_service.getAllPeriod` |
| staff | `get_simaster_atribut_by_username` | `auth_network_impl.signIn` |
| staff | `get_staff_profil_by_staff_id` | `user_service.getProfileByUserNumber` |
| student | `get_student_beasiswa_progres_ajuan_by_niu` | `history_scholarhsip_service.findAllHistoryScholarship` |
| student | `get_student_beasiswa_tawar_by_tahun` | `scholarship_service.findAllScholarship`; `scholarship_service.findAllScholarshipWithFilter` |
| student | `get_student_jadwal_ujian_by_niu` | `exam_schedule_service.getAllExamSchedule`; `study_schedule_service.getStudyExamSchedule` |
| student | `get_student_krs_by_niu_semester` | `study_result_service.findStudyResult` |
| student | `get_student_oss_detail_by_id` | `oss_services.findDocumentDetails` |
| student | `get_student_oss_list_by_niu` | `oss_services.findAllDocuments` |
| student | `get_student_pengumuman_by_niu` | `home_service.findLatestNotification`; `notification_service.findAllNotification` |
| student | `get_student_profil_by_niu` | `user_service.getProfile` |
| student | `get_student_sks__semester_by_niu` | `dashboard_service.findAllChart`; `study_result_service.findSksSemesterByNiu` |
| student | `get_studi_jadwal_periode` | `study_schedule_service.getPeriodSchedule` |
| student | `get_studi_kehadiran_rekap` | `study_schedule_service.getStudyAttendanceRecap` |
| student | `get_studi_kehadiran_rinci` | `study_schedule_service.getStudyAttendanceDetail` |
| student | `get_studi_krs` | `study_plan_services.getStudyKrs`; `study_schedule_service.getStudyKrs` |
| student | `get_studi_max_sks` | `study_result_service.getStudiMaxSks` |

Fungsi-fungsi ini memanggil `BaseNetworking::post` dan menyusun body dengan field `micro`, `service`, `query` atau `param`. Ini menjelaskan protokol yang terlihat di kode; format body lengkap dan respons tiap operasi perlu ditelusuri per fungsi/model. Tidak ada request yang direkam dari jaringan.

## Session dan OAuth

- `SessionMiddleware` membaca key `access_token` dan `refresh_token` dari `SharedPreferences`; alur yang dipulihkan memanggil `OauthGlobalController.refreshOAuth` dan menangani token invalid melalui alur logout.
- `refreshOAuth` membaca `refresh_token`, mengambil `clientId` dan `clientSecret` dari konfigurasi OAuth, lalu membentuk grant `refresh_token` dengan `client_id` dan `client_secret`. Nilai kredensial tidak dicantumkan di sini.
- Fakta tersebut berasal dari instruksi assembly. Keberhasilan OAuth, redirect provider, dan isi token tidak diamati saat runtime.

## Batas cakupan

- `libapp.so` memiliki dua header snapshot data Dart yang cocok dan identitas struktural lengkap; pool string yang dikembalikan REA parsial: setidaknya 1.000 URI package dan 4.000 token mirip identifier, sementara yang dikembalikan masing-masing dibatasi 500 dan 2.000.
- Caller dan label service bukan bukti semua fungsi dicapai. Sebagian nama token dapat menjadi string yang tidak aktif, reflection atau dispatch dinamis belum dipastikan.
- APK belum dijalankan. Emulator `x86_64` tidak cocok dengan split `arm64-v8a`; Android Emulator 37.2.12 juga menolak AVD ARM64 pada host ini. Karena itu UI, hasil API, dan perilaku sesudah login tetap unknown.
