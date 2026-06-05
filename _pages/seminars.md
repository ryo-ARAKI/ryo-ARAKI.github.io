---
layout: archive
title: "Seminars"
permalink: /seminars/
author_profile: true
---

<style>
.seminar__meta { margin-bottom: 0.25em; }
.seminar__abstract { margin-top: 0; }
</style>

{% assign seminars = site.data.seminars | sort: "date" | reverse %}
{% for seminar in seminars %}

<article class="seminar">
  <h2>{{ seminar.title }}</h2>
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
{% endfor %}
