---
layout: page
title: Practicals
permalink: /practical/
---
Week 1 Afternoon Practicals:
{% for ss in site.practical %}- [{{ ss.title }}]({{ ss.url | prepend: site.baseurl }})
{% endfor %}

The practical exercises we have planned for each topic are similar to those in previous years, though we have consolidated them somewhat; while we finalize this year's materials, please feel free to {% include oldlink.md tx='peruse past practicals' l='practice/' %}.

# Generate JSON From SQL Using Python

```
Steps to take during the practical
1.Install python3
2.Import Database connector based on the database used i.e  pyodbc for Sql server, psycopg2 for PostgresSQL 
3.Create a table or tables to query in your SQL database and write and test your query.   
In this example, I have a table called Students that has a few fields for each student. The query is simple:
```
    SELECT ID, FirstName, LastName, Street, City, ST, Zip
    FROM Students
```

4. Here’s an example script that generates two JSON files from that query.
One file contains JSON row arrays, and the other JSON key-value objects. Below, we’ll walk through it step-by-step.
```
    import pyodbc
    import json
    import collections
    connstr = 'DRIVER={SQL Server};SERVER=ServerName;DATABASE=Test;'
    conn = pyodbc.connect(connstr)
    cursor = conn.cursor()
    cursor.execute("""
                SELECT ID, FirstName, LastName, Street, City, ST, Zip
                FROM Students
                """)
    rows = cursor.fetchall()
    # Convert query to row arrays
    rowarray_list = []
    for row in rows:
        t = (row.ID, row.FirstName, row.LastName, row.Street, 
             row.City, row.ST, row.Zip)
        rowarray_list.append(t)
    j = json.dumps(rowarray_list)
    rowarrays_file = 'student_rowarrays.js'
    f = open(rowarrays_file,'w')
    print >> f, j
    # Convert query to objects of key-value pairs
    objects_list = []
    for row in rows:
        d = collections.OrderedDict()
        d['id'] = row.ID
        d['FirstName'] = row.FirstName
        d['LastName'] = row.LastName
        d['Street'] = row.Street
        d['City'] = row.City
        d['ST'] = row.ST
        d['Zip'] = row.Zip
        objects_list.append(d)
    j = json.dumps(objects_list)
    objects_file = 'student_objects.js'
    f = open(objects_file,'w')
    print >> f, j
        
    conn.close()
    

```
*Set a connection string to the Server  
set a connection string to the server. Then, we use pyodbc to open that connection and execute the query:


```