---
layout: page
title: Sessions
permalink: /session/
---
Week 1 Morning Discussion Sessions:
{% for ss in site.session %}- [{{ ss.title }}]({{ ss.url | prepend: site.baseurl }})
{% endfor %}

Definition: CSV files are simplified spreadsheets stored as plaintext files. Python’s csv module makes it easy to parse CSV files.
Definition: Jason is a format that stores information as JavaScript source code in plaintext files.
Properties of CSV files:
•	Don’t have types for their values—everything is a string
•	Don’t have settings for font size or color
•	Don’t have multiple worksheets
•	Can’t specify cell widths and heights
•	Can’t have merged cells
•	Can’t have images or charts embedded in the

To read data from a CSV file with the csv module, you need to create a Readerobject. A Reader object lets you iterate over lines in the CSV file. 
Enter the following into the interactive shell, with example.csv in the current working directory:
❶ >>> import csv
❷ >>> exampleFile = open('example.csv')
❸ >>> exampleReader = csv.reader(exampleFile)
❹ >>> exampleData = list(exampleReader)
❹ >>> exampleData
   [['4/5/2015 13:34', 'Apples', '73'], ['4/5/2015 3:41', 'Cherries', '85'],
   ['4/6/2015 12:46', 'Pears', '14'], ['4/8/2015 8:59', 'Oranges', '52'],
   ['4/10/2015 2:07', 'Apples', '152'], ['4/10/2015 18:10', 'Bananas', '23'],
   ['4/10/2015 2:40', 'Strawberries', '98']]




The specific sessions for each topic are similar to those in previous years, though we have consolidated them somewhat; while we finalize this year's materials, please feel free to {% include oldlink.md tx='peruse past sessions' l='sessions' %}.