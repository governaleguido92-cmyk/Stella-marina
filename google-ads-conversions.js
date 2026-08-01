// ============================================================
// Stella Marina – Google Ads Conversion Tracking
// barchefavignana.it
// ============================================================

var ADS_ID          = 'AW-18209845790';
var CONV_WHATSAPP   = 'AW-18209845790/aCvICKqLg9ocEJ7kkOtD'; // "Click WhatsApp"
var CONV_TELEFONO   = 'AW-18209845790/MYxQCK2Lg9ocEJ7kkOtD'; // "Chiamata Telefonica"
var CONV_PREZZI     = 'AW-18209845790/MKg_CLCLg9ocEJ7kkOtD'; // "Visita Pagina Prezzi"

// Registra il tag Google Ads (si appoggia al gtag.js già caricato)
gtag('config', ADS_ID);

// ── WhatsApp ─────────────────────────────────────────────────
document.querySelectorAll('a[href*="wa.me"]').forEach(function(el) {
  el.addEventListener('click', function() {
    gtag('event', 'conversion', {
      send_to: CONV_WHATSAPP,
      value: 1.0,
      currency: 'EUR'
    });
  });
});

// ── Chiamata telefonica ───────────────────────────────────────
document.querySelectorAll('a[href*="tel:"]').forEach(function(el) {
  el.addEventListener('click', function() {
    gtag('event', 'conversion', {
      send_to: CONV_TELEFONO,
      value: 1.0,
      currency: 'EUR'
    });
  });
});

// ── Micro-conversione: visita pagina prezzi ───────────────────
// TODO: 'prezzi-noleggio' non corrisponde a nessuna pagina esistente sul
// sito (verificato 01/08/26) — questo evento non scatta mai. Correggere il
// path quando si sa quale pagina reale rappresenta i "prezzi".
if (window.location.pathname.indexOf('prezzi-noleggio') !== -1) {
  gtag('event', 'conversion', {
    send_to: CONV_PREZZI,
    value: 0,
    currency: 'EUR'
  });
}
