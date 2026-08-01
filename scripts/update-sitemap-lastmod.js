#!/usr/bin/env node
// Rewrites each <lastmod> in sitemap.xml to the last git commit date of the
// page it points to, so lastmod can't drift stale after a content edit
// (see: GA4/FAQ lastmod bug fixed manually on 2026-08-01).

const fs = require("fs");
const path = require("path");
const { execFileSync } = require("child_process");

const ROOT = path.resolve(__dirname, "..");
const SITEMAP_PATH = path.join(ROOT, "sitemap.xml");

function locToFile(loc) {
  const url = new URL(loc);
  const p = url.pathname === "/" ? "index.html" : url.pathname.replace(/^\//, "");
  return p;
}

function lastCommitDate(file) {
  const filePath = path.join(ROOT, file);
  if (!fs.existsSync(filePath)) return null;
  try {
    const out = execFileSync(
      "git",
      ["log", "-1", "--format=%cd", "--date=short", "--", file],
      { cwd: ROOT, encoding: "utf8" }
    ).trim();
    return out || null;
  } catch {
    return null;
  }
}

let xml = fs.readFileSync(SITEMAP_PATH, "utf8");

const urlBlockRe = /<url>\s*(?:<!--[^>]*-->\s*)?[\s\S]*?<\/url>/g;
let changed = false;

xml = xml.replace(urlBlockRe, (block) => {
  const locMatch = block.match(/<loc>([^<]+)<\/loc>/);
  if (!locMatch) return block;
  const file = locToFile(locMatch[1]);
  const date = lastCommitDate(file);
  if (!date) return block;

  return block.replace(/<lastmod>[^<]+<\/lastmod>/, (tag) => {
    const current = tag.match(/<lastmod>([^<]+)<\/lastmod>/)[1];
    if (current === date) return tag;
    changed = true;
    console.log(`${file}: ${current} -> ${date}`);
    return `<lastmod>${date}</lastmod>`;
  });
});

if (changed) {
  fs.writeFileSync(SITEMAP_PATH, xml);
  console.log("sitemap.xml aggiornato");
} else {
  console.log("sitemap.xml già aggiornato, nessuna modifica");
}
