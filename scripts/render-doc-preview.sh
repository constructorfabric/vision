#!/usr/bin/env bash
# Renders a single markdown doc into a standalone, scrollable HTML page
# using GitHub's markdown API (GFM) — an alternative to the marp-based
# slide deck build. See Makefile's PREVIEW_ENGINE switch.
#
# Usage: render-doc-preview.sh <input.md> <output.html>
set -euo pipefail

if [ $# -lt 2 ]; then
  echo "usage: $(basename "$0") <input.md> <output.html>" >&2
  exit 1
fi

INPUT_MD="$1"
OUTPUT_HTML="$2"
REPO="constructorfabric/vision"
GITHUB_URL="https://github.com/${REPO}/blob/main/$(basename "$INPUT_MD")"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
# shellcheck source=lib/doc-preview-chrome.sh
source "$SCRIPT_DIR/lib/doc-preview-chrome.sh"

CHROME_TITLE=$(grep -m1 -E '^#[[:space:]]+' "$INPUT_MD" | sed -E 's/^#[[:space:]]+//')
[ -z "$CHROME_TITLE" ] && CHROME_TITLE="$(basename "$INPUT_MD" .md)"
CHROME_GH_URL="$GITHUB_URL"
CHROME_MAIN_CLASS="markdown"

command -v jq >/dev/null || { echo "jq is required to build doc previews." >&2; exit 1; }
command -v curl >/dev/null || { echo "curl is required to build doc previews." >&2; exit 1; }

AUTH_HEADER=()
[ -n "${GITHUB_TOKEN:-}" ] && AUTH_HEADER=(-H "Authorization: Bearer ${GITHUB_TOKEN}")

RENDERED_HTML="$(mktemp)"
trap 'rm -f "$RENDERED_HTML"' EXIT

# Strip YAML/Marp frontmatter (the leading --- ... --- block) before
# rendering — GitHub's markdown API has no concept of frontmatter and
# would otherwise render it as a literal paragraph between two rules.
awk '
  NR == 1 && $0 == "---" { infm = 1; next }
  infm && $0 == "---" { infm = 0; next }
  infm { next }
  { print }
' "$INPUT_MD" \
  | jq -Rs --arg context "$REPO" '{text: ., mode: "gfm", context: $context}' \
  | curl -s https://api.github.com/markdown \
      -H "Accept: application/vnd.github+json" \
      -H "Content-Type: application/json" \
      "${AUTH_HEADER[@]}" \
      -d @- \
  > "$RENDERED_HTML"

mkdir -p "$(dirname "$OUTPUT_HTML")"

print_chrome_header > "$OUTPUT_HTML"
cat "$RENDERED_HTML" >> "$OUTPUT_HTML"
print_chrome_footer >> "$OUTPUT_HTML"