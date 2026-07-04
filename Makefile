SITE_DIR := site
THEME := assets/css/slides.css

VISION_DOCS := $(filter-out README.md,$(wildcard *.md))
VISION_HTML := $(patsubst %.md,$(SITE_DIR)/%.html,$(VISION_DOCS))

.PHONY: all slides site clean

all: site

slides: $(VISION_HTML)

$(SITE_DIR)/%.html: %.md $(THEME)
	@command -v npx >/dev/null || (echo "npx is required to build slides. Install Node.js or run 'npm install' from the repo root." && exit 1)
	@mkdir -p $(SITE_DIR)
	npx @marp-team/marp-cli@latest $< --theme-set $(THEME) --allow-local-files -o $@

site: slides
	@./scripts/build-index.sh $(SITE_DIR)

clean:
	rm -rf $(SITE_DIR)
