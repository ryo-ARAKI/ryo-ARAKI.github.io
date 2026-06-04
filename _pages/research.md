---
layout: archive
title: "Research"
permalink: /research/
author_profile: true
---

日本語で書いた研究紹介は[このページ](https://ryo-araki.github.io/research_jp)を参照してください．

## Information hydrodynamics

### Energy cascade and small-scale universality of turbulence

Turbulent flow is ubiquitous in everyday life.
The renowned physicist R. Feynman described it as "the most important unsolved problem of classical physics."
Its intricacy makes it impossible for us to accurately forecast tomorrow's weather or engineer an aircraft with a laminar wing.
Turbulence is often described as the superposition of vortices (or eddies) of various scales, as L. F. Richardson depicted it as:

> [...] big whirls have little whirls that feed on their velocity, and little whirls have lesser whirls and so on to viscosity [...].

This widely accepted "energy cascade" picture states that energy injected into the largest eddies _cascades_ down to smaller eddies until viscosity dissipates it as heat.

Alongside this picture, small-scale statistical universality also plays an important role in turbulence research.
It states that the statistical characteristics of the small scales (small eddies) of turbulent flow are independent of the macroscopic flow configurations.
Thus, whether it is the motion of the atmosphere or the flow around an aeroplane, their small-scale fluctuations exhibit universal statistics.
This small-scale universality, introduced by A. N. Kolmogorov in his 1941 papers, has shaped the paradigm of turbulence research for more than 80 years.

Furthermore, we believe that the roots of the small-scale statistical universality can be traced back to the energy cascade picture.
A common schematic description states that turbulence 'forgets' its macroscopic characteristics during the energy cascade from larger to smaller scales, allowing its small scales to exhibit universality.

### Information theory and turbulence

However, the above description fails to describe the mechanism by which the information content of the large scales of turbulence is lost in the small scales.
Furthermore, there should be causality (=information transfer) between large and small scales, because the energy cascade picture states that large-scale eddies create, or provide energy to, small-scale eddies.

Driven by these intriguing questions, we have been working to construct a new picture of turbulence from the viewpoint of 'information'.
Here, the term information follows C. Shannon's definition in his seminal work on communication through noisy channels, where it quantifies uncertainty in signals.
Specifically, we introduce information entropy as the measure of information, with a high entropy indicating events with significant uncertainty, while low entropy corresponds to events with high certainty.
Today, information theory finds applications across many fields of physics.

The information-theoretic viewpoint allows us to reframe various challenges in turbulence.
In this text, we address one of them: How do the small scales of developed turbulence forget (or remember) information from the large scales, and to what extent?
Beyond this, there are numerous research avenues, from a probabilistic description of laminar-turbulent transition to the development of new turbulence models.

### Information thermodynamics and turbulence

Information thermodynamics is a new formulation of thermodynamics that explicitly considers the role of information.
It has been playing an important role in the recent advancement of nonequilibrium statistical mechanics, offering solutions to long-standing challenges such as Maxwell's demon paradox.
At first, it may seem inappropriate to combine information thermodynamics and turbulence, because hydrodynamics typically deals with scales much larger than microscopic thermal fluctuations. However, several recent papers argue that the scales influenced by thermal fluctuations and the smallest scale of turbulence are not as clearly separated as conventionally thought.
They argue that the thermal fluctuations significantly influence the behaviour of the smallest scale of turbulence.

Building on this discussion, we have been applying information thermodynamics to turbulence.
Recently, we proved the existence of information transfer from large to small scales in turbulence, associated with the energy cascade, by the second law of information thermodynamics.
This approach represents a departure from conventional thermofluid dynamics employed in domains like weather prediction and air conditioner design.
We further aim to expand information hydrodynamics by taking advantage of the universal laws on information flow discovered by information thermodynamics.

<div style="text-align: center;">
<img src='/images/information_hydrodynamics.png' width="800" alt="Schematic figure of information hydrodynamics with turbulent energy spectra and vortex visualizations" loading="lazy">
</div>

<div style="text-align: center;">
(Left) Energy spectra of turbulent flows driven by different large-scale forcing.
They exhibit different behaviour in the large scales while collapsing in the small scales, indicating the small-scale statistical universality.
(Right) Visualisations of large (red), intermediate (yellow), and small (cyan) scale vortices of turbulent flows driven by different large-scale forcing.
The large-scale vortices constitute distinctive structures influenced by the forcing, while the small-scale vortices of different flows are quite similar to each other.
</div>
