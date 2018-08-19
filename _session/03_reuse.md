---
slug: reuse
title: Reuse & Reusability
---

TBD!

<!--
## What & Why?

Some examples to look at:
 - [bad_code.py](bad_code.py)
 - [less_bad_code.py](less_bad_code.py)

## Best practices
Work with one other person to write a list of at least 10 "best practices,"
based on at least three sources.  For each best practice, note whether it is
something you should always, sometimes, or never do.  If sometimes, why only
sometimes?  If never--and there are some old best practices that are now
widely regarded as bad practices--try to understand why in some context they
made sense.  What kinds of factors determine what "best practices" means?

## Our list of best practices

 - Choose resourceful data types to minimize memory use
 - Consistent naming scheme
 - Comment your code
 - Consistent indentation
 - Avoid hard-coding system values
 - Keep it simple
 - Make and use tests
 - Provide working examples
 - Refactor your code as necessary
 - Avoid deep-nesting
 - Avoid copypasta--write functions!
 - Functions should have a single, coherent purpose
 - Functions should fit on the screen
 - Avoid really long lines of code
 - Use syntax highlighting
 - Adopt and use standards, especially in a team

## Separations of concerns
 - whitespace
 - functions
 - classes
 - files
 - directories
 - projects

## User interface and object design
Draw and label the parts of two electric fans (the kind you cool yourself
with).  

For the first one, include the minimum number of functional parts--
the simplest possible powered fan, if you were to put one together from minimal
parts.

For the second one, include things that would make it user-friendly,
something that might be sold in a store.

## Design a class structure
Write down a class hierarchy that reflects the functional and user-friendly
fan parts that you identified in the last part.  What is part of the public
interface for each class?  If you need help getting started, a sensible option
would be to start with a Fan class and create functions the correspond to how
the user would interact with it.  What subclasses to you need to define that
can be put together to make up a Fan object?  Note that you DO NOT need to
write any algorithms or mathematical equations.  For example, you don't need
to figure out how pushing a button (or turning a dial or pulling a chain)
changes the motor speed, but your interface should indicate that that
functionality exists.

[Example of a class diagram](http://web.gccaz.edu/~pbrown2/cis_225/projects/225P_Project_04_Class_Diagram_Auto_Shop.html)

{% comment %}

## older content
## What are coding conventions or best practices?
 - just a conversation, not intended to be exhaustive

## Value and burden of conventions
 - faster development
 - avoid decision fatigue
 - encoded information for the human reader
 - can be tedious/contentious/fail to be universally optimal

## Some topics
 - syntax
    - capitalization vs CamelCase vs pothole_case
    - whitespace
 - naming
    - get/set
    - indicating type
    - to reduce comment burden
 - ordering
    - function arguments
    - variable declaration
    - functions
 - optimizations
    - legibility (good first priority)
    - maintainability (dry principle)
    - algorithmic complexity (as needed)

## OOP
 - structure code the way people think
 - separation of concerns
    - clear interfaces
    - agnostic internals

## Comments from 04/08/15
 - conventions may be institutional or language specific
 - NASA example
 - math has its own set of conventions, that may compete with programmatic concerns
 - best option tends to be audience-specific


## previous notes

organizing by way of syntax choices: capitalization vs CamelCase vs pothole_case,
indentation, arrangement of function arguments, etc.

Value of making these choices consistently: like reading a well-written book.
Authors may each have different voice, but their story-telling style (word choice,
construction, etc) is consistent within a book, often across their work.

Organization by class structure - what to make a class, what to not make a class.
Using functions to make work intellectually bite-sized.  Approaching organization
in a way that minimizes how much you have to worry about at once.

Regular refactoring: not just for optimization, but for organization.

## Simon C's notes

Reuse and reusability
=====================

Since we only have half a day for discussion, I'd like to approach this topic
through the lens of two very simple practical questions:

1. Under what circumstances do you expect or desire your code to be rerun?
2. What does this imply for how your write and manage your code?

Some responses:

* In the context of computer programs, reuse means "to be run again".

* To rerun the code, you need to be able to obtain a copy of the code, and
  of any other libraries or tools it depends on in order to be compiled
  and executed. For you own code:

  * Use version control.
  * Have backups.
  * Specify the dependencies clearly and explicitly and in a form
    that allows the environment required for the code to run to be
    quickly and precisely recreated.
  * If you would like someone else to run the code, use tools and
    conventions that are widely known.
  * Publish your code in standard formats to locations that people
    will look for it (e.g. PyPI, nvm, packages for Linux distributions,
    docker registry, GitHub, GitLab).

* You might rerun the code yourself, or someone else might run it. It
  might be rerun on the computer it was written on, or a different
  computer. The computer might have the same arcitecture, or a slightly
  different one, or a completely different one. It might be rerun on the
  same version of the same operating system, or a different version,
  or a different operating system entirely. It might be run on a machine
  with the same hardware or different hardware.

* One of the simplest reuses is to run the code again on the same inputs
  -- do you require the results to be the same? What might change the
  results? Unseed random numbers are an obvious example, but all
  data retrieved from external sources might change -- any data retrieved
  from the network, or from files that are not explicitly part of the input.

* One often also needs to run code against different input data. Can that
  be easily specified without modifying the code? If one does need to
  modify the code, does one have to change one place or many?

  * If one is writing a CL*I* remember that this is an *interface* --
    and it should strive to be a clean, simple, and complete
    just like an HTTP or programmatic API.

* One can also call the same piece of code multiple times from within
  the same program. Is the code internally divided up into reusable
  pieces? What makes a piece reusable?

  * It should be generically applicable.

* Sometimes one might want to create a toolkit of related functions
  or classes that can be reused in many programs -- a library.

* What are the dangers of reusing code? What if the code is wrong?

  * Leads into discussion of testing.

* What are the benefits of copying code rather than reusing it?

  * Leads into questions of when two functions really implement the
    same concept, vs functions which happen to do similar things
    *but might evolve to do different things* in the future.

* One might want to reuse code tomorrow, or five years from now. What
  are the implications of this?

* If one wishes code to be used in multiple environments, how does one
  ensure if works correctly in each environment?


Things Carl mentioned
---------------------

* interfaces & conventions -- i.e. understanding what they are for the
  relevant languages/libraries, so you can develop your code around them
  (either for use by you or others)

* documentation

* how testing is relevant to reuse

* finding / using libraries (i.e., how to find other people's work, how to
  make your work findable).

{% endcomment %}
-->
