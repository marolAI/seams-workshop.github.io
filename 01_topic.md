---
layout: page
title: Working with csv Files and Jason data
permalink: /topic/
---
Week 1 Topics:
{% for tp in site.topic %}- [{{ tp.title }}]({{ tp.url | prepend: site.baseurl }})
{% endfor %}

These topics are similar to those in previous years, though we have consolidated them somewhat; while we finalize this year's materials, please feel free to {% include oldlink.md tx='peruse past topics' l='topics' %}.
