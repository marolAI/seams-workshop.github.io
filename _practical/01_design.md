---
slug: design
title: Project Design & Planning
---
The participants will bring up general a programming project / problem posed in a "real world" framing as an individual.  Ask participants to:  
(1) write a design diagram / process flow to solve that problem in high level pseudo-code  
(2) The plan (as a series of implementation steps) they would use to accomplish that design.

For part 2, add a mild complication to that problem.  Ask them to update (1), and add a step to (2) (WITHOUT REVISING THE STEPS THEY   
"ALREADY DID") so that they can accomplish addition.  As a (3) ask them what they could have done differently for (1) and (2) such that 
this update would have been easier.

For part 3, tell them you are going to add another complication.  They may "refactor" their (1) and (2) answers based on (3) first.  Once they do that (or not), give them another complication and ask them to update (1) and (2) again, and do another (3) with what improvements they might have made.


<b>Example 1 of a posed problem in a web application environment</b>  
  You have uploaded profile pictures of people, all with similar dimensions (pixels) to fit onto a cell on a page but some leave empty  
  spaces bordering the picture inside the cell.
  
<b>1. Design  diagram/ process flow in high level pseudo-code:</b>
```
step a. Upload profile picture
            
step b. if profile picture fits specified cell
        
step c. then it will be uploaded and displayed
            
step d. if it does not meet the dimensions specified
            
step e. then a crop interface will be generated to adjust the picture for a best fit
            
step f. Picture displayed            

```

<b>2. The plan as a series of implementation steps </b>
```
Step a. Build interface with option to upload a picture on a separate interface(admin)  
        and display a photograph on a different page.
step b. Get the picture.
Step c. Calculate the difference in dimensions between the uploaded picture and the   
        space the picture will fit into a cell by presenting a presenting an interface  
        with a crop functionality.
Step d. If the picture uploaded best fits the cell then the original picture will be   
        uploaded, if not the crop interface will be displayed.
Step e. Cell is populated with the picture


```


<!--
### Why do we write software?

Some scenarios:
- a script to extract some data from a file one time

- a data integration pipeline to merge information 
  from multiple sources

- analysis tools that do not exist (in my language/in
  a way that meets my needs)

- a graphical interface to communicate information to 
  non-technical users

- a smartphone game where people move pixels to make 
  the screen flash and this makes me rich

- an operating system


### Is there anything special about research software? Yes!
- Research software is often trying to do something new,
  and new endeavors don't always succeed.  It is more
  likely that you will have to stop and re-plan at some
  point in the middle of your project.

- A critical aspect of doing research is repeatability.
  Write your software in a way so that you and others
  will be able to re-create your results.  Sometimes you
  need to do this in order to sort out a bug; othertimes
  you want to repeat the analysis on a slightly different
  problem.

- Licensing for research software tends to be easy, because
  it is usually (and should be!) open source.  You can
  often use other open source software without problems,
  just remember to give appropriate credit to other
  software developers.


###Questions to answer (from class discussion):

1. What problem will it solve?
2. How beneficial will it be?
3. What kinds of methods?
4. Will it be efficient enough?
5. What programming language?
6. Is it sufficiently user-friendly?
7. Is it a correct algorithm / is it guaranteed to be 
   good enough?
8. Is it an improvement over existing methods?


### My list of questions to answer:

1. What is the problem to solve?
2. Who is the typical user?
3. Use case(s)?
4. Licensing?
5. Background research to do?
6. Data requirements?
7. Language/framework?
8. Hardware?
9. Operating system?
10. 3-5 milestones?
11. Potential challenges?

### Applying these ideas

For each of the following projects, take a few minutes to answer my list
of questions.

The projects:
1. command line tool that takes a URL and writes 
   plain text to disk

2. library that compares non-standard place names to
   a curated dictionary and does smart-matching

3. real-time prediction of match outcomes

4. battery tracker for smartphones that identifies 
   events that affect battery life (like software 
   updates, new apps, usage changes)

5. predictive elephant movement simulator


Input
-interface with a message to upload a picture
-get the picture


Processing
- calculate the diffence in pixels between the exisiting cell and the uploaded picture
- if picture overlaps the boundaries of the cell present an interface to crop the picture
- if picture is the best fit upload the picture to the cell


Output

-cell is populated with the picture







-->
