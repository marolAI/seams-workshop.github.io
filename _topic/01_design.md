---
slug: design
title: Project Design & Planning
---
# Project Design & Planning Reference Material

SEAMS is about

 - **S***oftware*: useful computer abstractions for transforming inputs into outputs, created by...
 - **E***ngineering*: an organized, systematic approach to design and delivery of reliable, flexible, practical, and human-useable systems for...
 - **A***pplied*: considering empirical data...
 - **M***athematical*: within quantitative, rules-based representations...
 - **S***ciences*: that make testable predictions.

These interpretations can guide the way you approach a new research problem--or, put another way, they can help you with *design* and *planning* for the work that will answer a research question.

# Steps of Design in a Scientific Programming Project

Science revolves around observation, prediction, and experiment. You might apply software to any or all of these steps, and the best practices for those activities translate naturally to any software project.  Collecting field data? You need to make unambiguous observations, deal with incomplete measurements, and perhaps even censor (without discarding!) certain observations, among other concerns. These translate directly into implementation issues for your project: how to represent measurements (with or without units? regularizing categorical data?), differentiating between *nothing observed* and *not observed*, and cleaning transformations from raw data to ready-to-analyze data.

A deliberate approach to **Design** is one way researchers can ensure that their work meets the high standard of Science. Taking the time to a make a design does not directly writing the code to solve your problem, and as such people often think "Why bother?"  For exploratory work, that approach can be fine.  But much like a scientist cannot undertake experimental, publishable work without establishing a protocol (and in the case of clinical trials, this is a *legal* matter), approaching a serious programming project without laying it out first will doom the result.

Overall, design has roughly two parts: *requirements* and *architecture*. These concepts can be thought of as *constraints* and your approach to *satisfying* them.  *Requirements* also has a related concept that is less absolute: we can usually also list *wants* - elements which are not necessities, but that represent improvements. These additional desires can of course influence what decisions we make for *architecture*. 

## Requirements

There are a variety of good formal descriptive approaches used for thinking about requirements.  None of them are perfect for every combination of people and project!  However, usually all of them can provide some insight into thinking about your problem.

In general, developing requirements is about having *sufficient* constraints (1) to start working on your problem and, later, (2) to tell if you have actually solved your problem.  Generally, you should start without having (2) completely finished (at least, for a completely new project - extending a well-established project is another matter), but you aren't finished until (2) is complete.

For both (1) and (2), you can often identify constraints by posing questions and thinking about their answers. The pneumonic **5WH** is a good general set of questions to start with:

 - *What*: what are the input(s)? the analysis? the output(s)?
 - *Why*: why do the work? to answer a specific question now? a generic question when data becomes available? to simplify or standardize future work?
 - *Who*: who is going to provide input? use the software? see the outputs?
 - *Where*: where does your program run? a personal computer, a supercomputer, over the web, ...?
 - *When*: when does the program run? once, so you can publish results? whenever new data becomes available?
 - *How*: how does the software provide the needed capabilities? in a particular language? using a particular library?

These questions can be initially answered somewhat loosely--e.g., the input is a csv file--and increasingly refined as you develop the project and learn more about the detailed requirements--e.g., the input is a filename, provided via command line argument, which identifies a csv file which is semi-colon delimited.

