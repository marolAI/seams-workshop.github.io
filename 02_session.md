---
layout: page
title: Sessions
permalink: /session/
---
Week 1 Morning Discussion Sessions:
{% for ss in site.session %}- [{{ ss.title }}]({{ ss.url | prepend: site.baseurl }})
{% endfor %}

# Why we should care about the topic and how we should think about it
# 10 highlevel concerpts
# Reference list
# Reading material min task lasting 1-3 minutes in pairs
# Q & A session for 5 minutes
***Definition:*** ***CSV*** files are simplified spreadsheets stored as plaintext files. Python’s csv module makes it easy to parse CSV files.  
***Definition:*** ***Jason*** is a format that stores information as JavaScript source code in plaintext files.
Properties of CSV files:
*	Don’t have types for their values—everything is a string
*	Don’t have settings for font size or color
*	Don’t have multiple worksheets
*	Can’t specify cell widths and heights
*	Can’t have merged cells
*	Can’t have images or charts embedded in them





The specific sessions for each topic are similar to those in previous years, though we have consolidated them somewhat; while we finalize this year's materials, please feel free to {% include oldlink.md tx='peruse past sessions' l='sessions' %}.