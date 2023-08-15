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

- **ARAKI Ryo**, Wouter J. T. Bos, and Susumu Goto \
  "Space-local Navier--Stokes turbulence" [arXiv link](https://arxiv.org/abs/2308.07255)
- **ARAKI Ryo** and Wouter J. T. Bos \
  "Inertial range scaling of inhomogeneous turbulence" [arXiv link](https://arxiv.org/abs/2210.14516)
- Tomohiro Tanogami and **ARAKI Ryo** \
  "Information-thermodynamic bound on information flow in turbulent cascade" [arXiv link](https://arxiv.org/abs/2206.11163)

## Published

- **ARAKI Ryo**, Wouter J. T. Bos, and Susumu Goto \
  "Minimal model of quasi-cyclic behaviour in turbulence driven by Taylor--Green forcing" \\
  Fluid Dynamics Research, **55** 035507 (2023) [doi link](https://doi.org/10.1088/1873-7005/acdff7) [arXiv link](https://arxiv.org/abs/2112.03417)
- **ARAKI Ryo** and Susumu Goto  \
  "Quasiperiodic fluctuations of von Kármán turbulence driven by viscous stirring" \
  Physical Review Fluids, **6**, 084603 (2021) [doi link](https://doi.org/10.1103/PhysRevFluids.6.084603)
