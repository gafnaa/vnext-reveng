/* ==========================================================================
   Simaster reveng — landing page data + interaksi
   Semua data adalah ringkasan dari laporan Markdown di repo.
   Tidak ada token, secret, salt, atau data pengguna di berkas ini.
   ========================================================================== */
'use strict';

/* ── 01. Statistik ───────────────────────────────────── */
const STATS = [
  { v: '0',        u: 'request',   l: 'Tidak ada request ke server UGM' },
  { v: '10',       u: 'URL',       l: 'Request URL production + OAuth dev' },
  { v: '29',       u: 'label',     l: 'Label service unik di gateway' },
  { v: '6',        u: 'kandidat',  l: 'Temuan keamanan F-01…F-06' },
  { v: '43',       u: 'modul',     l: 'Direktori modul aplikasi teridentifikasi' },
  { v: '2.796',    u: 'fn',        l: 'Function start aplikasi terwakili di Ghidra' },
];

/* ── 02. Endpoint ────────────────────────────────────── */
/* auth: 'none' = tanpa header auth · 'bearer' = Authorization Bearer
   fam : keluarga untuk filter */
const ENDPOINTS = [
  // OAuth
  { m: 'GET',  p: '/oauth/authorize', fam: 'OAuth', auth: 'none',
    n: 'Authorization request. response_type=code, client_id, redirect_uri, scope. Tanpa state/nonce/PKCE.' },
  { m: 'POST', p: '/oauth/token', fam: 'OAuth', auth: 'none',
    n: 'Token exchange form-urlencoded. Basic client credential + secret di body sekaligus.' },

  // Gateway
  { m: 'POST', p: '/staff', fam: 'Gateway', auth: 'bearer',
    n: 'Lookup akun: micro=staff, service=get_simaster_atribut_by_username. Klien membaca field res setelah status 400.' },
  { m: 'POST', p: '/v1/student/micro/services', fam: 'Gateway', auth: 'bearer',
    n: 'Gateway student: 27 label operasi di dalam body (micro/service/query/param).' },
  { m: 'POST', p: '/v1/staff/micro/services', fam: 'Gateway', auth: 'bearer',
    n: 'Gateway staff: label get_staff_profil_by_staff_id. Batas peran server belum terbukti.' },
  { m: 'POST', p: '/v1/staff/micro/doscanent', fam: 'Gateway', auth: 'bearer',
    n: 'Scan entrant (QR > 37 karakter). Body membawa identitas, nama, tipe pengguna, dan GPS dari client.' },

  // Layanan web
  { m: 'POST', p: '/service_login_vnext', fam: 'Web', auth: 'bearer',
    n: 'Sinkronisasi sesi web vNext dari token aplikasi. FormData + header UGMFWSERVICE.' },
  { m: 'POST', p: '/get_menu_vnext?sesId=&groupMenu=', fam: 'Web', auth: 'bearer',
    n: 'Konfigurasi menu web vNext. Memakai HttpMethod.post dan FormData body meski path memuat query.' },
  { m: 'POST', p: '/presensivnext/api/signin', fam: 'Presensi', auth: 'none',
    n: 'Signin presensi legacy: Basic client + password turunan dari username + tanggal (kandidat F-01).' },
  { m: 'POST', p: '/presensivnext/api/send_peserta', fam: 'Presensi', auth: 'bearer',
    n: 'Kirim peserta presensi. 10 field FormData termasuk QR, device ID, identitas, dan koordinat GPS.' },

  // Banner / update
  { m: 'GET',  p: '/vnext/v1/banners/get_intro?banner_app=1', fam: 'Konten', auth: 'bearer',
    n: 'Banner intro. Dipanggil splash sebelum login sehingga header menjadi Bearer kosong.' },
  { m: 'GET',  p: '/vnext/v1/banners/get_dynamic?banner_key=tosparent', fam: 'Konten', auth: 'bearer',
    n: 'Banner ToS. Tidak ada pemeriksaan sesi di caller; konsumsi pre-login perlu konfirmasi capture.' },
  { m: 'GET',  p: '/vnext/v1/fitur/1/android', fam: 'Konten', auth: 'none',
    n: 'Cek versi/fitur untuk notifikasi update. package:http langsung tanpa argumen headers — tanpa Authorization.' },
  { m: 'GET',  p: '/vnext/v1/news?unit_id=1&limit=7&skip=0', fam: 'Konten', auth: 'bearer',
    n: 'Daftar berita untuk halaman home.' },
  { m: 'GET',  p: '/vnext/v1/feeds?limit=&unit_id=&is_info=', fam: 'Konten', auth: 'bearer',
    n: 'Feed berita dan layanan RSA.' },
  { m: 'GET',  p: '/vnext/v1/feeds/krisis', fam: 'Konten', auth: 'bearer',
    n: 'Feed kontak darurat.' },
  { m: 'GET',  p: '/vnext/v1/kontak-krisis', fam: 'Konten', auth: 'bearer',
    n: 'Kontak krisis crisis center.' },

  // Kendaraan
  { m: 'GET',    p: '/vnext/v1/vehicles?limit=20&skip=0', fam: 'Kendaraan', auth: 'bearer',
    n: 'Daftar kendaraan milik pengguna (My Gate).' },
  { m: 'GET',    p: '/vnext/v1/vehicles/<id>', fam: 'Kendaraan', auth: 'bearer',
    n: 'Detail kendaraan.' },
  { m: 'GET',    p: '/vnext/v1/vehicles/<id>/users', fam: 'Kendaraan', auth: 'bearer',
    n: 'Daftar pengguna kendaraan.' },
  { m: 'GET',    p: '/vnext/v1/vehicles/<id>/logs/<…>', fam: 'Kendaraan', auth: 'bearer',
    n: 'Log kendaraan via madzab apiProvider (HttpMethod get).' },
  { m: 'DELETE', p: '/vnext/v1/vehicles/<id>', fam: 'Kendaraan', auth: 'bearer',
    n: 'Hapus kendaraan. Otorisasi per pemilik di server belum terbukti.' },
  { m: 'DELETE', p: '/vnext/v1/vehicles/<id>/users/<uid>', fam: 'Kendaraan', auth: 'bearer',
    n: 'Hapus pengguna dari kendaraan.' },
  { m: 'PUT',    p: '/vnext/v1/vehicles/<id>/users/<uid>', fam: 'Kendaraan', auth: 'bearer',
    n: 'Ubah status pengguna kendaraan. Body { is_active }.' },
  { m: 'GET',    p: '/vnext/v1/portal/vehicle/', fam: 'Kendaraan', auth: 'bearer',
    n: 'Riwayat portal kendaraan. Query vehicle_plate_number, limit, skip.' },
  { m: 'GET',    p: '/vnext/v1/parking-areas', fam: 'Kendaraan', auth: 'bearer',
    n: 'Daftar area parkir.' },
  { m: 'GET',    p: '/vnext/v1/vehicle/user-rules', fam: 'Kendaraan', auth: 'bearer',
    n: 'Aturan pengguna kendaraan untuk form My Gate.' },

  // Transgama
  { m: 'GET', p: '/vnext/v1/transgama/lanes/?show_deleted=false', fam: 'Transgama', auth: 'bearer',
    n: 'Master lane shuttle.' },
  { m: 'GET', p: '/vnext/v1/transgama/lanes/<id>/haltes', fam: 'Transgama', auth: 'bearer',
    n: 'Detail halte per lane.' },
  { m: 'GET', p: '/vnext/v1/transgama/lane/<id>/putaran/<…>', fam: 'Transgama', auth: 'bearer',
    n: 'Putaran per lane.' },
  { m: 'GET', p: '/vnext/v1/transgama/rute?halte_awal_id=&halte_akhir_id=', fam: 'Transgama', auth: 'bearer',
    n: 'Rute antar halte.' },
  { m: 'GET', p: '/vnext/v1/transgama/jadwal/halte?lane_id=&putaran=&jam=', fam: 'Transgama', auth: 'bearer',
    n: 'Jadwal halte per lane dan jam.' },
  { m: 'GET', p: '/vnext/v1/transgama/halte/terdekat?lat=&lon=', fam: 'Transgama', auth: 'bearer',
    n: 'Halte terdekat. Query lat, lon, limit=50, show_all=false.' },

  // Akademik
  { m: 'GET',  p: '/vnext/v1/parents/count_parent_pending/<…>', fam: 'Akademik', auth: 'bearer',
    n: 'Jumlah permohonan orang tua yang menunggu.' },
  { m: 'GET',  p: '/vnext/v1/parents/list_parent/<…>', fam: 'Akademik', auth: 'bearer',
    n: 'Daftar data orang tua.' },
  { m: 'POST', p: '/vnext/v1/parents/child/approval', fam: 'Akademik', auth: 'bearer',
    n: 'Approval data anak. Body { is_approve }.' },
  { m: 'GET',  p: '/vnext/v1/checkpoint/get_active_session/<…>', fam: 'Akademik', auth: 'bearer',
    n: 'Sesi checkpoint aktif (klien v3, apiProvider2).' },
  { m: 'POST', p: '/vnext/v1/checkpoint/checkin/<id>/?lat=&long=', fam: 'Akademik', auth: 'bearer',
    n: 'Check-in checkpoint dengan koordinat.' },
  { m: 'POST', p: '/vnext/v1/checkpoint/checkout/<id>/?lat=&long=', fam: 'Akademik', auth: 'bearer',
    n: 'Check-out checkpoint dengan koordinat.' },
  { m: 'GET',  p: '/vnext/v1/students/<nomor>/tugas-akhir/bimbingan/<…>', fam: 'Akademik', auth: 'bearer',
    n: 'Bimbingan tugas akhir. Tiga varian method teramati: get, put, post (dua terakhir mencatat "Hasil Save Bimbingan").' },

  // Realtime
  { m: 'WS', p: 'wss://armada.smartcampus.ugm.ac.id/gps/ws?room=room2', fam: 'Realtime', auth: 'none',
    n: 'Posisi shuttle realtime. WebSocketChannel.connect dengan URI saja — tanpa headers/token di call site.' },
];

