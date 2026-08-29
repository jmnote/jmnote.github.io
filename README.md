# jmnote.github.io

Source repository for [jmnote.github.io](https://jmnote.github.io), a small
static profile page hosted on GitHub Pages.

The page content lives in [`index.html`](index.html). This README is intended
for people working on or deploying the repository.

## Run locally

The page is plain HTML and CSS, with a small JavaScript file for theme
switching. Node.js and npm are only used by the local live-reload server; no
packages are added to the repository. To start it:

```sh
make install
make serve
```

Then open `http://localhost:3000`.

## Repository structure

```text
.
├── .github/workflows/ci.yml # PR validation workflow
├── index.html   # Profile page content and metadata
├── assets/      # CSS, JavaScript, and SVG assets
├── scripts/     # Repository validation scripts
├── README.md    # Repository documentation
├── Makefile     # Local preview commands
└── LICENSE      # Apache License 2.0
```

## Deployment

Push changes to the repository and publish the site through GitHub Pages.
The live page is available at [jmnote.github.io](https://jmnote.github.io).

## Continuous integration

Pull requests are checked for valid links, Markdown style, and alphabetical
project ordering. Run `./scripts/check-project-order.sh` locally to verify the
project list.

## License

This project is licensed under the [Apache License 2.0](LICENSE).
