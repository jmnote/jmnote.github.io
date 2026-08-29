# AGENTS.md

## Project list maintenance

- Keep repositories in `_home.md` sorted alphabetically by repository name within each organization group.
- Keep the `jmnote` and `mailapi` organization groups in the existing order.
- Keep each organization in its own Markdown table with `Repo` and `Description` columns.
- Run `./scripts/check-project-order.sh` after changing the project list.

## Deployment

- GitHub Pages serves the `main` branch root directly.
- Do not add a deployment workflow unless the Pages deployment method changes.
