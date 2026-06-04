# ryo-araki.github.io

Personal academic website for ARAKI Ryo, published at <https://ryo-araki.github.io> with GitHub Pages and Jekyll.

## Content Source Of Truth

The site is maintained by hand. The public profile pages live in `_pages/`, and memo articles live in `_memo/` as the only custom collection. Publications, presentations, research pages, links, and Japanese profile pages are curated Markdown files rather than generated from TSV, Python, or notebook sources.

Use `_pages/about.md`, `_pages/cv.md`, `_pages/research.md`, `_pages/research_jp.md`, `_pages/publications.md`, `_pages/talks.md`, `_pages/japanese.md`, and `_pages/links.md` for the main public pages. Use `_memo/*.md` for memo entries.

## Local Preview And Build

Install the GitHub Pages bundle outside the repository or under the ignored `vendor/` path:

```bash
BUNDLE_PATH=/home/ryo/github/ryo-ARAKI.github.io/vendor/bundle bundle install
```

Preview locally:

```bash
BUNDLE_PATH=/home/ryo/github/ryo-ARAKI.github.io/vendor/bundle bundle exec jekyll serve --safe --trace
```

Build the generated site:

```bash
BUNDLE_PATH=/home/ryo/github/ryo-ARAKI.github.io/vendor/bundle bundle exec jekyll build --safe --trace
```

GitHub Pages controls the deployed Ruby and gem versions. Keep `Gemfile.lock` ignored and do not commit it for normal site maintenance.

## JavaScript Maintenance

The committed `assets/js/main.min.js` is used by the site. The npm scripts in `package.json` are only for optional maintenance when changing files under `assets/js/`:

```bash
npm install
npm run build:js
```

`package-lock.json` and `node_modules/` stay ignored.

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
