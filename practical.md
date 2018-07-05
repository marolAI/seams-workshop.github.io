---
layout: page
title: Practicals
permalink: /practical/
---
{% for pl in site.practical %}- [{{ pl.title }}]({{ pl.url }})
{% endfor %}
