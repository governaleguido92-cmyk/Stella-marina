# 🚀 Codice Deploy - Stella Marina

## Status Attuale

✅ **Deploy Automatico**: Attivo  
📍 **Repository**: github.com/governaleguido92-cmyk/Stella-marina  
🔗 **Branch**: main (deploy automatico da questo branch)  
⚡ **Piattaforma**: Netlify

---

## 🔧 Opzioni di Deploy

### 1. **Deploy Automatico** (PREDEFINITO)
Non devi fare nulla! Quando fai push su GitHub branch `main`:
```bash
# Fai le modifiche in locale
git add .
git commit -m "Descrizione modifiche"
git push origin main

# Netlify automaticamente:
# 1. Vede il push
# 2. Avvia il build
# 3. Pubblica il sito
# Tempo: 30-60 secondi
```

---

### 2. **Deploy Manuale da Dashboard Netlify**

#### Opzione A: Deploy Normale
1. Vai su: https://app.netlify.com/projects/musical-unicorn-ee9fde/deploys
2. Clicca bottone **"Trigger deploy"**
3. Seleziona **"Deploy project"**
4. Attendi completamento (30-60 secondi)

#### Opzione B: Deploy Senza Cache
Usa quando hai aggiornato CSS/JS e la cache vecchia crea problemi:
1. https://app.netlify.com/projects/musical-unicorn-ee9fde/deploys
2. **"Trigger deploy"** → **"Deploy project without cache"**

---

### 3. **Deploy via Netlify CLI** (Command Line)

#### Installa Netlify CLI
```bash
npm install -g netlify-cli
```

#### Login a Netlify
```bash
netlify login
```

#### Deploy il Sito
```bash
# Naviga nella cartella del sito
cd /Users/guidogovernale/Downloads/outputs

# Deploy in produzione
netlify deploy --prod --dir=.

# Output:
# ✔ Deploy is live!
# Live URL: https://barchefavignana.it
```

#### Deploy Preview (test senza andare live)
```bash
netlify deploy --dir=.
# Crea un URL temporaneo per testare prima di andare live
```

---

### 4. **Deploy via cURL** (Webhook)

Se vuoi triggerare il deploy da uno script esterno:

```bash
# Ottieni il build hook URL da Netlify:
# Settings → Build & deploy → Build hooks
# Copia l'URL del webhook

# Poi esegui:
curl -X POST https://api.netlify.com/build_hooks/YOUR_BUILD_HOOK_ID

# Netlify farà il deploy automaticamente
```

---

## 📋 Build Settings Attuali

```
Build command: (none configured)
Publish directory: /
Environment variables:
  - (none)
```

⚠️ **Nota**: Il sito è statico HTML, non ha build command.

---

## 🔗 Link Utili

| Link | Descrizione |
|------|-------------|
| [Dashboard Deploy](https://app.netlify.com/projects/musical-unicorn-ee9fde/deploys) | Cronologia deploy |
| [Project Settings](https://app.netlify.com/projects/musical-unicorn-ee9fde/settings) | Configurazione progetto |
| [Domain Settings](https://app.netlify.com/projects/musical-unicorn-ee9fde/settings/domain) | Gestione dominio |
| [Environment Variables](https://app.netlify.com/projects/musical-unicorn-ee9fde/settings/env) | Variabili di ambiente |
| [GitHub Integration](https://app.netlify.com/sites/musical-unicorn-ee9fde/settings/github) | Sincronizzazione GitHub |

---

## 🐛 Se il Deploy Fallisce

### Problema: "Build script returned non-zero exit code"
Questo significa che il sito non ha uno script di build configurato.  
**Soluzione**: Il sito è già statico, non ha bisogno di build. Ignora questo errore se il sito è pubblicato correttamente.

### Problema: "Site not found"
Aspetta 30 secondi e ricaricare il browser (Cmd+Shift+R)

### Problema: "Changes not visible"
1. Ctrl+Shift+R per svuotare cache
2. Vai su Dashboard → Trigger deploy → Deploy project without cache

---

## 📱 Workflow Consigliato

```
┌─────────────────────────────────────────┐
│ 1. Modifica contenuti con editor.html   │
│    (scarica file .md)                   │
└──────────────┬──────────────────────────┘
               ↓
┌──────────────────────────────────────────┐
│ 2. Carica file su GitHub /content/      │
│    (clicca Upload → Commit)              │
└──────────────┬──────────────────────────┘
               ↓
┌──────────────────────────────────────────┐
│ 3. Netlify automaticamente:              │
│    - Vede il push su GitHub              │
│    - Pubblica il sito                    │
│    - ✅ Done! (30-60 secondi)            │
└──────────────────────────────────────────┘
```

---

## 🎯 Comandi Veloci

| Azione | Comando |
|--------|---------|
| Deploy manuale | `netlify deploy --prod --dir=.` |
| Deploy preview | `netlify deploy --dir=.` |
| Vedi status | `netlify status` |
| Accedi | `netlify login` |
| Apri dashboard | `netlify open` |

---

## ✅ Checklist Deploy

- [ ] Ho modificato i file e salvato `.md`
- [ ] Ho caricato su GitHub `/content/`
- [ ] Ho fatto commit
- [ ] Aspetto 30 secondi
- [ ] Ricaricar il sito (Cmd+Shift+R)
- [ ] Verifico che i cambiamenti sono visibili

---

## 📞 Info Progetto

```
Project ID: musical-unicorn-ee9fde
Site: barchefavignana.it
Repository: github.com/governaleguido92-cmyk/Stella-marina
Branch: main
Build: Static (no build command)
```

