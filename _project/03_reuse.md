---
slug: reuse
title: Reuse & Reusability
---

# Re-use activities to prepare for work on your project 

## Parts of your project that may be reusable

1. Prepare to become a package author.  
   * find out how and where packages are distributed in your preferred language, e.g., CRAN for R.  
   * create an account
1. Imagine carving off part of your code as a re-usable package. 
   * who are your target users?  Sometimes it makes sense to make a package just for yourself, to re-use your own code in other projects. 
   * Write a few sentence about what your package does.  
   * search the web for similar packages in the same or other languages.  What did you learn? 
1.  Research the mechanics of package generation in your preferred language
   * identify a source of guidelines or best practices and bookmark that
   * install any tools that you need to generate a package 
1.  Create a token package, just for practice.  
   * find a template for a package
   * modify the package metadata to fit a part of your project
1.  Do a quick cost-benefit analysis.   You have imagined a package and explored the tools and best practices for generating and distributing packages.  
   * what extra work is required for you to make a package? 
   * what are the costs and benefits? 

## Parts of your project that might be replaced with existing modules

This assumes that you know how to find packages for your preferred language and platform.  

1.  Identify replaceable modules.  
   * list 3 functionalities of your code that someone has probably implemented before.  Maybe there is a better version out there that would improve your project.    
   * poke around on the web.  Try to find a module that does what you want. 
   * what extra functionality would you get from importing this module (e.g., handling errors or exceptions)?  Is it going to make your life easier?  how do you decide whether importing this is worth the effort?   
1. Map out the steps to replace part of your code with an imported module
   * does this add further dependencies?  is that a problem?  How do you decide? 
   * Will you wrap imported functions (methods) to match yours, or go down to a lower level? 
   * how will you declare this dependency to potential users? 
 
## Ways to extend your project with existing modules

This assumes that you know how to find packages for your preferred language and platform.  

1.  Write down 3 ways that you might want to extend your project with new functionality.  Explore ways to implement that functionality using existing modules.  For instance
   * IO.  Maybe you want to store outputs in a database instead of ad hoc files.  Maybe you you want to input JSON instead of ad hoc files.  Are there modules for that?  
   * estimation methods.  Are there some other ways to do parameter estimation, perhaps more powerful or flexible than what you are doing?  
   * graphical user interfaces.  Would your code benefit from a web interface?  What's the easiest way to do that?
   