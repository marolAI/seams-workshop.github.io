---
layout: page
title: Sessions
permalink: /session/
---
Week 1 Morning Discussion Sessions:
{% for ss in site.session %}- [{{ ss.title }}]({{ ss.url | prepend: site.baseurl }})
{% endfor %}

The specific sessions for each topic are similar to those in previous years, though we have consolidated them somewhat; while we finalize this year's materials, please feel free to {% include oldlink.md tx='peruse past sessions' l='sessions' %}.