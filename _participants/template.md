---
fullname: Firstname Lastname
goby: Personalname
img: yourface.jpg
links:
  -
    title: some link
    url: https://to.your.stuff/
  -
    title: another
    url: https://link.to.things/
affiliation:
  -
    org: Some Company
    position: Junior Dev.
---
This is a template for some brief biographical information.  The format is called YAML; see [this URL](http://yaml.org/spec/) for more information about formatting requirements.  The directions below explain each variable.

# Steps:

 1. *Fork* the repository
 2. Make a *clone* to edit on your local machine, or access via the gitlab WebIDE
 3. Duplicate this file, in this folder (local machine, just use copy or cp; if using WebIDE, click on the vertical dots that appear when you hover over `_participants` folder to the left and create a new file, then copy-paste this files contents).
 4. Make sure the new file name corresponds to your last name (i.e., family name or surname).
 5. Fill in the elements in the YAML block above per directions below.
 6. Create a merge request for your branch into the master branch.
 7. If there are any comments from the faculty indicating you need to make additional changes, make those changes in your fork.

# Required:

Fill in your full name for *fullname*, and what you wish to be called during the workshop in *goby*.

Add an image file to the 'participants' folder (not '\_participants'), which is mostly your face.  Any compressed format is fine.  See the faculty folder for examples of the appropriate framing and resolution.  Name this file in a way that its obviously connected to you, and put that file name for the *img* key.

# Optional:

If you want to provide any links (e.g., to your homepage, to your publication record), use the *links* element.  This element should be a list, which each item having a *title* (the text that will be displayed) and *url* (the target link).

If you have affiliations you want to include (e.g., employer, school or department), you can fill them as a list with each list element having an *org* and *position* (though *position* is an optional field as well).