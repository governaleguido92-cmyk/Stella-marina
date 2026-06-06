// ============================================================
// Stella Marina – Google Ads Conversion Tracking
// barchefavignana.it
//
// SETUP: sostituisci i tre valori sotto con i tuoi ID reali
// ============================================================

var ADS_ID          = 'AW-XXXXXXXXXX';          // es. AW-1234567890
var CONV_WHATSAPP   = 'AW-XXXXXXXXXX/AAAAAAAAA'; // ID conversione "Click WhatsApp"
var CONV_TELEFONO   = 'AW-XXXXXXXXXX/BBBBBBBBB'; // ID conversione "Chiamata telefonica"
var CONV_PREZZI     = 'AW-XXXXXXXXXX/CCCCCCCCC'; // ID conversione "Visita pagina prezzi"

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
if (window.location.pathname.indexOf('prezzi-noleggio') !== -1) {
  gtag('event', 'conversion', {
    send_to: CONV_PREZZI,
    value: 0,
    currency: 'EUR'
  });
}
