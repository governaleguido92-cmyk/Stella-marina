# 🚀 Setup Decap CMS - Guida Passo Passo

## STEP 1: Deploy del Sito Aggiornato

### Nel tuo Terminal (o iTerm):

```bash
cd /Users/guidogovernale/Downloads/outputs
netlify deploy --prod --dir=.
```

Aspetta che il deploy finisca. Dovresti vedere:
```
✅ Deploy completato!
🌐 Sito live: https://barchefavignana.it
```

---

## STEP 2: Collega GitHub a Netlify

Se non l'hai già fatto:

1. Vai su: https://app.netlify.com
2. Fai login (o crea account)
3. Click su **"Add new site"** > **"Connect to Git"**
4. Seleziona **GitHub** e autorizza
5. Scegli il repository della tua cartella `/Users/guidogovernale/Downloads/outputs`
6. Click **"Deploy"**

Netlify farà il deploy automatico ogni volta che fai un push su GitHub.

---

## STEP 3: Abilita Netlify Identity (IMPORTANTE!)

1. Nel dashboard Netlify, vai a **Site settings**
2. Nel menu a sinistra, cerca **Identity**
3. Click **"Enable Identity"**
4. Scorri fino a **"Services"** > Click **"Edit settings"**
5. Alla voce **"Git Gateway"**, abilita
6. Salva

```
✅ Git Gateway abilitato
```

---

## STEP 4: Crea il tuo Account Admin

1. Vai su: **https://barchefavignana.it/admin**
2. Vedrai una schermata di login
3. Click **"Sign up"**
4. Inserisci:
   - Email: il tuo indirizzo email
   - Password: una password sicura
5. Confermato!

```
✅ Account creato - Puoi fare login
```

---

## STEP 5: Inizia a Editare!

1. Vai su: **https://barchefavignana.it/admin**
2. Fai login con il tuo email e password
3. Vedrai le **"Pagine del Sito"** nel menu

### Cosa puoi editare:

- **Homepage** - Titolo, descrizione, immagine hero
- **Noleggio Barche** - Titolo, prezzo, servizi
- **Noleggio Gommoni** - Titolo, prezzo, servizi
- **Escursioni Egadi** - Isole, durata, prezzi
- **FAQ** - Domande e risposte
- **Contatti** - Telefono, email, indirizzo, orari
- **Impostazioni Sito** - Nome azienda, logo, rating, coordinate GPS

### Come funziona:

1. Clicca su una pagina (es. "Homepage")
2. Edita i campi che vedi
3. Clicca **"Save"** in alto a destra
4. Decap CMS fa automaticamente:
   - Salva il file Markdown
   - Fa un commit su GitHub
   - Netlify fa il deploy automatico
   - Il sito si aggiorna in 30 secondi

```
✅ Tutto automatico!
```

---

## 🎯 Fatto!

Ora hai un CMS completo per editare il sito senza codice!

### URL Importanti:

- 🌐 **Sito**: https://barchefavignana.it
- 📝 **Admin Panel**: https://barchefavignana.it/admin
- ⚙️ **Dashboard Netlify**: https://app.netlify.com

---

## ⚠️ Se Hai Problemi:

### Il login non funziona?
- Verifica che Git Gateway sia abilitato in Site settings > Identity
- Prova a disabilitare le estensioni del browser (soprattutto AdBlock)
- Cancella i cookie del sito

### Le modifiche non si salvano?
- Controlla che sei connesso a Internet
- Guarda il terminale di Netlify per errori
- Ricarica la pagina

### Le immagini non caricano?
- Le immagini vanno nella cartella `/images`
- Usa formati: JPG, PNG, WebP
- Massimo 5MB per immagine

---

## 📱 Supporto

Se hai problemi, contattami! Sono qui per aiutare.

Happy editing! 🎉
