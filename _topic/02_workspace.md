---
slug: workspace
title: Workspace Organization & Tools
---
# Overview: guiding principles 

Our goal as scientists is to create useful knowledge (*useful* may be defined on a very long time scale).  Knowledge doesn't exist if people don't have access to it, and it's not useful if they can't engage with it.

## Think in Terms of the **Product**

We want "software" (*e.g.*, the combination of scripts, analysis code, data management, reference management, external tools devoted to addressing a particular research question or area) that is:

 - easy to use correctly
 - easy to verify (*i.e.*, does what intends) and validate (*i.e.*, clear expectation of output for given inputs)
 - easy to know when using incorrectly, and what to change to use correctly
 - easy to understand, both as a whole and individual parts
 - plausible to deploy in other settings (*e.g.*, distributed computation, GUI tool for non-technical users)
 - generalizable (*e.g.*, different dataset / context)

## Think in Terms of the **Process**

Organization should support:

 - shifting data (new data, updates to existing data, changes to schema)
 - effective collaboration with people in different roles (*e.g.*, theoreticians, modelers, field scientists)
 - portability
 - publication (results *as well as recipe*)
 - subsequent extension

## Resources

* [DataONE primer on data management](https://www.dataone.org/sites/all/documents/DataONE_BP_Primer_020212.pdf) (PDF)
* Wilson, et al. [Best Practices for Scientific Computing](https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1001745)
* [Ten Simple Rules for Reproducible Computational Research](http://dx.doi.org/10.1371/journal.pcbi.1003285)

# Topics

## Plan to manage your resources 

Stages and activities in the data life-cycle
* Storage and backup.  Safeguard against accidental loss or corruption.  
* Organization.   see below. 
* File encodings
* Describe and document.  see below. 
* Sharing and re-use
* Preservation

**Resources**
 - [FAIR data principles](https://www.force11.org/group/fairgroup/fairprinciples)
 - [DataONE primer on data management](https://www.dataone.org/sites/all/documents/DataONE_BP_Primer_020212.pdf) (PDF)
 - [Introduction to Open Science: Why data versioning and data care practices are key for science and social science.](http://blogs.lse.ac.uk/impactofsocialsciences/2015/02/09/data-versioning-open-science/)
 - [Data Management Discussion](http://mariovalle.name/sdm/scientific-data-management.html)

<!-- reshape package, not relevant here 
 - [Discussion of Long vs Short Form Data](http://seananderson.ca/2013/10/19/reshape.html), and from `reshape2` package author:
 - [J. Stat. Soft. article discussing](http://www.jstatsoft.org/v21/i12)
-->

<!-- belongs in IO section 
 - [SO: Why Use SQL Database?](http://stackoverflow.com/questions/2900324/why-use-sql-database)
--> 
 - [UK Data Archive](http://www.data-archive.ac.uk/media/2894/managingsharing.pdf) - good general read, but certain specific sections pertinent to how to organize / save yours

## Using version Control

**Resources**
 - [SO: Why Should I Use Version Control?](http://stackoverflow.com/questions/1408450/why-should-i-use-version-control) and [Academia SE: Why Use VC for Writing a Paper?](http://academia.stackexchange.com/questions/5277/why-use-version-control-systems-for-writing-a-paper)
 - [Biomed Central Blog](http://blogs.biomedcentral.com/bmcblog/2013/02/28/version-control-for-scientific-research/) - several links to other publications on value of version control in science
 - Git Tutorials:
   * [with GitHub](https://try.github.com/)
   * [visualization](http://pcottle.github.io/learnGitBranching/)
   * [undoing](https://github.com/blog/2019-how-to-undo-almost-anything-with-git)
   * [writing good commit messages](http://chris.beams.io/posts/git-commit/)
<!-- not needed
   * [daunting book](https://progit.org/)
--> 

Protocol questions
* what goes under version control, and what doesn't
* branching protocol
* gitflow and other patterns

## Organizing project resources 

Your future self is probably the top stakeholder.  Think about designing products that will be distributed, either to your future self or to others.  

* If you can't keep everything in one directory, maintain an up-to-date Project Map document that points to all resources.  Think of your project as a network of resources.  It needs to have a clearly identifiable **root** from which you can reach everything else-- no orphans.  
* Use a directory hierarchy for major dimensions (e.g., studies, data types), and file names for minor dimensions (e.g., replicates, dates).  
* Use "Archive" subdirs to keep your project tidy (leave them out of a distributed package)
* Use “README.txt” files to explain major directories
* Apply a consistent model, e.g., CamelCase.txt, kebab-case.txt, snake_case.txt.
* Make names from letters, numbers, and dot (.), dash (-) or underscore (_).  Other characters can hinder automated processing.
* Be concise, e.g., "data-table" is redundant in ir-expt01-sample028-data-table.csv.
* Make sure dates and numbers sort as desired. Use ISO 8601 (YYYYMMDD).  Pad counting numbers with leading zeros: 2 sorts after 12, but 02 sorts before 12. 
* Create a file list (manifest) and refer to it in your top-level README file 
   * `ls -AFR1 path_to_my_dir > MANIFEST`
   * `tar -cv path_to_my_dir 2>&1 >/dev/null | sort | sed 's/^a //' > MANIFEST`

**Resources**
* Dryad's instructions to [Name files and directories in a consistent and descriptive manner](https://datadryad.org/pages/reusabilityBestPractices#filenames)
* Dryad's instructions to [Organize files in a logical schemaf](https://datadryad.org/pages/reusabilityBestPractices#organize)

## Issue tracking 

GitHub.com and GitLab.com both offer built-in issue tracking systems.  

However, issue tracking systems are not just for software.  Customer service departments use them to record complaints and other issues, and to track how those issues are addressed.  Many people use issue trackers such as Trello as personal productivity tools.  

Some of the key concepts are 
* opening and closing.  An issue or ticket is "open" until it is resolved, then it is "closed".  Often there is a flow for tickets with 4 or 5 stages
   * backlog.  low priority or unprioritized issues, e.g., something we might do some day
   * ready.  issues prioritized for action
   * in progress.  a developer is working on this
   * needs review.  developer is done, now look at results and decide whether to close or put back in "ready"
   * closed.  this issue is done.  open new tickets for any separate tasks provoked by this issue.  
* assignment.  Issues can be assigned to one or more persons.  A programmer who completes work on a ticket may assign it to a second person for review.  
* monitoring and notification.  Action on issues can be monitored with automatic notification.  At the level of the whole project, you can monitor how many issues are closed each month. 
* tagging and grouping.  Issues can be tagged ("bug", "feature request") and grouped into sets corresponding to milestones or sprints.  
* prioritization.  A team may get together regularly to review open tickets and prioritize them for action.  

**Resources**
* Wikipedia [issue tracking system](https://en.wikipedia.org/wiki/Issue_tracking_system)
* [Comparison of issue-tracking systems](https://en.wikipedia.org/wiki/Comparison_of_issue-tracking_systems)

## Using tests

What do you test?  Focus first on functional requirements.  This applies both to low-level testing and to high-level testing.  Your software (and its functions or methods) is supposed to generate some useful output from valid inputs.  Make sure it does.  Then you can start testing for other things, like how well it handles exceptions such as invalid inputs.  

Some concepts 
* "regression testing" means checking that the software still does what it did previously
* unit tests focus on individual functions or methods
* integration tests depend on multiple functions or methods working together

**Resources**
* [20 practical testing tips](https://www.softwaretestinghelp.com/practical-software-testing-tips-to-test-any-application/)
* wikipedia on [software testing](https://en.wikipedia.org/wiki/Software_testing)
* R unit-testing library [testthat](https://testthat.r-lib.org/)
* Python [unittest](https://docs.python.org/3/library/unittest.html)

## Packaging resources for distribution

**Resources**
* [General Discussion for R Packages](http://r-pkgs.had.co.nz/)
* [Python Project Template Guide](http://learnpythonthehardway.org/book/ex46.html) - challenge: write a bash script to automate this approach
* [...or try any of several pre-packaged options](https://www.google.com/search?q=python%20package%20template)

## Documenting code

**Resources**
* [a beginner's guide to writing docs](https://www.writethedocs.org/guide/writing/beginners-guide-to-docs/)
* [Sphinx](http://www.sphinx-doc.org/en/master/)
* in-line documentation
   * [Doxygen](https://en.wikipedia.org/wiki/Doxygen) (for C, C++, Java, Python, some other languages)
   * Python in-line [DocStrings explanation](https://www.electricmonk.nl/log/2008/06/22/why-python-rocks-i-inline-documentation/
) 
   * [Writing documentation with ROxygen2](http://kbroman.org/pkg_primer/pages/docs.html) (R in-line documentation)
   * Perl's [POD (plain old documentation)](https://perldoc.perl.org/perlpod.html).  Always remember with POD that you have to put blank lines before and after each command. 
* why [writing better code reduces the need for commenting](https://medium.com/@andrewgoldis/how-to-document-source-code-responsibly-2b2f303aa525)

## IDEs and other tools

 - [What is an IDE](http://en.wikipedia.org/wiki/Integrated_development_environment) and [why use one](http://programmers.stackexchange.com/questions/20950/what-justifies-the-use-of-an-ide-versus-a-standard-editor) [(or not)](http://blog.bittersweetryan.com/2012/02/great-ide-vs-text-editor-debate-why-i.html)?
 - [Broad Comparison of IDE](http://en.wikipedia.org/wiki/Comparison_of_integrated_development_environments) - what seems to be important?
 - [RStudio IDE Project](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects)
 - [PyCharm IDE Project](https://www.jetbrains.com/pycharm/help/project.html)

## Collaboration technology and protocols

How are you going to share work?  Communicate?  Keep records of decisions?  Track progress on goals?  Choose a set of assistive technologies for sharing, and develop protocols for using them with your team. 

### Technologies 

Decide what **types** of communication and collaboration technology facilitate the success of your project.  Choose (ideally) just one tool of each type.  

1. communication and collaboration technology types
   * real-time communication by phone, email, or chat
   * virtual meetings (Skype, Hangout, Zoom, etc)
   * comment threads on tickets in your issue tracker
1. file-sharing  
   * version control
   * DropBox, Drive, etc
1. document-sharing and collaborative editing
   * Drive docs, etherpad
   
How much can you do with one platform?  For instance, maintain code and issues in GitHub, maintain planning docs on GitHub as well, add gitter for chat, add Waffle for multi-repo project tracker, Jekyll for CI. 

### Protocols

1. Agree on which technologies are used for which things.  
   * What goes into version control in a shared repo, and what goes in document sharing?
   * Public vs. private is a big issue here.  You may have a public code repo, but you need a private channel to discuss sensitive project issues, and a private file-sharing space for things like manuscripts in progress.  Do you want to keep planning documents private?  Do you want a private communication channel?  
   * Which kinds of plans are discussed in a public chatroom, and which are reserved for private channels
1.  Agree on how to use a technology
   * shared editing.  Wikipedia style, or is one person the lead author or owner? 

<!--
## System Tools

Unix-like systems provide a variety of command line tools to accomplish tasks in the file system.  In some settings
(*e.g.*, typical supercomputers) these tools are it, so they are important to
understand.  However, even where you can use fancier tools, [these may do parts of the job better](http://superuser.com/questions/414965/when-to-use-bash-and-when-to-use-perl-python-ruby).

Some command line cheat sheets:

 - [one](http://cli.learncodethehardway.org/bash_cheat_sheet.pdf)
 - [another](http://www.git-tower.com/blog/command-line-cheat-sheet/)
--> 





