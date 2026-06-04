---
layout: archive
title: "セミナー"
permalink: /seminars/
author_profile: true
---

<style>
.seminar__meta { margin-bottom: 0.25em; }
.seminar__abstract { margin-top: 0; }
</style>

{% assign seminars = site.data.seminars | sort: "date" %}
{% assign today = site.time | date: "%Y-%m-%d" %}

荒木が主催・共催するセミナー情報を掲載しています．

## 今後のセミナー

{% assign upcoming_count = 0 %}
{% for seminar in seminars %}
{% if seminar.date >= today %}
{% assign upcoming_count = upcoming_count | plus: 1 %}

<article class="seminar">
  <h3>{{ seminar.title }}</h3>
  <p class="seminar__meta">
    <strong>Speaker:</strong> {{ seminar.speaker }}（{{ seminar.affiliation }}）<br>
    <strong>Date:</strong> {{ seminar.date_label }} {{ seminar.time }}<br>
    <strong>Place:</strong> {{ seminar.place }}{% if seminar.flyer_url %}<br>
    <a href="{{ seminar.flyer_url }}">告知PDF</a>{% endif %}
  </p>
  <details class="seminar__abstract">
    <summary>概要を表示</summary>
    {{ seminar.abstract | markdownify }}
    {% if seminar.references %}
    <p><strong>参考文献</strong></p>
    <ol>
      {% for reference in seminar.references %}
      <li>{% if reference.url %}<a href="{{ reference.url }}">{{ reference.text }}</a>{% else %}{{ reference.text }}{% endif %}</li>
      {% endfor %}
    </ol>
    {% endif %}
    {% if seminar.note %}
    <p>{{ seminar.note | markdownify }}</p>
    {% endif %}
  </details>
</article>
  {% endif %}
{% endfor %}

{% if upcoming_count == 0 %}
現在，予定されているセミナーはありません．
{% endif %}

## 過去のセミナー

{% assign past_count = 0 %}
{% assign seminars_desc = seminars | reverse %}
{% for seminar in seminars_desc %}
{% if seminar.date < today %}
{% assign past_count = past_count | plus: 1 %}

<article class="seminar">
  <h3>{{ seminar.title }}</h3>
  <p class="seminar__meta">
    <strong>Speaker:</strong> {{ seminar.speaker }}（{{ seminar.affiliation }}）<br>
    <strong>Date:</strong> {{ seminar.date_label }} {{ seminar.time }}<br>
    <strong>Place:</strong> {{ seminar.place }}{% if seminar.flyer_url %}<br>
    <a href="{{ seminar.flyer_url }}">告知PDF</a>{% endif %}
  </p>
  <details class="seminar__abstract">
    <summary>概要を表示</summary>
    {{ seminar.abstract | markdownify }}
    {% if seminar.references %}
    <p><strong>参考文献</strong></p>
    <ol>
      {% for reference in seminar.references %}
      <li>{% if reference.url %}<a href="{{ reference.url }}">{{ reference.text }}</a>{% else %}{{ reference.text }}{% endif %}</li>
      {% endfor %}
    </ol>
    {% endif %}
    {% if seminar.note %}
    <p>{{ seminar.note | markdownify }}</p>
    {% endif %}
  </details>
</article>
  {% endif %}
{% endfor %}

{% if past_count == 0 %}
過去に開催したセミナーはまだありません．
{% endif %}
