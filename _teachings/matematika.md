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

{% assign svi_fajlovi = site.static_files | sort: "name" %}

### Vežbe i domaći zadaci

<ul>
{% for file in svi_fajlovi %}
  {% assign p = file.path | downcase %}
  {% assign ext = file.extname | downcase %}
  {% if p contains '/assets/nastava/matematika/materijali/vezbe_domaci-zadaci/' %}
    {% if ext == '.pdf' or ext == '.zip' %}
      <li><a href="{{ file.path | relative_url }}">{{ file.name }}</a></li>
    {% endif %}
  {% endif %}
{% endfor %}
</ul>

### Kolokvijumi

<ul>
{% for file in svi_fajlovi %}
  {% assign p = file.path | downcase %}
  {% assign ext = file.extname | downcase %}
  {% if p contains '/assets/nastava/matematika/materijali/kolokvijumi/' %}
    {% if ext == '.pdf' or ext == '.zip' %}
      <li><a href="{{ file.path | relative_url }}">{{ file.name }}</a></li>
    {% endif %}
  {% endif %}
{% endfor %}
</ul>

### Ispitni zadaci

<ul>
{% for file in svi_fajlovi %}
  {% assign p = file.path | downcase %}
  {% assign ext = file.extname | downcase %}
  {% if p contains '/assets/nastava/matematika/materijali/ispitni-zadaci/' %}
    {% if ext == '.pdf' or ext == '.zip' %}
      <li><a href="{{ file.path | relative_url }}">{{ file.name }}</a></li>
    {% endif %}
  {% endif %}
{% endfor %}
</ul>

### Razno

<ul>
{% for file in svi_fajlovi %}
  {% assign p = file.path | downcase %}
  {% assign ext = file.extname | downcase %}
  {% if p contains '/assets/nastava/matematika/materijali/razno/' %}
    {% if ext == '.pdf' or ext == '.zip' %}
      <li><a href="{{ file.path | relative_url }}">{{ file.name }}</a></li>
    {% endif %}
  {% endif %}
{% endfor %}
</ul>
