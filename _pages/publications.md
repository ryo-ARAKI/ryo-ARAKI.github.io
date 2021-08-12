---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}

- **ARAKI Ryo** and GOTO Susumu  \
  "Quasiperiodic fluctuations of von Kármán turbulence driven by viscous stirring" \
  Physical Review Fluids, **6**, 084603
  - doi: [https://doi.org/10.1103/PhysRevFluids.6.084603](https://doi.org/10.1103/PhysRevFluids.6.084603)
