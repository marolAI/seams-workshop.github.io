---
layout: page
title: Practicals
permalink: /practical/
---
Week 1 Afternoon Practicals:
{% for ss in site.practical %}- [{{ ss.title }}]({{ ss.url | prepend: site.baseurl }})
{% endfor %}

The practical exercises we have planned for each topic are similar to those in previous years, though we have consolidated them somewhat; while we finalize this year's materials, please feel free to {% include oldlink.md tx='peruse past practicals' l='practice/' %}.