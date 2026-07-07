#!/usr/bin/env bash
# Generates site/index.html linking to every generated vision page.
# Run after the `slides` make target has populated $SITE_DIR with one
# .html file per root-level vision markdown document.
set -euo pipefail

SITE_DIR="${1:-site}"
mkdir -p "$SITE_DIR"
INDEX="$SITE_DIR/index.html"

cat > "$INDEX" <<'HTML'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Constructor Fabric vision documents</title>
<style>
  :root { color-scheme: dark; }
  body {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
    background: #232136;
    color: #e0def4;
    max-width: 720px;
    margin: 0 auto;
    padding: 48px 24px;
    line-height: 1.5;
  }
  h1 { color: #ea9a97; }
  ul { padding-left: 1.2em; }
  a { color: #c4a7e7; text-decoration: none; font-size: 1.15em; }
  a:hover { text-decoration: underline; }
  li { margin-bottom: 0.7em; }
</style>
</head>
<body>
<h1>Constructor Fabric vision documents</h1>
<ul>
HTML

for md in *.md; do
  [ "$md" = "README.md" ] && continue
  html="${md%.md}.html"
  title=$(grep -m1 -E '^#[[:space:]]+' "$md" | sed -E 's/^#[[:space:]]+//')
  [ -z "$title" ] && title="${md%.md}"
  printf '  <li><a href="%s">%s</a></li>\n' "$html" "$title" >> "$INDEX"
done

cat >> "$INDEX" <<'HTML'
</ul>
</body>
</html>
HTML
