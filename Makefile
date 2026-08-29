JEKYLL_IMAGE ?= jekyll/jekyll:latest

install:
	@command -v docker >/dev/null 2>&1 || { \
		echo "Docker is required to run Jekyll locally."; \
		exit 1; \
	}
	docker pull $(JEKYLL_IMAGE)

serve:
	@command -v docker >/dev/null 2>&1 || { \
		echo "Docker is required to run Jekyll locally."; \
		exit 1; \
	}
	docker run --rm -it \
		-p 4000:4000 \
		-p 35729:35729 \
		-v "$(CURDIR):/srv/jekyll" \
		$(JEKYLL_IMAGE) \
		jekyll serve --host 0.0.0.0 --livereload --force_polling
