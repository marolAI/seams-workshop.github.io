---
slug: design
title: Project Design & Planning
---
SEAMS is about

 - **S***oftware*: useful computer abstractions for transforming inputs into outputs, created by...
 - **E***ngineering*: an organized, systematic approach to design and delivery of reliable, flexible, practical, and human-useable systems for...
 - **A***pplied*: considering empirical data...
 - **M***athematical*: within quantitative, rules-based representations...
 - **S***ciences*: that make testable predictions.

These interpretations can guide the way you approach a new research problem--or, put another way, they can help you with *design* and *planning* for the work that will answer a research question.

# Steps of Design in a Scientific Programming Project

Science revolves around observation, prediction, and experiment. You might apply software to any or all of these steps, and the best practices for those activities translate naturally to any software project.  Collecting field data? You need to make unambiguous observations, deal with incomplete measurements, and perhaps even censor (without discarding!) certain observations, among other concerns. These translate directly into implementation issues for your project: how to represent measurements (with or without units? regularizing categorical data?), differentiating between *nothing observed* and *not observed*, and cleaning transformations from raw data to ready-to-analyze data.

A deliberate approach to **Design** is one way researchers can ensure that their work meets the high standard of Science.  Overall, design has roughly two parts: *requirements* and *architecture*. These concepts can be thought of as the problem *constraints* and your approach to *satisfying* them.

## Requirements

## Architecture



# Planning

With a project design in mind, researchers can make a plan to accomplish that work.  Important scientific work is increasingly collaborative, and modern communication technology enables those collaborations to occur across continents.  Similar technology makes unprecedented amounts of computational resources available for research.

However, effective use of these advantages requires careful planning.  Software development companies will often adopt formal planning and tracking processes once they reach sufficient size and project complexity.  At SEAMS, we are not covering any of those formal processes directly, but rather focusing on the more fundamental concepts such approaches are intended to address.

At its core, most effective planning is about carefully answering six questions, Who-What-When-Where-Why+How often shortened to 5WH.

# References

 - [Wikipedia: Software Design](https://en.wikipedia.org/wiki/Software_design); ignore the arcane vocabulary, and focus on the high level concepts 
 - [Wikipedia: Software Requirements](https://en.wikipedia.org/wiki/Software_requirements), and most particularly the [specification section](https://en.wikipedia.org/wiki/Software_requirements_specification).  Again, there's some business jargon, but the high level concepts (e.g., user stories) may be applicable to your project.
 - Assorted other requirements related items: [here](https://www.geeksforgeeks.org/software-engineering-requirements-engineering-process/), [here](http://www.inf.ed.ac.uk/teaching/courses/cs2/LectureNotes/CS2Ah/SoftEng/se02.pdf), [and here (though this one has annoying pop-ups)](https://www.guru99.com/learn-software-requirements-analysis-with-case-study.html)
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