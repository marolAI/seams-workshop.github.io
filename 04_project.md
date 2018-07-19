---
layout: page
title: Project Work
permalink: /project/
---
Prospective Practicals for 2018:
 - Project Planning & Design: Re-plan & Design *Your* Project
 - Workspace Organization & Tools
 - Reuse & Reusability: Find-a-library
 - IO, Big and small
 - High Performance Computing

Previous Years Project Work:

{% for pj in site.project %}- [{{ pj.title }}]({{ pj.url }})
{% endfor %}
