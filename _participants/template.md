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
This is a template for some brief biographical information.  The format is called YAML; see URL for more information about formatting requirements.  The directions below explain each variable.

# Steps:

 1. Create a new branch.
 2. Duplicate this file, in this folder.
 3. Rename the file to your last name.
 4. Fill in the elements in the YAML block above per directions below.
 5. Create a merge request for your branch into the master branch.
 6. If there are any comments from the faculty indicating you need to make additional changes, make those changes.

# Required:

Fill in your full name for *fullname*, and what you wish to be called during the workshop in *goby*.

Add an image file to the 'participants' folder (not '\_participants'), which is mostly your face.  Any compressed format is fine.  See the faculty folder for examples of the appropriate framing and resolution.  Name this file in a way that its obviously connected to you, and put that file name for the *img* key.

# Optional:

If you want to provide any links (e.g., to your homepage, to your publication record), use the *links* element.  This element should be a list, which each item having a *title* (the text that will be displayed) and *url* (the target link).

If you have affiliations you want to include (e.g., employer, school or department), you can fill them as a list with each list element having an *org* and *position* (though *position* is an optional field as well).