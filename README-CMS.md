# 📖 Stella Marina - Guida Rapida CMS

## Cosa è Decap CMS?

Un **pannello di amministrazione visuale** dove puoi modificare il sito senza scrivere codice. Accedi a `/admin` e edita tutto facilmente.

---

## 🎯 Le Tue Pagine

| Pagina | URL | Cosa puoi editare |
|--------|-----|------------------|
| **Homepage** | `/` | Titolo, sottotitolo, hero image, CTA |
| **Noleggio Barche** | `/noleggio-barche-favignana` | Titolo, prezzo, servizi, descrizione |
| **Noleggio Gommoni** | `/noleggio-gommoni-favignana` | Titolo, prezzo, servizi, descrizione |
| **Escursioni Egadi** | `/escursioni-egadi-favignana` | Isole, durata, prezzo, descrizione |
| **FAQ** | `/faq` | Domande e risposte |
| **Contatti** | `/contatti` | Telefono, email, indirizzo, orari |

---

## 📁 Struttura File

```
/Users/guidogovernale/Downloads/outputs/
├── admin/
│   ├── index.html          (↪ pannello CMS)
│   └── config.yml          (↪ configurazione)
├── content/
│   ├── homepage.md         (↪ contenuti homepage)
│   ├── noleggio-barche.md  (↪ contenuti barche)
│   ├── noleggio-gommoni.md (↪ contenuti gommoni)
│   ├── escursioni.md       (↪ contenuti escursioni)
│   ├── faq.md              (↪ FAQ)
│   ├── contatti.md         (↪ contatti)
│   └── site-settings.md    (↪ impostazioni globali)
├── index.html              (↪ pagina homepage)
├── noleggio-barche-favignana.html
├── noleggio-gommoni-favignana.html
├── cosa-vedere-favignana-in-barca.html
├── escursioni-egadi-favignana.html
├── aperitivo-tramonto-favignana.html
├── transfer-trapani-favignana.html
├── faq.html
├── contatti.html
├── stella-marina-seo-tracker.html
├── netlify.toml            (↪ configurazione Netlify)
├── deploy.sh               (↪ script deploy)
└── da_eliminare/           (↪ file vecchi - puoi eliminare)
```

---

## 🚀 Come Iniziare

1. **Fai il deploy**: Segui il file `SETUP-CMS.md`
2. **Accedi**: https://barchefavignana.it/admin
3. **Edita**: Clicca su una pagina e modifica i campi
4. **Salva**: Click "Save" e Netlify deploya automaticamente

---

## 💡 Consigli

### Editare un titolo
1. Clicca su **"Homepage"**
2. Modifica il campo **"Titolo"**
3. Click **"Save"** → Fatto! ✅

### Aggiungere una FAQ
1. Clicca su **"FAQ"**
2. Scorri fino a **"FAQ"** (la sezione)
3. Click **"Add"** per aggiungere una domanda
4. Scrivi domanda e risposta
5. Click **"Save"** → Pubblicate! ✅

### Cambiare immagine
1. Clicca su **"Noleggio Barche"**
2. Seleziona il campo **"Immagine"**
3. Click su **"Choose an image"**
4. Carica una foto dal tuo computer
5. Click **"Save"** → Aggiornate! ✅

---

## ⚙️ Impostazioni Globali

Vai su **"Impostazioni Sito"** per cambiare:
- Nome azienda
- Logo
- Telefono principale
- Email principale
- Indirizzo
- Coordinate GPS
- Rating Google
- Numero di recensioni

---

## 🔐 Sicurezza

- Solo tu puoi accedere (login richiesto)
- Le modifiche vanno su GitHub automaticamente
- Ogni modifica è tracciata e reversibile

---

## 📞 Supporto

Hai domande? Contattami! Sono qui per aiutare il tuo CMS.

---

**Happy editing! 🎉**

Stella Marina - Noleggio Barche Favignana
