---
layout: people
permalink: /participants/
---
{% if site.participants.size > 0 %}{% for part in site.participants %}{% include faculty.md profile=part %}
{% endfor %}{% else %}No participant bios submitted yet!{% endif %}