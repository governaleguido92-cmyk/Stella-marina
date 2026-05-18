#!/bin/bash
# Script to push all Stella Marina project files to GitHub

# Navigate to the project directory
cd "$(dirname "$0")" || exit 1

# Initialize git if not already initialized
if [ ! -d .git ]; then
    git init
    git config user.name "Claude"
    git config user.email "governaleguido92@gmail.com"
fi

# Add all files and create commit
git add .
git commit -m "Upload complete Stella Marina project with all files" 2>/dev/null || echo "Already up to date"

# Configure remote
git remote add origin https://github.com/governaleguido92-cmyk/Stella-marina.git 2>/dev/null || git remote set-url origin https://github.com/governaleguido92-cmyk/Stella-marina.git

# Set main as default branch and push
git branch -M main
git push -u origin main

echo "✓ Push complete! Check your GitHub repository."
