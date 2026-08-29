# jmnote.github.io

Source repository for [jmnote.github.io](https://jmnote.github.io), a small
Docsify-powered profile page hosted on GitHub Pages.

The page content lives in [`_home.md`](_home.md). This README is intended for
people working on or deploying the repository.

## Run locally

The page is served with [Docsify](https://docsify.js.org/). Install the
dependencies and start a local server with:

```sh
make install
make serve
```

Then open the URL printed by Docsify, usually `http://localhost:3000`.

## Repository structure

```text
.
├── .github/workflows/ci.yml # PR validation workflow
├── index.html   # Docsify configuration and page shell
├── style.css    # Table and responsive styles
├── _home.md     # Profile page content
├── scripts/      # Repository validation scripts
├── README.md    # Repository documentation
├── Makefile     # Local installation and preview commands
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
