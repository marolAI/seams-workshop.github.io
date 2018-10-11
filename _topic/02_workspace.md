---
slug: workspace
title: Workspace Organization & Tools
---

## Collaboration technology and protocols

How are you going to share work?  Communicate?  Keep records of decisions?  Track progress on goals?  Choose a set of assistive technologies for sharing, and develop protocols for using them with your team. 

### Technologies 

Decide what **types** of communication and collaboration technology facilitate the success of your project.  Choose (ideally) just one tool of each type.  We will address version control separately below.  

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


## Version Control

 - [SO: Why Should I Use Version Control?](http://stackoverflow.com/questions/1408450/why-should-i-use-version-control) and [Academia SE: Why Use VC for Writing a Paper?](http://academia.stackexchange.com/questions/5277/why-use-version-control-systems-for-writing-a-paper)
 - [Biomed Central Blog](http://blogs.biomedcentral.com/bmcblog/2013/02/28/version-control-for-scientific-research/) - several links to other publications on value of version control in science, including:
 - [ArXiV description](http://arxiv.org/pdf/1210.0530.pdf)
 - [PLoS Computational Biology](http://dx.doi.org/10.1371/journal.pcbi.1003285)
 - [Assorted Reddit Discussions](http://www.reddit.com/r/programming/search?q=why+version+control&restrict_sr=on)
 - Git Tutorials:
   * [with GitHub](https://try.github.com/)
   * [visualization](http://pcottle.github.io/learnGitBranching/)
   * [undoing](https://github.com/blog/2019-how-to-undo-almost-anything-with-git)
   * [writing good commit messages](http://chris.beams.io/posts/git-commit/)
   * [daunting book](https://progit.org/)

Protocol questions
* what goes under version control, and what doesn't
* branching protocol
* gitflow and other patterns

## Organizing project resources 

## Issue tracking 



## Managing resources 

* Backup.  Safeguard against accidental loss or corruption.  
* Organization.   
* File encodings
* Documentation.  separate section. 
* Sharing and re-use
* Preservation

 - [Data Management Discussion](http://mariovalle.name/sdm/scientific-data-management.html)
 - [Boston University Discussion](http://www.bu.edu/datamanagement/outline/elements/) - good surrounding context discussion as well
 - [Discussion of Long vs Short Form Data](http://seananderson.ca/2013/10/19/reshape.html), and from `reshape2` package author:
 - [J. Stat. Soft. article discussing](http://www.jstatsoft.org/v21/i12)
 - [SO: Why Use SQL Database?](http://stackoverflow.com/questions/2900324/why-use-sql-database)
 - [UK Data Archive](http://www.data-archive.ac.uk/media/2894/managingsharing.pdf) - good general read, but certain specific sections pertinent to how to organize / save yours


## Packaging for distribution
* 
* 


## IDE Organization Tools

 - [What is an IDE](http://en.wikipedia.org/wiki/Integrated_development_environment) and [why use one](http://programmers.stackexchange.com/questions/20950/what-justifies-the-use-of-an-ide-versus-a-standard-editor) [(or not)](http://blog.bittersweetryan.com/2012/02/great-ide-vs-text-editor-debate-why-i.html)?
 - [Broad Comparison of IDE](http://en.wikipedia.org/wiki/Comparison_of_integrated_development_environments) - what seems to be important?
 - [RStudio IDE Project](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects)
 - [PyCharm IDE Project](https://www.jetbrains.com/pycharm/help/project.html)

<!--
## System Tools

Unix-like systems provide a variety of command line tools to accomplish tasks in the file system.  In some settings
(*e.g.*, typical supercomputers) these tools are it, so they are important to
understand.  However, even where you can use fancier tools, [these may do parts of the job better](http://superuser.com/questions/414965/when-to-use-bash-and-when-to-use-perl-python-ruby).

Some command line cheat sheets:

 - [one](http://cli.learncodethehardway.org/bash_cheat_sheet.pdf)
 - [another](http://www.git-tower.com/blog/command-line-cheat-sheet/)

## Basic Layout

 - [Python Project Template Guide](http://learnpythonthehardway.org/book/ex46.html) - challenge: write a bash script to automate this approach
 - [...or try any of several pre-packaged options](https://www.google.com/search?q=python%20package%20template)
 - [General Discussion for R Packages](http://r-pkgs.had.co.nz/)
--> 


<!-- ## Publish!

The our goal as scientists is to create useful knowledge (*useful* may be defined on a very long time scale).  Knowledge doesn't exist if people don't have access to it, and it's not useful if they can't engage with it.

There are a variety of tools that support co-mingling your code with the scientific report it supports:

 - general discussion of literate programming
 - rweave
 - jupyter

## Finally: Think in Terms of the **Product**

We want "software" (*e.g.*, the combination of scripts, analysis code, data
management, reference management, external tools devoted to addressing a
particular research question / area) that is:

 - easy to use correctly
 - easy to verify (*i.e.*, does what intends) and validate (*i.e.*, produces something
   that can be compared to empirical measurements)
 - easy to know when using incorrectly, and what to change to use correctly
 - easy to understand, both as a whole and individual parts
 - plausible to deploy in other settings (*e.g.*, distributed computation, GUI tool for non-technical users)
 - generalizable (*e.g.*, different dataset / context)

## Think in Terms of the **Process**

motivate remaining points in terms of how a scientist works.  Organization should
support:

 - shifting data (new data, updates to existing data, changes to schema)
 - effective collaboration with people in different roles (*e.g.*, theoreticians, modelers, field scientists)
 - portability
 - publication (results *as well as recipe*)
 - subsequent extension
 
 -->

