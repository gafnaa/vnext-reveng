/* Minimal DOM shim: cukup untuk mengeksekusi app.js di Node tanpa jsdom.
   Tujuan: menangkap error runtime dan memverifikasi jumlah hasil render. */
'use strict';

const fs = require('fs');
const path = require('path');

const html = fs.readFileSync(path.join(__dirname, '..', 'site', 'index.html'), 'utf8');
const src = fs.readFileSync(path.join(__dirname, '..', 'site', 'app.js'), 'utf8');

/* Kumpulkan id yang benar-benar ada di HTML. */
const htmlIds = new Set();
for (const m of html.matchAll(/\bid="([^"]+)"/g)) htmlIds.add(m[1]);

const nodes = new Map();

function makeNode(id) {
  const listeners = {};
  const node = {
    id,
    innerHTML: '',
    textContent: '',
    hidden: false,
    dataset: {},
    _attrs: {},
    addEventListener(type, fn) { (listeners[type] = listeners[type] || []).push(fn); },
    dispatch(type, ev) { (listeners[type] || []).forEach(fn => fn(ev || {})); },
    getAttribute(name) { return this._attrs[name] ?? null; },
    setAttribute(name, value) { this._attrs[name] = value; },
    querySelectorAll(sel) {
      // Hanya dipakai untuk '.chip' dan 'a' setelah innerHTML diisi.
      if (sel === '.chip') return chipNodes;
      if (sel === 'a') return [];
      return [];
    },
  };
  return node;
}

const chipNodes = [];

global.document = {
  getElementById(id) {
    if (!htmlIds.has(id)) return null;
    if (!nodes.has(id)) nodes.set(id, makeNode(id));
    return nodes.get(id);
  },
  addEventListener(type, fn) {
    if (type === 'DOMContentLoaded') fn();
  },
};

/* Menangkap pemanggilan querySelectorAll('.chip') pada node filters. */
const filtersNode = makeNode('filters');
filtersNode.querySelectorAll = function (sel) {
  if (sel !== '.chip') return [];
  /* Parse chip dari innerHTML yang baru saja dirender. */
  const out = [];
  for (const m of this.innerHTML.matchAll(/data-fam="([^"]+)" aria-pressed="([^"]+)"/g)) {
    const n = makeNode('chip');
    n.dataset.fam = m[1];
    n._attrs['aria-pressed'] = m[2];
    out.push(n);
  }
  return out;
};
nodes.set('filters', filtersNode);

let failed = false;
function check(label, cond, detail) {
  if (cond) {
    console.log('  OK   ' + label + (detail ? '  (' + detail + ')' : ''));
  } else {
    console.log('  FAIL ' + label + (detail ? '  (' + detail + ')' : ''));
    failed = true;
  }
}

console.log('== eksekusi app.js ==');
try {
  new Function(src)();
  console.log('  OK   skrip berjalan tanpa exception');
} catch (err) {
  console.log('  FAIL exception: ' + err.message);
  process.exit(1);
}

console.log('\n== hasil render ==');

const stats = nodes.get('stats');
const statCount = (stats.innerHTML.match(/class="stat"/g) || []).length;
check('stats dirender', statCount === 6, statCount + ' kartu');

const ep = nodes.get('endpoints');
const epCount = (ep.innerHTML.match(/class="ep"/g) || []).length;
const countText = nodes.get('count').textContent;
check('endpoint dirender', epCount > 0, epCount + ' kartu');
check('teks hitungan konsisten', countText.startsWith(String(epCount) + ' dari'), countText);
check('empty tersembunyi saat ada hasil', nodes.get('empty').hidden === true);

const labels = nodes.get('labels');
const rowCount = (labels.innerHTML.match(/<tr>/g) || []).length;
check('label gateway dirender', rowCount === 27, rowCount + ' baris');

const findings = nodes.get('findings');
const findCount = (findings.innerHTML.match(/class="finding"/g) || []).length;
check('temuan dirender', findCount === 6, findCount + ' kartu');

const docs = nodes.get('docs');
const docCount = (docs.innerHTML.match(/class="doc"/g) || []).length;
check('dokumen dirender', docCount > 0, docCount + ' tautan');

const filters = nodes.get('filters');
const chipCount = (filters.innerHTML.match(/class="chip"/g) || []).length;
check('filter dirender', chipCount > 1, chipCount + ' chip');

console.log('\n== pencarian ==');
const searchEl = nodes.get('search');
if (searchEl && typeof searchEl.dispatch === 'function') {
  searchEl.dispatch('input', { target: { value: 'transgama' } });
  const filtered = (ep.innerHTML.match(/class="ep"/g) || []).length;
  check('filter pencarian menyempitkan hasil', filtered > 0 && filtered < epCount,
        filtered + ' dari ' + epCount);
  const allTransgama = (ep.innerHTML.match(/transgama/g) || []).length;
  check('semua hasil memuat kata kunci', allTransgama === filtered, allTransgama + ' kecocokan');

  searchEl.dispatch('input', { target: { value: 'zzz-tidak-ada' } });
  check('kata kunci tanpa hasil memunculkan pesan kosong', nodes.get('empty').hidden === false);
} else {
  check('listener pencarian terpasang', false);
}

console.log('\n== tautan dokumen ==');
for (const m of docs.innerHTML.matchAll(/href="([^"]+)"/g)) {
  const target = path.resolve(__dirname, '..', 'site', m[1]);
  const exists = fs.existsSync(target);
  check('tautan ' + m[1], exists);
}

console.log(failed ? '\nHASIL: GAGAL' : '\nHASIL: SEMUA LULUS');
process.exit(failed ? 1 : 0);
