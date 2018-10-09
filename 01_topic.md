---
layout: page
title: Topics IO
permalink: /topic/
---
Week 1 Topics:
{% for tp in site.topic %}- [{{ tp.title }}]({{ tp.url | prepend: site.baseurl }})
{% endfor %}

These topics are similar to those in previous years, though we have consolidated them somewhat; while we finalize this year's materials, please feel free to {% include oldlink.md tx='peruse past topics' l='topics' %}.

*Discuss differences amongst csv files, Jason Files, plain text files and databases
*Balance between plain text and human readable  string data
*Schema validations
* Trade offs between csv files and text files