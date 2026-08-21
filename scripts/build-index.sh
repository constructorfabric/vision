#!/usr/bin/env bash
# Generates site/index.html linking to every generated vision page.
# The index's look tracks PREVIEW_ENGINE: show-md emits the light
# doc-preview shell (matching each rendered doc page), other engines
# keep the original dark marp-flavored index.
#
# Usage: build-index.sh <site_dir> [marp|show-md]
set -euo pipefail

SITE_DIR="${1:-site}"
PREVIEW_ENGINE="${2:-${PREVIEW_ENGINE:-marp}}"
mkdir -p "$SITE_DIR"
INDEX="$SITE_DIR/index.html"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Render with the same chrome as the doc pages so the index doesn't
# look like it came from a different build.
if [ "$PREVIEW_ENGINE" = "show-md" ]; then
  # shellcheck source=lib/doc-preview-chrome.sh
  source "$SCRIPT_DIR/lib/doc-preview-chrome.sh"

  CHROME_TITLE="Constructor Fabric vision documents"
  CHROME_GH_URL="https://github.com/constructorfabric/vision"
  CHROME_MAIN_CLASS="index"

  print_chrome_header > "$INDEX"

  cat >> "$INDEX" <<'HTML'
    <h1>Constructor Fabric vision documents</h1>
    <ul>
HTML

  for md in *.md; do
    [ "$md" = "README.md" ] && continue
    html="${md%.md}.html"
    title=$(grep -m1 -E '^#[[:space:]]+' "$md" | sed -E 's/^#[[:space:]]+//')
    [ -z "$title" ] && title="${md%.md}"
    printf '      <li><a href="%s">%s</a></li>\n' "$html" "$title" >> "$INDEX"
  done

  cat >> "$INDEX" <<'HTML'
    </ul>
HTML

  print_chrome_footer >> "$INDEX"
  exit 0
fi

# Default: marp engine — keep the original dark rose-pine-moon index.
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