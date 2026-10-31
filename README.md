# ryo-araki.github.io

Personal academic website for ARAKI Ryo, published at <https://ryo-araki.github.io> with GitHub Pages and Jekyll.

## Content Source Of Truth

The site is maintained by hand. The public profile pages live in `_pages/`, and memo articles live in `_memo/` as the only custom collection. Publications, presentations, research pages, links, and Japanese profile pages are curated Markdown files rather than generated from TSV, Python, or notebook sources.

Use `_pages/about.md`, `_pages/cv.md`, `_pages/research.md`, `_pages/research_jp.md`, `_pages/publications.md`, `_pages/talks.md`, `_pages/japanese.md`, and `_pages/links.md` for the main public pages. Use `_memo/*.md` for memo entries.

## Local Preview And Build

Install the Jekyll 4 bundle outside the repository or under the ignored `vendor/` path:

```bash
BUNDLE_PATH=/home/ryo/github/ryo-ARAKI.github.io/vendor/bundle bundle install
```

Install the JavaScript dependencies and generate the browser script before the first local preview or build:

```sh
npm install
npm run build:js
```

Preview locally:

```bash
BUNDLE_PATH=/home/ryo/github/ryo-ARAKI.github.io/vendor/bundle bundle exec jekyll serve --safe --trace
```

Build the generated site:

```bash
BUNDLE_PATH=/home/ryo/github/ryo-ARAKI.github.io/vendor/bundle bundle exec jekyll build --safe --trace
```

The GitHub Actions workflows use Ruby 3.2 and the Jekyll 4 dependencies in `Gemfile`.
Keep `Gemfile.lock` ignored and do not commit it for normal site maintenance.

## GitHub Pages Deployment

The workflows validate pull requests targeting `master` and build and deploy pushes to `master`.
To activate this deployment method, select **GitHub Actions** under **Settings → Pages → Build and deployment → Source** before pushing the migration to `master`.
The repository currently uses the legacy branch build; merging locally does not change that setting or publish the site.

## JavaScript Maintenance

The site loads `assets/js/main.min.js`, which is generated from the JavaScript sources and ignored by Git.
GitHub Actions generates this file automatically for both pull-request checks and deployment.
For local previews and builds, generate it after a fresh checkout and regenerate it whenever the JavaScript sources change:

```bash
npm install
npm run build:js
```

`assets/js/main.min.js`, `package-lock.json`, and `node_modules/` stay ignored.
jQuery is loaded separately from the CDN configured in `_includes/head/custom.html`.

## Images And Files

Keep images under `images/` and downloadable documents under `files/`. Prefer web-sized images before committing: use about 1200 px maximum width for ordinary photos and a larger width only when a research figure needs the detail. Strip metadata when possible, and add meaningful `alt` text plus `loading="lazy"` for inline images.

## Verification

Before publishing cleanup or content changes, run the relevant checks:

```bash
BUNDLE_PATH=/home/ryo/github/ryo-ARAKI.github.io/vendor/bundle bundle exec jekyll build --safe --trace
ruby -rjson -e 'JSON.parse(File.read("images/manifest.json"))'
ruby -rrexml/document -e 'REXML::Document.new(File.read("images/browserconfig.xml"))'
ruby -ryaml -e 'YAML.load_file("_config.yml")'
```

After deleting pages or assets, inspect `_site/sitemap.xml` and check generated local `href`/`src` links so removed URLs and files are not still referenced.