/* ── 03. Label gateway student ───────────────────────── */
const LABELS = [
  ['get_agenda_kehadiran_rekap_student', 'Rekap kehadiran'],
  ['get_agenda_kehadiran_rinci_student', 'Detail kehadiran'],
  ['get_banner_student', 'Banner'],
  ['get_berita_list_student', 'Berita'],
  ['get_jadwal_anda_agenda_student', 'Agenda jadwal'],
  ['get_jadwal_anda_date_student', 'Jadwal per tanggal'],
  ['get_jadwal_anda_now_student', 'Jadwal saat ini'],
  ['get_jadwal_anda_studi_student', 'Jadwal studi'],
  ['get_konfirmasi_qr_student', 'Konfirmasi QR'],
  ['get_riwayat_keaktifan_mhs', 'Riwayat keaktifan'],
  ['get_riwayat_pembayaran_mhs', 'Riwayat pembayaran'],
  ['get_riwayat_permohonan_mhs', 'Riwayat permohonan'],
  ['get_semester_student', 'Semester'],
  ['get_student_beasiswa_progres_ajuan_by_niu', 'Beasiswa'],
  ['get_student_beasiswa_tawar_by_tahun', 'Beasiswa'],
  ['get_student_jadwal_ujian_by_niu', 'Jadwal ujian'],
  ['get_student_krs_by_niu_semester', 'KRS'],
  ['get_student_oss_detail_by_id', 'OSS'],
  ['get_student_oss_list_by_niu', 'OSS'],
  ['get_student_pengumuman_by_niu', 'Pengumuman'],
  ['get_student_profil_by_niu', 'Profil'],
  ['get_student_sks__semester_by_niu', 'SKS'],
  ['get_studi_jadwal_periode', 'Jadwal'],
  ['get_studi_kehadiran_rekap', 'Kehadiran'],
  ['get_studi_kehadiran_rinci', 'Kehadiran'],
  ['get_studi_krs', 'KRS'],
  ['get_studi_max_sks', 'SKS'],
];

