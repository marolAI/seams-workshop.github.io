---
layout: page
title: Sessions
permalink: /session/
---
Week 1 Morning Discussion Sessions:
{% for ss in site.session %}- [{{ ss.title }}]({{ ss.url | prepend: site.baseurl }})
{% endfor %}

The specific sessions for each topic are similar to those in previous years, though we have consolidated them somewhat; while we finalize this year's materials, please feel free to {% include oldlink.md tx='peruse past sessions' l='sessions' %}.
# Why we should care about the topic and how we should think about it?
* Extensively used file extension for our datasets and compatible with other database technologies like sql
# 10 highlevel concepts
# Reading material min task lasting 1-3 minutes in pairs
# When do i use a database?
# Balance between plain text and human readable string data
# Schemas and validators
# Trade offs between text files and csv files.

# Disadvantages of plain text files
* Lack of standards:  
** No standard way to specify data format. No standard way to express “special characters”.  
* Inefficiency:  
* Can lead to massive redundancy (repetition of values). Speed of access and space efficiency for large data sets.  Difficult to store “non-rectangular” data sets.  
* Internationalization  
* Lack of data integrity:
* lack of data integrity measures






# Reference list  
* https://dzone.com/articles/what-are-databases-used-for
* http://people.scs.carleton.ca/~achan/teaching/comp1001/notes/COMP1001-06.pdf
* http://statmath.wu.ac.at/courses/data-analysis/itdtHTML/node56.html#SECTION001154000000000000000


