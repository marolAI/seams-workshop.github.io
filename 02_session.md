---
layout: page
title: Sessions
permalink: /session/
---
Week 1 Morning Discussion Sessions:
{% for ss in site.session %}- [{{ ss.title }}]({{ ss.url | prepend: site.baseurl }})
{% endfor %}

# Why we should care about the topic and how we should think about it?
* Extensively used file extension for our datasets and compatible with other database technologies like sql
# 10 highlevel concepts
# Reference list  
* https://automatetheboringstuff.com
# Reading material min task lasting 1-3 minutes in pairs
***Reader Objects***
To read data from a CSV file with the csv module, you need to create a Readerobject. A Reader object lets you iterate over lines in the CSV file.  
Enter the following into the interactive shell, with example.csv in the current working directory:  

```
❶ >>> import csv  
❷ >>> exampleFile = open('example.csv')  
❸ >>> exampleReader = csv.reader(exampleFile)  
❹ >>> exampleData = list(exampleReader)  
❹ >>> exampleData  
   [['4/5/2015 13:34', 'Apples', '73'], ['4/5/2015 3:41', 'Cherries', '85'],  
   ['4/6/2015 12:46', 'Pears', '14'], ['4/8/2015 8:59', 'Oranges', '52'],  
   ['4/10/2015 2:07', 'Apples', '152'], ['4/10/2015 18:10', 'Bananas', '23'],  
   ['4/10/2015 2:40', 'Strawberries', '98']] 
```   
   Notes* To read a CSV file with the csv module, first open it using the open() function ❷, just as you would any other text file. But instead of calling the read() or readlines()method on the File object that open() returns, pass it to the csv.reader() function ❸. This will return a Reader object for you to use. Note that you don’t pass a filename string directly to the csv.reader() function.  
The most direct way to access the values in the Reader object is to convert it to a plain Python list by passing it to list() ❹. Using list() on this Reader object returns a list of lists, which you can store in a variable like exampleData. Entering exampleData in the shell displays the list of lists ❺.



```
You can acess the value at a particular row and colomun with the expression exampleData[row][col]  

>>> exampleData[0][0]  
'4/5/2015 13:34'  
>>> exampleData[0][1]  
'Apples'  
>>> exampleData[0][2]  
'73'  
>>> exampleData[1][1]       
'Cherries'      
>>> exampleData[6][1]       
'Strawberries'      
```

Reading Data from Reader Objects in a for Loop      
For large CSV files, you’ll want to use the Reader object in a for loop. 
```
Example     


>>> import csv  
>>> exampleFile = open('example.csv')  
>>> exampleReader = csv.reader(exampleFile)  
>>> for row in exampleReader:  
        print('Row #' + str(exampleReader.line_num) + ' ' + str(row))  

Row #1 ['4/5/2015 13:34', 'Apples', '73']  
Row #2 ['4/5/2015 3:41', 'Cherries', '85']  
Row #3 ['4/6/2015 12:46', 'Pears', '14']  
Row #4 ['4/8/2015 8:59', 'Oranges', '52']  
Row #5 ['4/10/2015 2:07', 'Apples', '152']    
Row #7 ['4/10/2015 2:40', 'Strawberries', '98']  
```

***Writer Objects***  
A Writer object lets you write data to a CSV file. To create a Writer object, you use the csv.writer() function. Enter the following into the interactive shell:
```
>>> import csv  
❶ >>> outputFile = open('output.csv', 'w', newline='')  
❷ >>> outputWriter = csv.writer(outputFile)  
   >>> outputWriter.writerow(['spam', 'eggs', 'bacon', 'ham'])  
   21  
   >>> outputWriter.writerow(['Hello, world!', 'eggs', 'bacon', 'ham'])  
   32
   >>> outputWriter.writerow([1, 2, 3.141592, 4])  
   16  
   >>> outputFile.close()  
  
```
__
 Notes* First, call open() and pass it 'w' to open a file in write mode ❶.      
   This will create the object you can then pass to csv.writer() ❷ to create a      
   Writer object
__


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