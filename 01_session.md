---
layout: page
title: Sessions
permalink: /session/
---
Session focuses for 2018:
 - Project Planning & Design:
    * from pencil & paper into pseudocode
    * breaking up steps & connecting them
    * pseudocode into Makefiles
    * testing: validation, performance, platform
    
 - Workspace Organization & Tools
 - Reuse & Reusability
 - IO, Big and small
 - High Performance Computing

Previous Years Sessions:

{% for ss in site.session %}- [{{ ss.title }}]({{ ss.url }})
{% endfor %}
