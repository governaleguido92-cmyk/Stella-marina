#!/bin/bash

# Stella Marina - Deployment Script
# Questo script carica i file su Netlify

echo "🚀 Stella Marina - Deploy Script"
echo "================================"

# Vai nella cartella PRONTO-NETLIFY
cd /Users/guidogovernale/Downloads/outputs/PRONTO-NETLIFY

if [ ! -d "PRONTO-NETLIFY" ]; then
    echo "❌ Cartella PRONTO-NETLIFY non trovata"
    exit 1
fi

cd PRONTO-NETLIFY

echo "📍 Cartella corrente: $(pwd)"
echo ""

# Verifica se netlify CLI è installato
if ! command -v netlify &> /dev/null; then
    echo "📦 Installando Netlify CLI globalmente..."
    npm install -g netlify-cli
    if [ $? -ne 0 ]; then
        echo "❌ Installazione fallita. Prova manualmente:"
        echo "   npm install -g netlify-cli"
        exit 1
    fi
fi

echo "✅ Netlify CLI trovato"
echo ""

# Deploy
echo "🚀 Avvio deploy..."
netlify deploy --prod --dir=.

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ DEPLOY COMPLETATO!"
    echo "🌐 Il tuo sito è online: https://barchefavignana.it"
else
    echo "❌ Deploy fallito"
    exit 1
fi
