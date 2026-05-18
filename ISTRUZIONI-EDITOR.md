# 📝 Editor Contenuti Stella Marina

## Come Usare l'Editor

### 1. **Apri l'Editor**
- Apri il file `editor-semplice.html` nel browser (nessun server necessario)
- Non richiede login o autenticazione
- Funziona completamente offline

### 2. **Modifica i Contenuti**
Seleziona una sezione dal menu superiore:
- 📄 **Homepage** - Titolo, sottotitolo, descrizione, immagine principale
- ⛵ **Noleggio Barche** - Dettagli e servizi di noleggio barche
- 🚤 **Noleggio Gommoni** - Dettagli e servizi di noleggio gommoni
- 🏝️ **Escursioni** - Informazioni su escursioni alle isole Egadi
- ❓ **FAQ** - Domande frequenti e risposte
- 📞 **Contatti** - Telefono, email, indirizzo, orari
- ⚙️ **Impostazioni** - Nome azienda, logo, coordinate GPS, rating

### 3. **Compila i Campi**
Compila i campi disponibili:
- I campi marcati con `*` sono obbligatori
- Usa il pulsante **+ Aggiungi** per aggiungere più elementi (servizi, isole, FAQ)
- Scrivi il testo come preferisci, usa markdown nei campi "Contenuto"

### 4. **Anteprima**
- Clicca il pulsante **🔄 Aggiorna Anteprima** per vedere come appare il file markdown
- Vedrai il formato YAML che verrà creato

### 5. **Scarica il File**
- Clicca **⬇️ Scarica File** 
- Si scaricherà un file `.md` (es: `homepage.md`)

### 6. **Carica su GitHub**
- Accedi a GitHub → il tuo repository `barchefavignana.it`
- Vai nella cartella `/content/`
- Clicca **Add file** → **Upload files**
- Trascina il file scaricato (oppure selezionalo)
- In basso: "Commit changes" → **Commit changes**

### 7. **Auto-Deploy**
Una volta caricato su GitHub:
- ✅ Netlify lo vede automaticamente
- ✅ Fa il build del sito
- ✅ Il tuo sito si aggiorna in pochi secondi

---

## 📋 Struttura dei File

I file che scarica l'editor hanno questa struttura:

```markdown
---
title: Titolo della Pagina
subtitle: Sottotitolo (opzionale)
description: Descrizione breve
campo1: valore1
campo2: valore2
---

Contenuto markdown qui...
```

La parte tra `---` e `---` è il **YAML frontmatter** (metadati).
Tutto quello che viene dopo è il **contenuto** in markdown.

---

## 🎯 Markdown - Cheat Sheet Rapida

```markdown
# Titolo H1
## Titolo H2
### Titolo H3

**Testo in grassetto**
*Testo in corsivo*
~~Testo barrato~~

- Elemento lista
- Elemento lista

1. Elemento numerato
2. Elemento numerato

[Testo link](https://example.com)

![Testo alternativo immagine](/images/immagine.jpg)
```

---

## ✅ Checklist Prima di Caricare

- [ ] Ho compilato tutti i campi obbligatori (marcati con `*`)
- [ ] Ho controllato l'anteprima markdown
- [ ] Ho scaricato il file `.md`
- [ ] Vado su GitHub con il file giusto
- [ ] Carico nella cartella corretta (`/content/`)
- [ ] Faccio il commit

---

## 🐛 Problemi Comuni

### "Non riesco a scaricare il file"
- Assicurati che il browser non blocchi i download
- Prova un browser diverso

### "Il sito non si aggiorna dopo aver caricato il file"
- Aspetta 30 secondi (Netlify ha bisogno di tempo per fare il build)
- Vai su Netlify dashboard → vedi se il deploy è in corso
- Ricaricare il sito (Cmd+Shift+R o Ctrl+Shift+R)

### "Non vedo il file caricato"
- Controlla di averlo caricato nella cartella `/content/` giusta
- Verifica il nome del file (es: `homepage.md` non `homepage`)

---

## 📞 Domande?

Se hai domande, mi contatti!
