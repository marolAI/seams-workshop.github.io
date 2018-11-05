---
layout: people
permalink: /participants/
---
{% for part in site.participants %}{% include faculty.md profile=part %}
{% endfor %}