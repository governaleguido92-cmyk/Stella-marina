#!/bin/bash

# Simple deploy script for SEO files
set -e

TOKEN="${GITHUB_TOKEN}"
if [ -z "$TOKEN" ]; then
  echo "❌ GITHUB_TOKEN non impostato"
  echo ""
  echo "Esegui:"
  echo '  export GITHUB_TOKEN="ghp_xxxxxxxxxxxxxxxxxxxxx"'
  echo "  bash ~/Downloads/outputs/deploy.sh"
  exit 1
fi

REPO_DIR="/tmp/stella-marina-seo"
REPO_URL="https://${TOKEN}@github.com/governaleguido92-cmyk/Stella-marina.git"

echo "🚀 Deploy SEO Files"
echo "=================="

# Clean and clone
echo "📦 Cloning repository..."
rm -rf "$REPO_DIR" 2>/dev/null || true
git clone "$REPO_URL" "$REPO_DIR" 2>&1 | grep -v "Cloning" || true
cd "$REPO_DIR"

# Copy files
echo "📄 Copying files..."
cp ~/Downloads/outputs/sitemap.xml ./
cp ~/Downloads/outputs/robots.txt ./

# Configure git
git config user.email "governaleguido92@gmail.com"
git config user.name "Admin"

# Commit
echo "💾 Committing..."
git add sitemap.xml robots.txt
git commit -m "chore: add SEO files" 2>&1 | grep -v "changed" || true

# Push
echo "🌐 Pushing to GitHub..."
GIT_TERMINAL_PROMPT=0 git push origin main 2>&1 | grep -v "^To " || true

echo ""
echo "✅ Done!"
echo "Netlify deploy in 30-60 secondi"
