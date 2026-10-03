---
layout: page
title: Publikacije
permalink: /publications/
description: Knjige, naučni i stručni radovi.
nav: true
nav_order: 3
---

<div class="publications">

## Knjige

{% bibliography --query @*[keywords=knjige] --prefix knjige %}

## Radovi

{% bibliography --query @*[keywords=radovi] --prefix radovi %}

</div>
