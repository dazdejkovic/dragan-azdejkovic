---
layout: course
permalink: /nastava/matematika/
title: Matematika
opis: Matematičke osnove i metode koje se primenjuju u ekonomiji.
nivo: Osnovne studije
godina: 2026/2027
lokacija: Ekonomski fakultet Univerziteta u Beogradu
course_id: matematika
nav_order: 1
---

Matematičke osnove i metode koje se primenjuju u ekonomiji.

---

### Informacije o ostvarenim poenima za aktivnost na nastavi

[Pregled ostvarenih poena za aktivnost na nastavi](https://docs.google.com/spreadsheets/d/13XHpBKbWA0_JOpoPSlhf0ZCX6kBe5cWk69b0wWFp2sU/edit?usp=sharing)

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
