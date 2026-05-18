#!/bin/bash

# Deploy SEO files (sitemap.xml e robots.txt) to GitHub
# Uso: ./deploy-seo.sh

set -e

REPO_URL="https://github.com/governaleguido92-cmyk/Stella-marina.git"
REPO_DIR="/tmp/stella-marina-deploy"
GITHUB_TOKEN="${GITHUB_TOKEN:-}"

echo "🚀 Deploy SEO files to barchefavignana.it"
echo "==========================================="

# Clone repository
echo "📦 Cloning repository..."
if [ -d "$REPO_DIR" ]; then
  rm -rf "$REPO_DIR"
fi
git clone "$REPO_URL" "$REPO_DIR"
cd "$REPO_DIR"

# Copy SEO files
echo "📄 Copying SEO files..."
cp /Users/guidogovernale/Downloads/outputs/sitemap.xml ./
cp /Users/guidogovernale/Downloads/outputs/robots.txt ./

# Commit and push
echo "💾 Committing changes..."
git config user.email "governaleguido92@gmail.com"
git config user.name "Stella Marina Admin"
git add sitemap.xml robots.txt
git commit -m "chore: update sitemap and robots.txt for SEO"

echo "🌐 Pushing to GitHub..."
git push origin main

echo ""
echo "✅ Deploy completato!"
echo ""
echo "Netlify deployerà automaticamente in 30-60 secondi."
echo "Verifica il deployment: https://app.netlify.com/projects/musical-unicorn-ee9fde/deploys"
echo ""
echo "Sitemap disponibile a: https://barchefavignana.it/sitemap.xml"
echo "Robots.txt disponibile a: https://barchefavignana.it/robots.txt"
