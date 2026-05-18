#!/usr/bin/env python3
"""
Deploy SEO files (sitemap.xml, robots.txt) to GitHub and trigger Netlify deploy
"""

import os
import subprocess
import sys
import json

REPO = "governaleguido92-cmyk/Stella-marina"
BRANCH = "main"
OUTPUT_DIR = "/sessions/lucid-magical-johnson/mnt/Downloads--outputs"
FILES = ["sitemap.xml", "robots.txt"]

def run_cmd(cmd, cwd=None, env=None):
    """Run shell command and return output"""
    # Disable git interactive prompts
    env_vars = os.environ.copy()
    env_vars["GIT_TERMINAL_PROMPT"] = "0"
    if env:
        env_vars.update(env)

    result = subprocess.run(cmd, shell=True, cwd=cwd, capture_output=True, text=True, env=env_vars)
    if result.returncode != 0:
        print(f"❌ Errore: {result.stderr}")
        return None
    return result.stdout.strip()

def main():
    print("🚀 Deploy SEO Files to barchefavignana.it")
    print("=" * 50)

    # Get GitHub token
    token = os.environ.get("GITHUB_TOKEN", "").strip()
    if not token:
        print("\n❌ Errore: GITHUB_TOKEN non impostato")
        print("\nEsegui:")
        print('  export GITHUB_TOKEN="ghp_xxxxxxxxxxxxxxxxxxxxx"')
        print("  python3 ~/Downloads/outputs/deploy-seo.py")
        return False

    # Check if files exist
    print("\n📄 Verifying SEO files...")
    for file in FILES:
        path = os.path.join(OUTPUT_DIR, file)
        if os.path.exists(path):
            size = os.path.getsize(path)
            print(f"  ✅ {file} ({size} bytes)")
        else:
            print(f"  ❌ {file} NOT FOUND")
            return False

    # Clone/update repo with token
    repo_dir = "/tmp/stella-marina-deploy"
    repo_url = f"https://{token}@github.com/{REPO}.git"
    print(f"\n📦 Setting up repository...")

    if os.path.exists(repo_dir):
        print(f"  Updating existing repo...")
        run_cmd(f"cd {repo_dir} && git fetch origin && git reset --hard origin/{BRANCH}")
    else:
        print(f"  Cloning repository...")
        run_cmd(f"git clone --branch {BRANCH} {repo_url} {repo_dir}")

    if not os.path.exists(repo_dir):
        print("  ❌ Failed to clone repository")
        return False

    print("  ✅ Repository ready")

    # Copy files
    print(f"\n📝 Copying files to repository...")
    for file in FILES:
        src = os.path.join(OUTPUT_DIR, file)
        dst = os.path.join(repo_dir, file)
        run_cmd(f"cp {src} {dst}")
        print(f"  ✅ {file} copied")

    # Git operations
    print(f"\n💾 Committing to GitHub...")

    os.chdir(repo_dir)

    # Configure git
    run_cmd("git config user.email 'governaleguido92@gmail.com'")
    run_cmd("git config user.name 'Stella Marina SEO'")

    # Check for changes
    status = run_cmd("git status --porcelain")
    if not status:
        print("  ℹ️  No changes detected")
        return True

    # Commit and push
    run_cmd("git add sitemap.xml robots.txt")
    msg = "chore: update sitemap.xml and robots.txt for SEO"
    run_cmd(f'git commit -m "{msg}"')

    print("  🌐 Pushing to GitHub...")
    # Use token in URL for push as well
    push_cmd = f"git remote set-url origin {repo_url} && git push origin {BRANCH}"
    push_result = run_cmd(push_cmd)

    if push_result is None:
        print("  ⚠️  Failed to push (check GitHub credentials)")
        print("  📋 Files are ready in: " + repo_dir)
        return False

    print("  ✅ Pushed to GitHub")

    # Success message
    print("\n" + "=" * 50)
    print("✅ SEO Deploy Completato!")
    print("=" * 50)
    print("\nℹ️  Netlify deployerà automaticamente in 30-60 secondi")
    print("\n📍 File disponibili:")
    print("   • https://barchefavignana.it/sitemap.xml")
    print("   • https://barchefavignana.it/robots.txt")
    print("\n📊 Monitoring deployment:")
    print("   • https://app.netlify.com/projects/musical-unicorn-ee9fde/deploys")
    print("\n🔍 Submit sitemap to Google Search Console:")
    print("   • https://search.google.com/search-console")

    return True

if __name__ == "__main__":
    try:
        success = main()
        sys.exit(0 if success else 1)
    except Exception as e:
        print(f"❌ Errore: {e}")
        sys.exit(1)