/* ── 04. Temuan ──────────────────────────────────────── */
const FINDINGS = [
  { id: 'F-01', t: 'Kredensial presensi turunan',
    d: 'Password presensi dihitung deterministik dari username + tanggal + salt statis, lalu diobfuskasi. Kredensial Basic client juga tertanam.',
    i: 'Pembuatan kredensial presensi tanpa password UGM; penyalahgunaan token presensi bila server menerima model ini.' },
  { id: 'F-02', t: 'OAuth tanpa PKCE/state',
    d: 'Client secret tertanam, tidak ada PKCE maupun state, redirect custom scheme dengan validasi substring, dan payload sensitif dikirim ke Crashlytics saat error.',
    i: 'Code interception/login CSRF, penyalahgunaan secret, kebocoran code/secret — bila server tidak menolak.' },
  { id: 'F-03', t: 'Token di SharedPreferences',
    d: 'Token disimpan tanpa enkripsi aplikasi pada SharedPreferences biasa.',
    i: 'Token dapat dibaca pada perangkat yang di-root atau lewat backup.' },
  { id: 'F-04', t: 'Konfigurasi dev di binary',
    d: 'Flavor dev memiliki scope tambahan dan redirect Postman.',
    i: 'Permukaan lebih luas bila build dev tersebar; belum ada build dev yang dianalisis runtime.' },
  { id: 'F-05', t: 'Lookup akun /staff',
    d: 'Lookup akun hanya dengan username dan nilai "8"; password divalidasi form tetapi tidak dikirim. Route tidak punya pemanggil statis dan tidak allowlisted.',
    i: 'Enumerasi/status akun bila route dapat dicapai dengan token valid. Latent, bukan pre-auth.' },
  { id: 'F-06', t: 'Scan entrant lintas peran',
    d: 'Alur mahasiswa dapat memilih v1/staff/micro/doscanent; body membawa identitas dari client; body respons sukses dibuang oleh data source.',
    i: 'BFLA/cross-role dan identity/parameter tampering bila server tidak memeriksa peran/token.' },
];

