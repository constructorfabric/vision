# shellcheck shell=bash
# Shared chrome for show-md-style pages: CSS, top bar, and the closing
# TOC scaffold / heading-anchor script. Source this from any script that
# wants to render the show-md look.
#
# After sourcing, callers can use:
#   $CHROME_TITLE   - page title
#   $CHROME_GH_URL  - "View on GitHub" URL
#   print_chrome_header
#   print_chrome_footer
#
# The body/main content lives between the two calls — render-doc-preview.sh
# splices in GitHub-rendered HTML, build-index.sh splices in a <ul>.

: "${CHROME_TITLE:=Constructor Fabric}"
: "${CHROME_GH_URL:=https://github.com/constructorfabric/vision}"

# Suffix appended to every URL so this script works regardless of where
# the generated HTML lives (a docs site, a subpath, file://, etc.).
CHROME_BASE_HREF="${CHROME_BASE_HREF:-./}"

print_chrome_header() {
  cat <<EOF
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>$CHROME_TITLE</title>
  <base href="$CHROME_BASE_HREF">
  <style>
    /* =========================================================
       Base
       ========================================================= */
    :root {
      color-scheme: light;
      --background: #ffffff;
      --foreground: #171717;
      --muted-foreground: #666666;
      --border: #eaeaea;
      --border-strong: #d4d4d4;
      --subtle: #fafafa;
      --code-background: #f6f6f6;
      --link: #0068d6;
      --content-width: 820px;
      --toc-width: 210px;
    }
    * {
      box-sizing: border-box;
    }
    html {
      scroll-behavior: smooth;
      background: var(--background);
    }
    body {
      margin: 0;
      background: var(--background);
      color: var(--foreground);
      font-family:
        -apple-system,
        BlinkMacSystemFont,
        "Segoe UI",
        Helvetica,
        Arial,
        sans-serif,
        "Apple Color Emoji",
        "Segoe UI Emoji";
      font-size: 16px;
      line-height: 1.7;
      -webkit-font-smoothing: antialiased;
      text-rendering: optimizeLegibility;
    }
    /* =========================================================
       Top bar
       ========================================================= */
    .topbar {
      position: sticky;
      top: 0;
      z-index: 100;
      height: 64px;
      display: flex;
      align-items: center;
      background: rgba(255, 255, 255, 0.92);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid var(--border);
    }
    .topbar-inner {
      width: 100%;
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 32px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
    }
    .brand {
      font-size: 15px;
      line-height: 1;
      font-weight: 600;
      letter-spacing: -0.01em;
      color: var(--foreground);
      text-decoration: none;
    }
    .topbar-link {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      color: var(--muted-foreground);
      text-decoration: none;
      font-size: 14px;
      font-weight: 500;
      transition: color 0.15s ease;
    }
    .topbar-link:hover {
      color: var(--foreground);
    }
    /* =========================================================
       Overall layout
       ========================================================= */
    .page {
      width: 100%;
      max-width: 1280px;
      margin: 0 auto;
      display: grid;
      grid-template-columns:
        minmax(0, 1fr)
        var(--content-width)
        var(--toc-width);
      gap: 56px;
      padding: 64px 32px 120px;
    }
    .markdown,
    .index {
      grid-column: 2;
      min-width: 0;
    }
    .toc {
      grid-column: 3;
    }
    /* =========================================================
       Typography
       ========================================================= */
    .markdown h1,
    .markdown h2,
    .markdown h3,
    .markdown h4,
    .markdown h5,
    .markdown h6 {
      color: var(--foreground);
      font-weight: 600;
      line-height: 1.25;
      letter-spacing: -0.025em;
      scroll-margin-top: 96px;
    }
    .markdown h1 {
      margin: 0 0 28px;
      font-size: 42px;
      line-height: 1.12;
      letter-spacing: -0.045em;
      font-weight: 650;
    }
    .markdown h2 {
      margin: 64px 0 20px;
      padding-top: 8px;
      font-size: 28px;
      letter-spacing: -0.035em;
    }
    .markdown h3 {
      margin: 40px 0 14px;
      font-size: 21px;
      letter-spacing: -0.025em;
    }
    .markdown h4 {
      margin: 32px 0 12px;
      font-size: 17px;
    }
    .markdown p {
      margin: 0 0 20px;
      color: #333333;
    }
    .markdown strong {
      color: var(--foreground);
      font-weight: 600;
    }
    /* =========================================================
       Index list
       ========================================================= */
    .index h1 {
      margin: 0 0 28px;
      font-size: 42px;
      line-height: 1.12;
      letter-spacing: -0.045em;
      font-weight: 650;
    }
    .index ul {
      margin: 0;
      padding: 0;
      list-style: none;
    }
    .index li {
      margin: 0 0 14px;
    }
    .index a {
      display: block;
      padding: 16px 20px;
      color: var(--foreground);
      text-decoration: none;
      font-size: 17px;
      font-weight: 500;
      line-height: 1.4;
      background: var(--background);
      border: 1px solid var(--border);
      border-radius: 10px;
      transition: border-color 0.15s ease, color 0.15s ease;
    }
    .index a:hover {
      color: var(--link);
      border-color: var(--border-strong);
    }
    /* =========================================================
       Links
       ========================================================= */
    .markdown a {
      color: var(--link);
      text-decoration: none;
      text-underline-offset: 3px;
    }
    .markdown a:hover {
      text-decoration: underline;
    }
    /* =========================================================
       Lists
       ========================================================= */
    .markdown ul,
    .markdown ol {
      margin: 0 0 22px;
      padding-left: 26px;
      color: #333333;
    }
    .markdown li {
      margin: 6px 0;
      padding-left: 3px;
    }
    .markdown li > p {
      margin-bottom: 8px;
    }
    .markdown input[type="checkbox"] {
      margin-right: 8px;
    }
    /* =========================================================
       Horizontal rule
       ========================================================= */
    .markdown hr {
      border: 0;
      border-top: 1px solid var(--border);
      margin: 48px 0;
    }
    /* =========================================================
       Blockquotes / notes
       ========================================================= */
    .markdown blockquote {
      margin: 28px 0;
      padding: 16px 20px;
      background: var(--subtle);
      border: 1px solid var(--border);
      border-left: 3px solid var(--border-strong);
      border-radius: 8px;
      color: #444444;
    }
    .markdown blockquote > :first-child {
      margin-top: 0;
    }
    .markdown blockquote > :last-child {
      margin-bottom: 0;
    }
    /* =========================================================
       Inline code
       ========================================================= */
    .markdown code {
      font-family:
        ui-monospace,
        SFMono-Regular,
        Menlo,
        Monaco,
        Consolas,
        "Liberation Mono",
        monospace;
      font-size: 0.875em;
    }
    .markdown :not(pre) > code {
      padding: 2px 5px;
      color: #242424;
      background: var(--code-background);
      border: 1px solid var(--border);
      border-radius: 5px;
    }
    /* =========================================================
       Code blocks
       ========================================================= */
    .markdown pre {
      overflow-x: auto;
      margin: 24px 0;
      padding: 18px 20px;
      color: #242424;
      background: var(--subtle);
      border: 1px solid var(--border);
      border-radius: 10px;
      line-height: 1.55;
    }
    .markdown pre code {
      padding: 0;
      background: transparent;
      border: 0;
      color: inherit;
      font-size: 13px;
    }
    /* =========================================================
       Tables
       ========================================================= */
    .markdown table {
      width: 100%;
      margin: 28px 0;
      border-collapse: separate;
      border-spacing: 0;
      font-size: 14px;
      border: 1px solid var(--border);
      border-radius: 10px;
      overflow: hidden;
    }
    .markdown thead {
      background: var(--subtle);
    }
    .markdown th {
      padding: 11px 14px;
      color: var(--foreground);
      font-weight: 600;
      text-align: left;
      border-bottom: 1px solid var(--border);
    }
    .markdown td {
      padding: 11px 14px;
      color: #3a3a3a;
      border-bottom: 1px solid var(--border);
    }
    .markdown tr:last-child td {
      border-bottom: 0;
    }
    .markdown th + th,
    .markdown td + td {
      border-left: 1px solid var(--border);
    }
    /* =========================================================
       Images
       ========================================================= */
    .markdown img {
      display: block;
      max-width: 100%;
      height: auto;
      margin: 32px auto;
      border-radius: 10px;
    }
    /* =========================================================
       Details
       ========================================================= */
    .markdown details {
      margin: 20px 0;
      padding: 14px 16px;
      border: 1px solid var(--border);
      border-radius: 8px;
      background: var(--background);
    }
    .markdown summary {
      cursor: pointer;
      font-weight: 600;
    }
    /* =========================================================
       Heading anchors
       ========================================================= */
    .heading-anchor {
      color: inherit !important;
      text-decoration: none !important;
    }
    .heading-anchor::after {
      content: "#";
      display: inline-block;
      margin-left: 10px;
      color: #c7c7c7;
      font-weight: 400;
      opacity: 0;
      transition: opacity 0.15s ease;
    }
    h2:hover .heading-anchor::after,
    h3:hover .heading-anchor::after {
      opacity: 1;
    }
    /* =========================================================
       Right-side table of contents
       ========================================================= */
    .toc {
      position: relative;
    }
    .toc-inner {
      position: sticky;
      top: 104px;
      max-height: calc(100vh - 136px);
      overflow-y: auto;
    }
    .toc-title {
      margin-bottom: 12px;
      color: var(--foreground);
      font-size: 12px;
      line-height: 1.4;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.06em;
    }
    .toc-list {
      margin: 0;
      padding: 0;
      list-style: none;
    }
    .toc-list li {
      margin: 0;
      padding: 0;
    }
    .toc-list a {
      display: block;
      padding: 5px 0;
      color: #777777;
      text-decoration: none;
      font-size: 13px;
      line-height: 1.4;
      transition: color 0.15s ease;
    }
    .toc-list a:hover {
      color: var(--foreground);
    }
    .toc-list .toc-h3 a {
      padding-left: 14px;
      font-size: 12.5px;
    }
    /* =========================================================
       Selection
       ========================================================= */
    ::selection {
      background: #dbeafe;
      color: #111111;
    }
    /* =========================================================
       Responsive
       ========================================================= */
    @media (max-width: 1100px) {
      .page {
        grid-template-columns: minmax(0, 1fr) minmax(0, var(--content-width));
        gap: 32px;
      }
      .markdown,
      .index {
        grid-column: 2;
      }
      .toc {
        display: none;
      }
    }
    @media (max-width: 900px) {
      .page {
        display: block;
        padding: 48px 24px 96px;
      }
      .markdown,
      .index {
        width: 100%;
        max-width: var(--content-width);
        margin: 0 auto;
      }
      .topbar-inner {
        padding: 0 24px;
      }
    }
    @media (max-width: 600px) {
      .topbar {
        height: 56px;
      }
      .topbar-inner {
        padding: 0 18px;
      }
      .page {
        padding: 36px 20px 80px;
      }
      .markdown h1,
      .index h1 {
        font-size: 34px;
      }
      .markdown h2 {
        margin-top: 52px;
        font-size: 25px;
      }
      .markdown h3 {
        font-size: 20px;
      }
      .markdown table {
        display: block;
        overflow-x: auto;
      }
    }
  </style>
</head>
<body>
<header class="topbar">
  <div class="topbar-inner">
    <a class="brand" href="#">
      Constructor Fabric
    </a>
    <a
      class="topbar-link"
      href="$CHROME_GH_URL"
      target="_blank"
      rel="noopener noreferrer"
    >
      View on GitHub ↗
    </a>
  </div>
</header>
<div class="page">
  <main class="$CHROME_MAIN_CLASS">
EOF
}

