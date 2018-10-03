---
layout: page
title: Practicals : Removing the Header from CSV Files
permalink: /practical/
---
Week 1 Afternoon Practicals:
{% for ss in site.practical %}- [{{ ss.title }}]({{ ss.url | prepend: site.baseurl }})
{% endfor %}

The practical exercises we have planned for each topic are similar to those in previous years, though we have consolidated them somewhat; while we finalize this year's materials, please feel free to {% include oldlink.md tx='peruse past practicals' l='practice/' %}.
* Have an on computer exercise
* should build in complexity, at least 3 levels that everyone will do with a few more people that really get it
* Should not entail a lot of Key strokes to do right; the practical time should be most be people struggling with new concepts/ approach not rapid fire typing
* will need a  to prepare code and input to addition to directions

The program will need to open every file with the .csv extension in the current working directory, read in the contents of the CSV file, and rewrite the contents without the first row to a file of the same name. This will replace the old contents of the CSV file with the new, headless contents.
Note Always back up the csv files just in case you write a program which doesn’t not perfom the desired operation on your csv files.  


The program must do the following:
*	Find all the CSV files in the current working directory.
*	Read in the full contents of each file.
*	Write out the contents, skipping the first line, to a new CSV file.
*	At the code level, this means the program will need to do the following:
*	Loop over a list of files from os.listdir(), skipping the non-CSV files.
*	Create a CSV Reader object and read in the contents of the file, using the line_num attribute to figure out which line to skip.
*	Create a CSV Writer object and write out the read-in data to the new file.  
***For this project, open a new file editor window and save it as removeCsvHeader.py.  

***Step 1: Loop Through Each CSV File***
```
#! python3
   # removeCsvHeader.py - Removes the header from all CSV files in the current
   # working directory.

   import csv, os

   os.makedirs('headerRemoved', exist_ok=True)

   # Loop through every file in the current working directory.
   for csvFilename in os.listdir('.'):
       if not csvFilename.endswith('.csv'):
❶         continue    # skip non-csv files

       print('Removing header from ' + csvFilename + '...')

       # TODO: Read the CSV file in (skipping first row).

       # TODO: Write out the CSV file.

```
***Step 2: Read in the CSV File***  
Now that csvRows contains all rows but the first row, the list needs to be written out to a CSV file in the headerRemoved folder.  
Add the following to removeCsvHeader.py:
```
  #! python3
   # removeCsvHeader.py - Removes the header from all CSV files in the current
   # working directory.
   --snip--

   # Loop through every file in the current working directory.
❶ for csvFilename in os.listdir('.'):
       if not csvFilename.endswith('.csv'):
           continue    # skip non-CSV files

     

       # Write out the CSV file.
       csvFileObj = open(os.path.join('headerRemoved', csvFilename), 'w',
                    newline='')
       csvWriter = csv.writer(csvFileObj)
       for row in csvRows:
           csvWriter.writerow(row)
       csvFileObj.close()

```


