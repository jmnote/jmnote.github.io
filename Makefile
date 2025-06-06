PORT ?= 8080

.PHONY: install serve clean

install:
	npm install -g docsify-cli

serve:
	docsify serve . --port $(PORT)

clean:
	rm -rf node_modules
