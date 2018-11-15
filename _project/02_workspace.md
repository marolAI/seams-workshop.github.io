---
slug: workspace
title: Workspace Organization & Tools
---

# Documentation for Project Organization

 - Write a setup "script" for your project.  This should just be a series of steps in pseudo-code English covering what needs to happen to make a new computer ready to work on / use the project.  These steps should be comprehensible to a new collaborator on the project.  Make note of areas where this is currently more complicated than you like, and could potentially be simplified.
 
 - Write a README that explains the project layout within the filesystem (e.g., where inputs and outputs end up, what different parts of the source code cover).

 - Write a platforms overview for your project.
   * What operating systems does the project *run* on *now*?
   * What settings do you *need* it to run in?
   * Which ones do you *want* it to run in? E.g., your project is on Windows machine, collaborator wants to run it in Linux.
   * What system infrastructure does your project need *now* (e.g., Python / R interpretter, C/C++ compiler, database program, specific libraries)?
   * Which of those dependencies do you *need* to remove (or which new ones do you need to add)?  Explain why in a sentence or two for these needs and wants.

 - Write a collaboration overview for your project.
   * How does development for your project work *now*?  How many people can make changes to code? to input? to requirements (*i.e.*, the needs / demands / constraints etc. you might have defined during yesterdays project work)?
   * How do those people communicate needed changes, or accomplishment of work?  How does the team track these communications?
   * How many people are planned for the team in the *future*?  What role will those future collaborators play?  What is the plan for bringing them into the project?

# File System Organization

 - create *at least* one git repository for your project (any hosting service is fine), but don't worry about adding things to these repositories, (*except* the README file from earlier, adding an explaination of what SHOULD and SHOULD NOT be in the repository, as well as who will use the repository and how).
 If your project can be reasonably divided into core, reuseable pieces (generic analyses, e.g.) and particular application(s) (figure covering particular time period for a report, series of different experiments, e.g.), consider creating multiple repositories, for example one for the core components and others for specific applications.

 - arrange the project in your local filesystem, and connect the pieces to relevant remote services (e.g., you might be using Dropbox to share inputs or outputs). Think about project needs: what inputs need to be shared? what outputs? what is the core software? how will this project be used on other platforms (e.g., collaborators machines, super computer)?  Translate these into a directory structure, and identify the need for any local configuration files.

# Tools

 - What are the dependencies for your project (e.g., R libraries you use)?  What has to be done when they are updated?  Research via the web the options you have for dependency management.

 - What templating tools are there for the language(s) associated with your project?  That is, tools which build code skeletons automatically.

 - make

<!--
 - overall: implement file system layout for project plan, with connections to data sources + sinks, repository for project, well-defined configuration points (e.g., for mac vs linux machine, on personal vs supercomputer), and README file explaining how the pieces fit together.  Participants should consider how this will work with *other* projects they will use this system for (and how those other projects might build on / work with this project)
 - based on project process map / design plan, identify the tools users of your project need access to (e.g., Dropbox / Google Drive, support libraries, git repository), as well as the tools you need for development
 - use that to identify configuration information
 - figure out an approach that makes setting up this ecosystem across different platforms minimally painful
 - organize file system + repository accordingly

You should have a project, possibly as part of a team (if so, see note at end of this page), after yesterday.

Now you will need to create a space for your real project.

Using the same approach you developed for the practice projects, make a space for your workshop project.  After you organize the filesystem and repository for this project, you should gather any existing material you have and add it (as appropriate) to the repository.

Depending on the language for this project, you should also apply a template (*e.g.*, to deliver the project as an *R* package) to your project.

You should also set up the appropriate arrangements to meet you publication goal.  For example, if its a journal publication, then create a stub for that publication.  If it's a web-based interactive version of your science, get that component sorted.

Finally, turn your project definition into a series of steps on GitHub as issues and grant the appropriate permissions for the project.

As with yesterday, and the rest of the project sessions, you will need to present a 1-minute update on your project at the end of the session.  The point of these updates is to show how you thought about the topic (general workspace organization in this case) and what you did with that thinking.  For example, it probably makes sense to show what folders and files you laid out, how you translated your project definition from yesterday into specific issues.

You should feel free to ask questions of any faculty during this session, but try to stick the faculty member that is designated for your group.

## TEAM NOTE{:#teamnote}

If you are working as part of a team, **DO THIS ON ONE COMPUTER THEN CLONE THE WORK** to the other team members' machines.
-->