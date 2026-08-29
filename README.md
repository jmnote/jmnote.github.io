# jmnote.github.io

Source repository for [jmnote.github.io](https://jmnote.github.io), a small
Jekyll-powered profile page hosted on GitHub Pages.

The page content lives in [`index.md`](index.md). This README is intended for
people working on or deploying the repository.

## Run locally

The page is built with [Jekyll](https://jekyllrb.com/) and runs locally in
Docker. Start the image and local server with:

```sh
make install
make serve
```

Then open `http://localhost:4000`.

## Repository structure

```text
.
├── .github/workflows/ci.yml # PR validation workflow
├── _config.yml  # Jekyll configuration
├── _layouts/    # Shared HTML layouts
├── index.md     # Profile page content
├── style.css    # Table and responsive styles
├── scripts/      # Repository validation scripts
├── README.md    # Repository documentation
├── Makefile     # Local installation and preview commands
└── LICENSE      # Apache License 2.0
```

## Deployment

Push changes to the repository and publish the site through GitHub Pages using
the `main` branch root as the publishing source.
The live page is available at [jmnote.github.io](https://jmnote.github.io).

## Continuous integration

Pull requests are checked for valid links, Markdown style, and alphabetical
project ordering. Run `./scripts/check-project-order.sh` locally to verify the
project list.

## License

This project is licensed under the [Apache License 2.0](LICENSE).
