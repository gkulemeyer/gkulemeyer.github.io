# Guillermo Kulemeyer Academic Website

This repository contains the bilingual Quarto source for `gkulemeyer.github.io`. English pages live at the site root and complete Spanish counterparts live under `/es/`.

## Local Preview

1. Install [Quarto](https://quarto.org/docs/get-started/).
2. Open this repository in your editor.
3. Run `quarto preview` from the repository root.

## Recommended Local Tools

- Quarto CLI
- VS Code
- Quarto VS Code extension
- Git or GitHub Desktop

## Publishing

GitHub Actions renders the site and publishes the generated output to the `gh-pages` branch.

For GitHub Pages to serve the site correctly, configure the repository Pages source to use the `gh-pages` branch.

The workflow renders on every push to `main`. Generated `.quarto/` and `_site/` directories are intentionally ignored.

## Content Maintenance

- Add or update content in English and Spanish together.
- Keep the route pairs in `assets/js/site.js` synchronized when adding pages.
- Verify academic claims against the current CV and official sources before publishing.
- Add a Publications page only when at least one output is approved for public display.
- Replace the dated PDF in `assets/cv/` and update both CV pages when a new public CV is available.
