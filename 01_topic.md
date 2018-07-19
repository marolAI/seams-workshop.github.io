---
layout: page
title: Topics
permalink: /topic/
---
Prospective Topic Areas for 2018:
 - Project Planning & Design
 - Workspace Organization & Tools
 - Reuse & Reusability
 - IO, Big and small
 - High Performance Computing

Previous Years Topics:

{% for tp in site.topic %}- [{{ tp.title }}]({{ tp.url }})
{% endfor %}