print_chrome_footer() {
  cat <<'EOF'
  </main>
  <aside class="toc">
    <div class="toc-inner">
      <div class="toc-title">On this page</div>
      <ul class="toc-list" id="toc"></ul>
    </div>
  </aside>
</div>
<script>
  /*
   * Generate clean heading IDs and a right-side TOC. The TOC is
   * empty by default; pages that want it set CHROME_ENABLE_TOC=1
   * before sourcing this lib and the index page leaves it empty
   * by design.
   */
  const toc = document.getElementById("toc");
  if (toc) {
    const headings = document.querySelectorAll(
      ".markdown h2, .markdown h3"
    );
    const slugCounts = {};
    headings.forEach((heading) => {
      const title = heading.textContent.trim();
      let slug = title
        .toLowerCase()
        .replace(/[^a-z0-9\s-]/g, "")
        .trim()
        .replace(/\s+/g, "-")
        .replace(/-+/g, "-");
      if (!slug) {
        slug = "section";
      }
      if (slugCounts[slug] !== undefined) {
        slugCounts[slug]++;
        slug += "-" + slugCounts[slug];
      } else {
        slugCounts[slug] = 0;
      }
      heading.id = slug;
      const anchor = document.createElement("a");
      anchor.href = "#" + slug;
      anchor.className = "heading-anchor";
      anchor.textContent = title;
      heading.textContent = "";
      heading.appendChild(anchor);
      const item = document.createElement("li");
      item.className =
        heading.tagName === "H3"
          ? "toc-h3"
          : "toc-h2";
      const link = document.createElement("a");
      link.href = "#" + slug;
      link.textContent = title;
      item.appendChild(link);
      toc.appendChild(item);
    });
  }
</script>
</body>
</html>
EOF
}