### Requirements References

 - [Wikipedia: Software Requirements](https://en.wikipedia.org/wiki/Software_requirements), and most particularly the [specification section](https://en.wikipedia.org/wiki/Software_requirements_specification).  There's some business jargon, but the high level concepts (e.g., user stories) may be applicable to your project.
 - Assorted other requirements related items: [here](https://www.geeksforgeeks.org/software-engineering-requirements-engineering-process/), [here](http://www.inf.ed.ac.uk/teaching/courses/cs2/LectureNotes/CS2Ah/SoftEng/se02.pdf), [and here (though this one has annoying pop-ups)](https://www.guru99.com/learn-software-requirements-analysis-with-case-study.html)

As always: if you find an interesting / useful link or book, please feel free to suggest it to the site by forking, editing this file, and requesting a merge!

## Architecture

With a starting set of requirements, you can record your idea for how information flows (and is transformed) from input(s) to output(s). You can write this flow down using something between prose (often called plain or natural language) and pseudocode, but the key here is communication: you are providing a document for other developers (including future you!), users (again, future you!), and scientists reviewing your work (still including future you!) to think about what your software does.  This high level description should be roughly consistent with what you might put in the main text of a scientific publication for a "Materials & Methods" section.

Circling back to requirements, you should have a clear idea of which steps are associated with which requirements.  If there's a big imbalance in your requirements--most link to a single step, say, then perhaps you need to revisit your steps (though you may just have a high level of details in part of your requirements and a lot of work to do on the rest).  Alternatively, if a particular requirement is associated with too many steps, you probably don't have enough detail in the requirement or your steps aren't dividing up your problem cleanly.

Your architecture can be used as a skeleton for your project.  For example, if you identify seven high level steps, you can probably organize your code into seven high level pieces (e.g., seven scripts or folders collecting related scripts, or seven top level `make` targets). If you try to organize that way, and determine it makes more sense to have, say, four of those things (whatever the right instantiation is), then perhaps your high level process is only four steps.  These steps indicate minimal boundaries where you might want to test outputs, or store intermediate results.  They represent chunks that might be reusable (or largely replaceable with external libraries).  

### Architecture References

 - the [Wikipedia page](https://en.wikipedia.org/wiki/Software_architecture) is a thorough overview, though a bit technical.  Start with the History section.
 - [Some](https://refactoring.guru/design-patterns) [introductory pages](https://www.tutorialspoint.com/design_pattern/index.htm) on [design patterns](https://www.cs.cmu.edu/~charlie/courses/15-214/2016-spring/slides/24%20-%20All%20the%20GoF%20Patterns.pdf).

# Planning

With a project design in mind, researchers can make a plan to accomplish that work.  Important scientific work is increasingly collaborative, and modern communication technology enables those collaborations to occur across continents.  Similar technology makes unprecedented amounts of computational resources available for research.

However, effective use of these advantages requires careful planning.  Software development companies will often adopt formal planning and tracking processes once they reach sufficient size and project complexity.  At SEAMS, we are not covering any of those formal processes directly, but rather focusing on the more fundamental concepts such approaches are intended to address.



## Integrating Design and Planning

As you work through your design, you may (accidentally) fix parts of your plan to accomplish the work.  E.g., if your design does not have reasonably separable pieces, you may not be able to have different people work on the project.  Or you may need to have final data before you can start work.  Or any other number of 

# References

 - [Wikipedia: Software Design](https://en.wikipedia.org/wiki/Software_design); ignore the arcane vocabulary, and focus on the high level concepts 

<!--

Some references on software testing:

 - [An introduction to software testing](http://agile.csc.ncsu.edu/SEMaterials/BlackBox.pdf)
 - [A general guide to testing in Python](http://docs.python-guide.org/en/latest/writing/tests/)
 - [A guide to `unittest` (PyUnit)](http://www.drdobbs.com/testing/unit-testing-with-python/240165163)
 - [...and another](http://pythontesting.net/framework/unittest/unittest-introduction/)
 - Some tricks with PyCharm:
   * [running and debugging](https://www.jetbrains.com/pycharm/help/running-and-debugging.html)
   * [python debugger](https://www.jetbrains.com/pycharm/help/python-debugger.html)
   * [pycharm debug console](https://www.jetbrains.com/pycharm/help/using-debug-console.html)
   * [stepping through program](https://www.jetbrains.com/pycharm/help/stepping-through-the-program.html)
 - [Some tricks with Rstudio](https://support.rstudio.com/hc/en-us/articles/205612627-Debugging-with-RStudio)
 - [using R package testthat](http://journal.r-project.org/archive/2011-1/RJournal_2011-1_Wickham.pdf)
 - [thoughts on input validation](http://www.ibm.com/developerworks/library/l-sp2/)
 - [Tests for randomness](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.156.7149&rep=rep1&type=pdf)
 - [Thinking a bit about what testing means.](http://www.nytimes.com/interactive/2015/07/03/upshot/a-quick-puzzle-to-test-your-problem-solving.html)

-->