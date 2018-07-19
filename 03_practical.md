---
layout: page
title: Practicals
permalink: /practical/
---
Prospective Practicals for 2018:
 - Project Planning & Design: Convert a Problem Description into Plan & Design
 - Workspace Organization & Tools
 - Reuse & Reusability: Find-a-library
 - IO, Big and small
 - High Performance Computing

Previous Years Practicals:

{% for pl in site.practical %}- [{{ pl.title }}]({{ pl.url }})
{% endfor %}
