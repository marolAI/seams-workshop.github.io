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

# Practical 1
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
The program doesn’t remove the first line from the CSV file. Rather, it creates a new copy of the CSV file without the first line. Since the copy’s filename is the same as the original filename, the copy will overwrite the original.  

Add the following to removeCsvHeader.py.

```
#! python3
# removeCsvHeader.py - Removes the header from all CSV files in the current
# working directory.


# Read the CSV file in (skipping first row).
csvRows = []
csvFileObj = open(csvFilename)
readerObj = csv.reader(csvFileObj)
for row in readerObj:
    if readerObj.line_num == 1:
        continue    # skip first row
    csvRows.append(row)
csvFileObj.close()


```





***Step 3: Read in the CSV File***  
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
# Practical 2 Fetching Current Weather Data  

***Step 1: Get Location from the Command Line Argument***

The input for this program will come from the command line.   
Make quickWeather.py look like this:
```
#! python3
# quickWeather.py - Prints the weather for a location from the command line.

import json, requests, sys
# Compute location from command line arguments.
if len(sys.argv) < 2:
    print('Usage: quickWeather.py location')
    sys.exit()
location = ' '.join(sys.argv[1:])


```
***Step 2: Download the JSON Data***  
OpenWeatherMap.org provides real-time weather information in JSON format.   Your program simply has to download the page at [http://api.openweathermap.org/data/2.5/forecast/daily?q=<Location>&cnt=3], where // Location is the name of the city whose weather you want.   
Add the following to quickWeather.py.
```
#! python3
# quickWeather.py - Prints the weather for a location from the command line.

# Download the JSON data from OpenWeatherMap.org's API.
url ='http://api.openweathermap.org/data/2.5/forecast/daily?q=%s&cnt=3' % (location)
response = requests.get(url)
response.raise_for_status()
```
Step 3: Load JSON Data and Print Weather  
Jason Data will look like this:  
```
{'city': {'coord': {'lat': 37.7771, 'lon': -122.42},
          'country': 'United States of America',
          'id': '5391959',
          'name': 'San Francisco',
          'population': 0},
'cnt': 3,
'cod': '200',
'list': [{'clouds': 0,
          'deg': 233,
          'dt': 1402344000,
          'humidity': 58,
          'pressure': 1012.23,
          'speed': 1.96,
          'temp': {'day': 302.29,
                   'eve': 296.46,
                   'max': 302.29,
                   'min': 289.77,
                   'morn': 294.59,
                   'night': 289.77},
          'weather': [{'description': 'sky is clear',
                       'icon': '01d',

```


The weather descriptions you want are after 'main' and 'description'. To neatly print them out,   
add the following to quickWeather.py.
```
! python3
   # quickWeather.py - Prints the weather for a location from the command line.


   # Load JSON data into a Python variable.
   weatherData = json.loads(response.text)
   # Print weather descriptions.
❶ w = weatherData['list']
   print('Current weather in %s:' % (location))
   print(w[0]['weather'][0]['main'], '-', w[0]['weather'][0]['description'])
   print()
   print('Tomorrow:')
   print(w[1]['weather'][0]['main'], '-', w[1]['weather'][0]['description'])
   print()
   print('Day after tomorrow:')
   print(w[2]['weather'][0]['main'], '-', w[2]['weather'][0]['description'])
```
Notice how the code stores weatherData['list'] in the variable w to save you some typing ❶. You use w[0], w[1], and w[2] to retrieve the dictionaries for today, tomorrow, and the day after tomorrow’s weather, respectively. Each of these dictionaries has a 'weather' key, which contains a list value. You’re interested in the first list item, a nested dictionary with several more keys, at index 0. Here, we print the values stored in the 'main' and 'description' keys, separated by a hyphen.  
When this program is run with the command line argument quickWeather.py San Francisco, CA, the output looks something like this:  

```
Current weather in San Francisco, CA:
Clear - sky is clear

Tomorrow:
Clouds - few clouds

Day after tomorrow:
Clear - sky is clear

```



***Ideas for Similar Programs:***
*	Combine multiple csv files with the same columns and column headings into one csv file.
*	Copy specific data from a CSV file to an Excel file, or vice versa.

