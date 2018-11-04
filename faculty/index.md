---
layout: people
permalink: /faculty/
---
{% for prof in site.faculty %}{% include faculty.md profile=prof %}
{% endfor %}