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

## Preprint

- Tomohiro Tanogami and **ARAKI Ryo** \
  "Information-Thermodynamic Bound on Information Flow in Turbulent Cascade" [arXiv link](https://arxiv.org/abs/2206.11163)

- **ARAKI Ryo**, Wouter J. T. Bos, and GOTO Susumu \
  "Minimal modeling of the intrinsic cycle of turbulence driven by steady forcing" [arXiv link](https://arxiv.org/abs/2112.03417)

## Published

- **ARAKI Ryo** and GOTO Susumu  \
  "Quasiperiodic fluctuations of von Kármán turbulence driven by viscous stirring" \
  Physical Review Fluids, **6**, 084603 (2021) [doi link](https://doi.org/10.1103/PhysRevFluids.6.084603)
