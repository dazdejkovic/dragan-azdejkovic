---
layout: course
permalink: /nastava/matematika/
title: Matematika
description: Matematičke osnove i metode koje se primenjuju u ekonomiji.
instructor: Dr Dragan Azdejković, vanredni profesor
level: Osnovne studije
year: 2026/2027
term: ""
location: Ekonomski fakultet Univerziteta u Beogradu
time: Termin će biti objavljen
course_id: matematika
nav_order: 1
schedule: []
---

## O predmetu

Matematičke osnove i metode koje se primenjuju u ekonomiji.

## Nastavni materijali

{% assign materijali = site.static_files | where_exp: "file", "file.path contains '/assets/nastava/matematika/materijali/'" | sort: "path" %}

{% if materijali.size > 0 %}

{% assign trenutni_folder = "" %}

{% for file in materijali %}

  {% assign relativno = file.path | remove_first: "/assets/nastava/matematika/materijali/" %}
  {% assign delovi = relativno | split: "/" %}

  {% if delovi.size > 1 %}
    {% assign folder = delovi[0] %}
  {% else %}
    {% assign folder = "razno" %}
  {% endif %}

  {% if folder != trenutni_folder %}

    {% unless trenutni_folder == "" %}
</ul>
    {% endunless %}

    {% case folder %}
      {% when "kolokvijumi" %}
<h3>Kolokvijumi</h3>
      {% when "ispitni-zadaci" %}
<h3>Ispitni zadaci</h3>
      {% when "vezbe" %}
<h3>Vežbe</h3>
      {% when "domaci-zadaci" %}
<h3>Domaći zadaci</h3>
      {% when "razno" %}
<h3>Razno</h3>
      {% else %}
<h3>{{ folder | replace: "-", " " | replace: "_", " " | capitalize }}</h3>
    {% endcase %}

<ul>

    {% assign trenutni_folder = folder %}
  {% endif %}

<li><a href="{{ file.path | relative_url }}">{{ file.name }}</a></li>

{% endfor %}

</ul>

{% else %}

Trenutno nema postavljenih materijala.

{% endif %}
