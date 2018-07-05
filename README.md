![Build Status](https://gitlab.com/SEAMS-Workshop/seams-workshop.gitlab.io/badges/master/build.svg)
![Jekyll Version](https://img.shields.io/gem/v/jekyll.svg)

---

Repository for [SEAMS](https://seams-workshop.gitlab.io/) website using GitLab Pages.

[Learn more about GitLab Pages](https://pages.gitlab.io) or read the the [official GitLab Pages documentation](https://docs.gitlab.com/ce/user/project/pages/).

---

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

# Editing

To avoid blowing anything up, we're using the general following workflow:

 1. make a plan for some finite chunk of work you will do (e.g., editing some particular discussion material)
 1. fork the repository
 1. edit (again: should be small chunk of content)
 1. make a merge request
 1. maintainer will sort out any commit conflicts
 1. if appropriate, changes merged
 1. delete the fork
 1. return to 1.

## Editing online

If you have a gitlab account, you can just edit in the browser.

 2. go to gitlab.com/SEAMS-workshop/seams-workshop.gitlab.io
 3. use the "fork" button (right-ish on the list of things to do)
 4. should send you to your namespaces to clone under; select the appropriate one, and a new fork of the repo should appear under that namespace.
 6. click on the (Web IDE) button (left side, after repo front matter, but before most recent commit message)
 8. edit the relevant files.
 9. when done editing, click the commit button (blue, lower left; alternatively, there are context buttons on the left to switch between edit, review, and commit)
 10. hover over "unstaged commits" to reveal option to stage all changes (alternatively, click the check beside each file change you wish to include)
 11. enter useful description of edits in commit message box.  the headline / summary will be the first line (if you're overlength, the message box will highlight your excess).  subsequent lines will be the longer message text (if necessary)
 12. leave the `master` branch selected, then click green commit button.
 13. return to the repository view (top left button in the Web IDE context, next to the repo name)
 13. click the merge request button (the standard graphics for showing git branches; looks a bit like public transit routes)
 14. should see option to create a new merge request - click the big green button
 14. should show your local repo on the left, and the main repo / branch on the right; on the left, select the branch you made edits in (should be master, unless you actively changed some settings)
 17. click "compare branches and continue"
 18. in the next chunk, just fill in a brief title for your collected commits, then any other detail pertinent in the larger textbox (e.g., an issue number in the format #N if you're making changes to resolve a particular issue)
 19. after this, request the merge, and someone will review it in the main repository.  If you need to make more tweaks to this particular work (i.e., correcting spelling, path to some image), you can use the process above starting after the "fork" step.  As long as the merge request hasn't been completed, any additional work you do will be included.

## Getting Started

You can get started with GitLab Pages using Jekyll easily by either forking this repository or by uploading a new/existing Jekyll project.

Remember you need to wait for your site to build before you will be able to see your changes.  You can track the build on the **Pipelines** tab.

### Start by forking this repository

1. Fork this repository.
1. **IMPORTANT:** Remove the fork relationship.
Go to **Settings (⚙)** > **Edit Project** and click the **"Remove fork relationship"** button.
1. Enable Shared Runners.
Go to **Settings (⚙)** > **Pipelines** and click the **"Enable shared Runners"** button.
1. Rename the repository to match the name you want for your site.
1. Edit your website through GitLab or clone the repository and push your changes.

### Start from a local Jekyll project

1. [Install][] Jekyll.
1. Use `jekyll new` to create a new Jekyll Project.
1. Add [this `.gitlab-ci.yml`](.gitlab-ci.yml) to the root of your project.
1. Push your repository and changes to GitLab.

## GitLab CI

This project's static Pages are built by [GitLab CI][ci], following the steps
defined in [`.gitlab-ci.yml`](.gitlab-ci.yml):

```
image: ruby:2.3

variables:
  JEKYLL_ENV: production

pages:
  script:
  - bundle install
  - bundle exec jekyll build -d public
  artifacts:
    paths:
    - public
  only:
  - master
```

## Using Jekyll locally

To work locally with this project, you'll have to follow the steps below:

1. Fork, clone or download this project
1. [Install][] Jekyll
1. Download dependencies: `bundle`
1. Build and preview: `bundle exec jekyll serve`
1. Add content

The above commands should be executed from the root directory of this project.

Read more at Jekyll's [documentation][].

## GitLab User or Group Pages

To use this project as your user/group website, you will need one additional
step: just rename your project to `namespace.gitlab.io`, where `namespace` is
your `username` or `groupname`. This can be done by navigating to your
project's **Settings**.

Read more about [user/group Pages][userpages] and [project Pages][projpages].

## Did you fork this project?

If you forked this project for your own use, please go to your project's
**Settings** and remove the forking relationship, which won't be necessary
unless you want to contribute back to the upstream project.

## Other examples

* [jekyll-branched](https://gitlab.com/pages/jekyll-branched) demonstrates how you can keep your GitLab Pages site in one branch and your project's source code in another.
* The [jekyll-themes](https://gitlab.com/groups/jekyll-themes) group contains a collection of example projects you can fork (like this one) having different visual styles.

## Troubleshooting

1. CSS is missing! That means two things:
    * Either that you have wrongly set up the CSS URL in your templates, or
    * your static generator has a configuration option that needs to be explicitly
    set in order to serve static assets under a relative URL.

[ci]: https://about.gitlab.com/gitlab-ci/
[Jekyll]: http://jekyllrb.com/
[install]: https://jekyllrb.com/docs/installation/
[documentation]: https://jekyllrb.com/docs/home/
[userpages]: https://docs.gitlab.com/ce/user/project/pages/introduction.html#user-or-group-pages
[projpages]: https://docs.gitlab.com/ce/user/project/pages/introduction.html#project-pages
