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

#### Disadvantages of plain text files
* Lack of standards:  
- No standard way to specify data format. No standard way to express “special characters”.  
* Inefficiency:  
- Can lead to massive redundancy (repetition of values). Speed of access and space efficiency for large data sets.  Difficult to store “non-rectangular” data sets.  
* Lack of data integrity:
- lack of data integrity measures


![alt text here](Desktop/family tree.png)
```
Consider a data set collected on two families from the above figure 1.4 .What would this look like as a flat file?  
One possible comma-delimited format is shown below:  

John,33,male,Julia,32,female,Jack,6,male
John,33,male,Julia,32,female,Jill,4,female
John,33,male,Julia,32,female,John jnr,2,male
David,45,male,Debbie,42,female,Donald,16,male
David,45,male,Debbie,42,female,Dianne,12,female

```
* Firstly, it is not efficient; the parent information is repeated over and over again.

# Disadvantages of plain CSV files

Just the storage of this number of files presents a challenge:
1.	Storing these files in one directory would cause confusion making it difficult to find files and would make it   
    difficult to remove or modify files.
2.	The next problem is how to name these files. Choosing file names is a form of documentation; the name of the file   should clearly describe the contents of the file, or at least distinguish the contents of the file from the contents of other files in the same directory.
4.  Another thing to consider is how the files will be ordered in directory listings; will it be easy to browse a list of the files in a directory and find the file we want?



# Reference list  
* https://dzone.com/articles/what-are-databases-used-for
* http://people.scs.carleton.ca/~achan/teaching/comp1001/notes/COMP1001-06.pdf
* http://statmath.wu.ac.at/courses/data-analysis/itdtHTML/node56.html#SECTION001154000000000000000


