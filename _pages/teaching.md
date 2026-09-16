---
layout: page
permalink: /nastava/
title: Nastava
description: Predmeti i nastavni materijali za osnovne, master i doktorske studije.
nav: true
nav_order: 3
dropdown: true
children:
  - title: Pregled nastave
    permalink: /nastava/
  - title: divider
  - title: Osnovne studije
    permalink: /nastava/#osnovne-studije
    children:
      - title: Matematika
        permalink: /nastava/matematika/
      - title: Operaciona istraživanja
        permalink: /nastava/operaciona-istrazivanja/
      - title: Poslovna analitika
        permalink: /nastava/poslovna-analitika/
      - title: Teorija odlučivanja
        permalink: /nastava/teorija-odlucivanja/
      - title: Teorija igara
        permalink: /nastava/teorija-igara/
  - title: Master studije
    permalink: /nastava/#master-studije
    children:
      - title: Forenzička analitika
        permalink: /nastava/forenzicka-analitika/
      - title: Upravljanje rizicima
        permalink: /nastava/upravljanje-rizicima/
  - title: Doktorske studije
    permalink: /nastava/#doktorske-studije
    children:
      - title: Teorija igara - D
        permalink: /nastava/teorija-igara-d/
---

Na stranicama predmeta biće objavljivani materijali sa predavanja i vežbi, domaći zadaci, studije slučaja, ispitni zadaci, obaveštenja i preporučena literatura.

## Osnovne studije

{% assign osnovne = site.teachings | where: "level", "Osnovne studije" | sort: "nav_order" %}
{% for course in osnovne %}
- [**{{ course.title }}**]({{ course.url | relative_url }}) — {{ course.description }}
{% endfor %}

## Master studije

{% assign master = site.teachings | where: "level", "Master studije" | sort: "nav_order" %}
{% for course in master %}
- [**{{ course.title }}**]({{ course.url | relative_url }}) — {{ course.description }}
{% endfor %}

## Doktorske studije

{% assign doktorske = site.teachings | where: "level", "Doktorske studije" | sort: "nav_order" %}
{% for course in doktorske %}
- [**{{ course.title }}**]({{ course.url | relative_url }}) — {{ course.description }}
{% endfor %}
