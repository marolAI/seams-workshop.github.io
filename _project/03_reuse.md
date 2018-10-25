---
slug: reuse
title: Reuse & Reusability
---

Exercise.  Make some part of your project reusable

1. Initial conception.  Identify a part of your project that might be carved off as a re-usable package.  You might do this solely for yourself and your colleagues, or for a broader set of users. 
   * what does the package do?  
   * what would it be used for?  who would use it?   
   * what would be the dependencies? 
   * what do you know about how to generate and disseminate such a package? 
2. Planning.  Map out the steps to make a package. 
   * what is required by the chosen package dissemination system, e.g., CRAN? 
   * what additional documentation would need to be written?
   * what changes in file naming and organization would be useful? 
   * what new tests, if any, would be helpful?

Alternative.  Replace parts of your package with an existing module.  

1.  Identify replaceable modules.  
   * list 3 parts of your project where you suspect that someone has done this before, and you might benefit from their work 
   * poke around on the web.  Try to find a module that does what you want. 
   * what extra functionality would you get from importing this module?  Is it going to make your life easier?  
2.  Planning.  Map out the steps to replace part of your code with an imported module
   * does this add further dependencies?  is that a problem?  How do you decide? 
   * Will you wrap imported functions (methods) to match yours, or go down to a lower level? 
   * how will you declare this dependency to potential users? 
 