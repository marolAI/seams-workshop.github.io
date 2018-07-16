---
layout: page
title: Project Work
permalink: /project/
---
{% for pj in site.project %}- [{{ pj.title }}]({{ pj.url }})
{% endfor %}
