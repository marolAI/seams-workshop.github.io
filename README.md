![Build Status](https://gitlab.com/SEAMS-Workshop/seams-workshop.gitlab.io/badges/master/build.svg)
![Jekyll Version](https://img.shields.io/gem/v/jekyll.svg)

---

Repository for [SEAMS](https://seams-workshop.gitlab.io/) website using GitLab Pages.

[Learn more about GitLab Pages](https://pages.gitlab.io) or read the the [official GitLab Pages documentation](https://docs.gitlab.com/ce/user/project/pages/).

---

# TODO: figure out `doctoc`

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Getting Started](#getting-started)
  - [Start by forking this repository](#start-by-forking-this-repository)
  - [Start from a local Jekyll project](#start-from-a-local-jekyll-project)
- [GitLab CI](#gitlab-ci)
- [Using Jekyll locally](#using-jekyll-locally)
- [GitLab User or Group Pages](#gitlab-user-or-group-pages)
- [Did you fork this project?](#did-you-fork-this-project)
- [Other examples](#other-examples)
- [Troubleshooting](#troubleshooting)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Content Organization

The SEAMS site content is organized into several `jekyll` collections:

 - warmups (`_warmup`): mental calisthenics.  As the name suggests, the warmup exercises for each day.  short puzzles.  code katas.  etc
 - topics (`_topic`): brief outline of a concept + reference links.  for use outside of discussion session
 - sessions (`_session`): material for discussion sessions -- anything people need to download, stuff to display, questions, etc
 - practicals (`_practical`): toy problems to focus on particular topics - paired with the discussions to help participants focus on the particular SE concept we discussed, and prep them to apply that thinking to their project
 - project (`_project`): guided work for participants particular projects

To learn more about collections, [see this](https://jekyllrb.com/docs/collections/).  The gist of our use, however, is

# Editing

To avoid blowing anything up, we're using the general following workflow:

 1. make a plan for some finite chunk of work you will do (e.g., editing some particular discussion material)
 1. fork / branch the repository, depending on permissions
 1. edit (again: should be small chunk of content)
 1. make a merge request
 1. maintainer will sort out any commit conflicts
 1. if appropriate, changes merged
 1. delete the fork
 1. return to 1.

## Editing online

You can just edit in the browser via gitlab:

 2. go to gitlab.com/SEAMS-workshop/seams-workshop.gitlab.io
 3. use the "fork" button (right-ish on the list of things to do), or create a new branch (next to the repo name, the little dropdown menu with the plus, select new branch)
 4. if forking: should send you to your namespaces to clone under; select the appropriate one, and a new fork of the repo should appear under that namespace.
 6. click on the (Web IDE) button (left side, after repo front matter, but before most recent commit message)
 8. edit the relevant files.
 9. when done editing, click the commit button (blue, lower left; alternatively, there are context buttons on the left to switch between edit, review, and commit)
 10. hover over "unstaged commits" to reveal option to stage all changes (alternatively, click the check beside each file change you wish to include)
 11. enter useful description of edits in commit message box.  the headline / summary will be the first line (if you're overlength, the message box will highlight your excess).  subsequent lines will be the longer message text (if necessary)
 12. leave the branch selected (`master` if you forked, or whatever you named the branch), then click green commit button.
 13. return to the repository view (top left button in the Web IDE context, next to the repo name)
 13. click the merge request button (the standard graphics for showing git branches; looks a bit like public transit routes)
 14. should see option to create a new merge request - click the big green button
 14. should show your local repo on the left (if forking) or new branch (if branching), and the main repo / branch on the right; on the left, select the branch you made edits in (should be master if forked, otherwise whatever you created)
 17. click "compare branches and continue"
 18. in the next chunk, just fill in a brief title for your collected commits, then any other detail pertinent in the larger textbox (e.g., an issue number in the format #N if you're making changes to resolve a particular issue)
 19. after this, request the merge, and someone will review it in the main repository.  If you need to make more tweaks to this particular work (i.e., correcting spelling, path to some image), you can use the process above starting after the "fork / branch" step.  As long as the merge request hasn't been completed, any additional work you do will be included.

## Editing locally

You can work via whatever local tool you prefer:

  2. make a local clone of gitlab.com/SEAMS-workshop/seams-workshop.gitlab.io
  3. make an editing branch `git checkout -b 'demo-local-editing'`
  8. edit the relevant files.
  9. when done editing, stage the changed files `git add file1 file2 etc`
  10. commit the files (`git commit` either with `-m` flag or using whatever editor when the message comes up)
  11. push your new branch: `git push --set-upstream origin whatever-you-named-the-branch`
  13. for the merge request, you should probably use the web view (there are some CLI tools, but nothing supported directly by gitlab).  Follow the directions for editing online.
  13. If you need to make more tweaks to this particular work (i.e., correcting spelling, path to some image), you can use the process above, but just use `git push` (instead of all the extra args) when updating the origin.  As long as the merge request hasn't been completed, any additional work you do will be included.
  14. after your work has been accepted, development branches will be deleted in the origin repo.  To start on your next chunk of work, return to the master branch, pull (to get your updates), and then create your next working branch: `git checkout master && git pull && git checkout -b 'new-branch-name'`.  You should also delete your now-accepted old branch: `git branch -d whatever-you-named-the-branch`

## Getting Started

You can get started with GitLab Pages using Jekyll easily by either forking this repository or by uploading a new/existing Jekyll project.

Remember you need to wait for your site to build before you will be able to see your changes.  You can track the build on the **Pipelines** tab.

### Start from a local Jekyll project

1. [Install][] Jekyll.
1. Use `jekyll new` to create a new Jekyll Project.
1. Add [this `.gitlab-ci.yml`](.gitlab-ci.yml) to the root of your project.
1. Push your repository and changes to GitLab.

## Using Jekyll locally

To work locally with this project, you'll have to follow the steps below:

1. Fork, clone or download this project
1. [Install][] Jekyll
1. Download dependencies: `bundle`
1. Build and preview: `bundle exec jekyll serve`
1. Add content

The above commands should be executed from the root directory of this project.

Read more at Jekyll's [documentation][].

[ci]: https://about.gitlab.com/gitlab-ci/
[Jekyll]: http://jekyllrb.com/
[install]: https://jekyllrb.com/docs/installation/
[documentation]: https://jekyllrb.com/docs/home/
[userpages]: https://docs.gitlab.com/ce/user/project/pages/introduction.html#user-or-group-pages
[projpages]: https://docs.gitlab.com/ce/user/project/pages/introduction.html#project-pages
