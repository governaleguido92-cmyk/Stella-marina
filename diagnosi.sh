#!/bin/bash

echo "🔍 Diagnosi Repository Stella Marina"
echo "===================================="

cd /tmp/stella-marina-seo || {
  echo "Repository non trovato. Clono..."
  cd /tmp
  TOKEN="${GITHUB_TOKEN}"
  git clone https://${TOKEN}@github.com/governaleguido92-cmyk/Stella-marina.git stella-marina-seo
  cd stella-marina-seo
}

echo ""
echo "📁 Struttura root directory:"
ls -la | grep -E "(html|toml|txt|xml)" | awk '{print $9}'

echo ""
echo "📊 File HTML trovati:"
git ls-tree -r HEAD | grep "\.html$" | wc -l

echo ""
echo "📋 Dove sono i file HTML:"
git ls-tree -r HEAD | grep "\.html$" | head -3

echo ""
echo "🔍 Verifica netlify.toml:"
cat netlify.toml | grep "publish"

echo ""
echo "✅ Conclusione:"
if git ls-tree -r HEAD | grep "^100644.*index.html$" | grep -v "/"; then
  echo "✅ index.html è nella ROOT - OK"
else
  echo "❌ index.html NON è nella root"
  echo "   Soluzione: Copiare gli HTML dalla cartella a root"
fi