/* ── 05. Dokumen sumber ──────────────────────────────── */
const DOCS = [
  ['reports/API-REFERENCE.md', 'Referensi API lengkap: keputusan publik/tidak, stack klien, gateway, REST vnext/v1, layanan web.'],
  ['reports/API-ENDPOINT-INVENTORY.md', 'Inventaris endpoint dan operasi gateway, envelope, kredensial, matriks risiko.'],
  ['reports/SECURITY-FINDINGS.md', 'Ringkasan temuan F-01–F-06 dan batas bukti.'],
  ['reports/API-AUTH-DEEP-DIVE.md', 'Reachability, envelope, dan kandidat F-05/F-06.'],
  ['reports/OAUTH-DEEP-DIVE.md', 'state, PKCE, redirect, token exchange, dan penyimpanan token.'],
  ['reports/FEATURE-MAP.md', 'Route UI, middleware sesi, modul, dan caller/service statis.'],
  ['reports/PROGRESS.md', 'Peta progres per lapisan analisis dan gap yang tersisa.'],
  ['reports/API-AUTH-STAGING-TEST-PLAN.md', 'Matriks uji staging: peran/token, identity tampering, replay.'],
];

/* ── Render: statistik ───────────────────────────────── */
function renderStats() {
  const el = document.getElementById('stats');
  el.innerHTML = STATS.map(s => `
    <div class="stat">
      <div class="stat-val">${s.v}${s.u ? ` <small>${s.u}</small>` : ''}</div>
      <div class="stat-label">${s.l}</div>
    </div>`).join('');
}

/* ── Render: endpoint explorer ───────────────────────── */
const FAMILIES = ['Semua', ...Array.from(new Set(ENDPOINTS.map(e => e.fam)))];
let activeFamily = 'Semua';
let query = '';

