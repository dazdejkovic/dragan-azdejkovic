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
  {% if file.path contains '/assets/nastava/matematika/materijali/Vezbe_domaci-zadaci/' %}
    {% if file.extname == '.pdf' or file.extname == '.zip' %}
      <li><a href="{{ file.path | relative_url }}">{{ file.name }}</a></li>
    {% endif %}
  {% endif %}
{% endfor %}
</ul>

### Kolokvijumi

<ul>
{% for file in svi_fajlovi %}
  {% if file.path contains '/assets/nastava/matematika/materijali/Kolokvijumi/' %}
    {% if file.extname == '.pdf' or file.extname == '.zip' %}
      <li><a href="{{ file.path | relative_url }}">{{ file.name }}</a></li>
    {% endif %}
  {% endif %}
{% endfor %}
</ul>

### Ispitni zadaci

<ul>
{% for file in svi_fajlovi %}
  {% if file.path contains '/assets/nastava/matematika/materijali/ispitni-zadaci/' %}
    {% if file.extname == '.pdf' or file.extname == '.zip' %}
      <li><a href="{{ file.path | relative_url }}">{{ file.name }}</a></li>
    {% endif %}
  {% endif %}
{% endfor %}
</ul>

### Razno

<ul>
{% for file in svi_fajlovi %}
  {% if file.path contains '/assets/nastava/matematika/materijali/Razno/' %}
    {% if file.extname == '.pdf' or file.extname == '.zip' %}
      <li><a href="{{ file.path | relative_url }}">{{ file.name }}</a></li>
    {% endif %}
  {% endif %}
{% endfor %}
</ul>
