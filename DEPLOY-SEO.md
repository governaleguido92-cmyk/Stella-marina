# 📋 Deploy SEO Files (sitemap.xml + robots.txt)

I file SEO sono pronti. Esegui uno di questi comandi dal tuo terminale:

## Opzione 1: Script Python (Consigliato)

```bash
python3 ~/Downloads/outputs/deploy-seo.py
```

**Cosa fa:**
- Verifica i file SEO
- Clona il repository GitHub
- Copia i file nel repo
- Fa commit e push su GitHub
- Netlify fa il deploy automaticamente

## Opzione 2: Script Bash

```bash
chmod +x ~/Downloads/outputs/deploy-seo.sh
~/Downloads/outputs/deploy-seo.sh
```

## Opzione 3: Manuale (CLI)

```bash
# Clone repository
git clone https://github.com/governaleguido92-cmyk/Stella-marina.git /tmp/stella-marina
cd /tmp/stella-marina

# Copy files
cp ~/Downloads/outputs/sitemap.xml ./
cp ~/Downloads/outputs/robots.txt ./

# Commit and push
git config user.email "governaleguido92@gmail.com"
git config user.name "Stella Marina Admin"
git add sitemap.xml robots.txt
git commit -m "chore: add sitemap.xml and robots.txt for SEO"
git push origin main
```

## Opzione 4: Upload Web (GitHub.com)

1. Vai a: https://github.com/governaleguido92-cmyk/Stella-marina
2. Clicca **Add file** → **Upload files**
3. Seleziona `sitemap.xml` e `robots.txt` da ~/Downloads/outputs/
4. Commit changes
5. ✅ Netlify farà il deploy automaticamente

---

## ✅ Verifica Deployment

Dopo 30-60 secondi:

```bash
# Verifica sitemap
curl -I https://barchefavignana.it/sitemap.xml

# Verifica robots.txt
curl -I https://barchefavignana.it/robots.txt
```

Entrambi devono rispondere con **HTTP 200**.

---

## 🔍 Sottometti a Google Search Console

Una volta deployato:

1. Vai a: https://search.google.com/search-console
2. Seleziona sito: `barchefavignana.it`
3. Menu sinistra → **Sitemap**
4. Clicca **Add sitemap**
5. Digita: `sitemap.xml`
6. Clicca **Submit**

Google indicizzerà tutte le pagine in 24-48 ore.

---

## 📊 Monitor Deployment

```bash
# Guarda i deploy in tempo reale
open https://app.netlify.com/projects/musical-unicorn-ee9fde/deploys
```

Oppure da terminale:
```bash
netlify status
```

---

## File Inclusi

- **sitemap.xml** (2.1 KB) — Tutte le 9 pagine pubbliche
- **robots.txt** (276 B) — Crawl rules + link a sitemap
- **deploy-seo.sh** — Script bash per deploy
- **deploy-seo.py** — Script Python per deploy

**Tutti i file sono in:** ~/Downloads/outputs/