function methodClass(m) {
  return 'm-' + m.toLowerCase();
}

function renderFilters() {
  const el = document.getElementById('filters');
  el.innerHTML = FAMILIES.map(f => {
    const n = f === 'Semua' ? ENDPOINTS.length : ENDPOINTS.filter(e => e.fam === f).length;
    return `<button class="chip" data-fam="${f}" aria-pressed="${f === activeFamily}">${f}<span class="n">${n}</span></button>`;
  }).join('');
  el.querySelectorAll('.chip').forEach(btn => {
    btn.addEventListener('click', () => {
      activeFamily = btn.dataset.fam;
      renderFilters();
      renderEndpoints();
    });
  });
}

function renderEndpoints() {
  const q = query.trim().toLowerCase();
  const list = ENDPOINTS.filter(e => {
    const okFam = activeFamily === 'Semua' || e.fam === activeFamily;
    const okQ = !q || (e.p + ' ' + e.m + ' ' + e.n + ' ' + e.fam).toLowerCase().includes(q);
    return okFam && okQ;
  });

  document.getElementById('count').textContent =
    `${list.length} dari ${ENDPOINTS.length} endpoint ditampilkan`;
  document.getElementById('empty').hidden = list.length !== 0;

  document.getElementById('endpoints').innerHTML = list.map(e => `
    <article class="ep">
      <div class="ep-head">
        <span class="m ${methodClass(e.m)}">${e.m}</span>
        <span class="ep-path">${escapeHtml(e.p)}</span>
        <span class="ep-auth ${e.auth}">${e.auth === 'none' ? 'tanpa auth' : 'bearer'}</span>
      </div>
      <p class="ep-note">${escapeHtml(e.n)}</p>
    </article>`).join('');
}

/* ── Render: label gateway ───────────────────────────── */
function renderLabels() {
  document.getElementById('labels').innerHTML = LABELS.map(([label, area], i) => `
    <tr><td>${i + 1}</td><td>${label}</td><td>${area}</td></tr>`).join('');
}

/* ── Render: temuan ──────────────────────────────────── */
function renderFindings() {
  document.getElementById('findings').innerHTML = FINDINGS.map(f => `
    <article class="finding">
      <div class="finding-top">
        <span class="fid">${f.id}</span>
        <span class="ftitle">${escapeHtml(f.t)}</span>
      </div>
      <p>${escapeHtml(f.d)}</p>
      <p class="impact"><span class="status">kandidat</span> ${escapeHtml(f.i)}</p>
    </article>`).join('');
}

/* ── Render: dokumen ─────────────────────────────────── */
function renderDocs() {
  document.getElementById('docs').innerHTML = DOCS.map(([path, desc]) => `
    <a class="doc" href="../${path}">
      <div class="doc-name">${escapeHtml(path.replace('reports/', ''))}</div>
      <div class="doc-desc">${escapeHtml(desc)}</div>
    </a>`).join('');
}

/* ── Util ────────────────────────────────────────────── */
function escapeHtml(s) {
  return String(s)
    .replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;');
}

/* ── Nav mobile ──────────────────────────────────────── */
function initNav() {
  const toggle = document.getElementById('navToggle');
  const menu = document.getElementById('navMenu');
  toggle.addEventListener('click', () => {
    const open = toggle.getAttribute('aria-expanded') === 'true';
    toggle.setAttribute('aria-expanded', String(!open));
    menu.hidden = open;
  });
  menu.querySelectorAll('a').forEach(a => a.addEventListener('click', () => {
    toggle.setAttribute('aria-expanded', 'false');
    menu.hidden = true;
  }));
}

/* ── Boot ────────────────────────────────────────────── */
document.addEventListener('DOMContentLoaded', () => {
  renderStats();
  renderFilters();
  renderEndpoints();
  renderLabels();
  renderFindings();
  renderDocs();
  initNav();

  document.getElementById('search').addEventListener('input', ev => {
    query = ev.target.value;
    renderEndpoints();
  });
});
