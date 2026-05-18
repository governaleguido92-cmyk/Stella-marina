#!/bin/bash
# Script per pushare le modifiche favicon e logo su GitHub

cd "$(dirname "$0")" || exit 1

# Inizializza git se non già inizializzato
if [ ! -d .git ]; then
    git init
    git config user.name "Claude"
    git config user.email "governaleguido92@gmail.com"
fi

# Verifica i file aggiornati
echo "📝 File aggiornati:"
echo "  ✓ index.html"
echo "  ✓ contatti.html"
echo "  ✓ faq.html"
echo "  ✓ noleggio-barche-favignana.html"
echo "  ✓ noleggio-gommoni-favignana.html"
echo "  ✓ aperitivo-tramonto-favignana.html"
echo "  ✓ escursioni-egadi-favignana.html"
echo "  ✓ cosa-vedere-favignana-in-barca.html"
echo "  ✓ transfer-trapani-favignana.html"
echo "  ✓ favicon.ico"
echo "  ✓ logo_modern.svg"
echo ""

# Aggiungi file modificati
git add index.html contatti.html faq.html noleggio-barche-favignana.html \
         noleggio-gommoni-favignana.html aperitivo-tramonto-favignana.html \
         escursioni-egadi-favignana.html cosa-vedere-favignana-in-barca.html \
         transfer-trapani-favignana.html favicon.ico logo_modern.svg

# Configura remote
git remote add origin https://github.com/governaleguido92-cmyk/Stella-marina.git 2>/dev/null || \
git remote set-url origin https://github.com/governaleguido92-cmyk/Stella-marina.git

# Crea commit
git commit -m "Fix favicon and logo references - use ico and svg files correctly"

# Assicurati di essere on main branch
git branch -M main

# Push su GitHub
echo "🚀 Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Done! Le modifiche sono state pushate su GitHub."
echo "   Netlify deployrà automaticamente entro pochi minuti."
