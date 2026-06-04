#!/usr/bin/env bash
set -euo pipefail

page="_site/seminars/index.html"

if [[ ! -f "$page" ]]; then
  echo "Missing generated seminars page: $page" >&2
  exit 1
fi

grep -q '<h1 class="page__title">セミナー</h1>' "$page"
grep -q '今後のセミナー' "$page"
grep -q '過去のセミナー' "$page"
grep -q '<summary>概要を表示</summary>' "$page"
grep -q 'class="seminar__meta"' "$page"
grep -q 'class="seminar__abstract"' "$page"
grep -q '.seminar__meta { margin-bottom: 0.25em; }' "$page"
grep -q 'Julia 言語によるマルチプラットフォーム対応' "$page"
grep -q '有向浸透現象におけるレニーエントロピー' "$page"
grep -q 'href="https://doi.org/10.1103/PhysRevLett.123.090601"' "$page"
grep -q 'href="https://arxiv.org/abs/2604.11008"' "$page"
grep -q 'href="https://arxiv.org/abs/2605.25539"' "$page"

if grep -q '<details open' "$page"; then
  echo "Abstract details should be collapsed by default" >&2
  exit 1
fi

if rg -n '講演タイトルをここに入力|所属・職名|略歴をここに入力' "$page"; then
  echo "Template placeholder text leaked into generated seminars page" >&2
  exit 1
fi
