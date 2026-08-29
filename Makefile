install:
	@command -v gem >/dev/null 2>&1 || { \
		echo "RubyGems is required. On Ubuntu/WSL, install ruby-full, build-essential, and zlib1g-dev first."; \
		exit 1; \
	}
	gem install jekyll bundler

serve:
	jekyll serve --livereload
