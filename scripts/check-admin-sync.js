#!/usr/bin/env node
// Fails CI if a root .html page isn't registered in admin/config.yml (CMS),
// or if config.yml references a file that doesn't exist.
// Enforces the "new page -> same commit as config.yml entry" rule.

const fs = require("fs");
const path = require("path");

const ROOT = path.resolve(__dirname, "..");
const CONFIG_PATH = path.join(ROOT, "admin", "config.yml");

const EXCLUDED_PAGES = new Set(["404.html"]);

function getRootHtmlPages() {
  return fs
    .readdirSync(ROOT)
    .filter((f) => f.endsWith(".html") && !EXCLUDED_PAGES.has(f));
}

function getConfiguredFiles() {
  const raw = fs.readFileSync(CONFIG_PATH, "utf8");
  const matches = raw.matchAll(/^\s*file:\s*"([^"]+\.html)"\s*$/gm);
  return Array.from(matches, (m) => m[1]);
}

const pages = getRootHtmlPages();
const configured = getConfiguredFiles();

const missingFromConfig = pages.filter((p) => !configured.includes(p));
const missingOnDisk = configured.filter((f) => !fs.existsSync(path.join(ROOT, f)));

if (missingFromConfig.length === 0 && missingOnDisk.length === 0) {
  console.log(`OK: ${pages.length} pages, all registered in admin/config.yml`);
  process.exit(0);
}

if (missingFromConfig.length > 0) {
  console.error("Pagine HTML senza entry in admin/config.yml:");
  missingFromConfig.forEach((p) => console.error(`  - ${p}`));
}
if (missingOnDisk.length > 0) {
  console.error("Entry in admin/config.yml senza file corrispondente:");
  missingOnDisk.forEach((f) => console.error(`  - ${f}`));
}
console.error("\nAggiungi/rimuovi la entry in admin/config.yml nello stesso commit della pagina.");
process.exit(1);
