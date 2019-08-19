---
layout: page
title: Computer Setup
---

***BIOL 691 students will need their own laptops set up with OpenRefine, R, and RStudio.***

### OpenRefine

Download and install [OpenRefine](http://openrefine.org/download.html).

Note: OpenRefine runs in your default browser, but will not run correctly in Internet Explorer. If needed, download Firefox or Chrome.

<!--### SQL

Download and install [Mozilla Firefox](https://www.mozilla.org/en-US/firefox/new/). Add the [SQLite Manager](https://addons.mozilla.org/en-US/firefox/addon/sqlite-manager/).
-->

### R

Download and install the [R base system](http://cran.rstudio.com/). I recommend you use the [R studio](http://www.rstudio.com/products/rstudio/download/) to work with the base system.


***NOTE: Depending on our schedule we may or may not cover Git and GitHub. If we do I will include set-up instructions here.***
<!--
### GitHub

1. Create an account on GitHub (https://github.com) using the `Sign up for
   GitHub` form on the right side of the page.
2. Email your username to your instructor.
3. Once your instructor adds you to the course GitHub organization you will
   receive an email asking you to accept the invitation. Click on the link to
   accept.
4. Check if this worked
    1. Go to [https://github.com](https://github.com).
    2. Sign in if necessary.
    3. In the upper left corner click on the drop down with your name.
    4. Confirm that the name of the course GitHub organization is present

### Git


#### Windows

1.  Download the Git for Windows
    [installer](https://git-for-windows.github.io/).
2.  Run the installer and follow the steps bellow:
<<<<<<< HEAD
    1.  Click on "Next".
    2.  Click on "Next".
    3.  Click on "Next".
    4.  Click on "Next".
    5.  Click on "Next".
    6.  **Select "Use Git from the Windows Command Prompt" and click on
        "Next".** If you forgot to do this programs that you need for
        the workshop will not work properly. If this happens rerun the
        installer and select the appropriate option.
    7.  Click on "Next". **Keep "Checkout Windows-style, commit
        Unix-style line endings" selected.**
    8.  **Select "Use Windows' default console window" and click on
        "Next".**
    9.  Click on "Next".
    10. Click on "Finish".

=======
    1. Click on "Next".
    2. Click on "Next".
    3. Keep "Use Git from the Windows Command Prompt" selected and click on
       "Next". If you forgot to do the integration with R will not work
       properly. If this happens rerun the installer and select the appropriate
       option.
    4. Click on "Next".
    5. Keep "Checkout Windows-style, commit Unix-style line endings" selected and click on "Next".
    6. Keep "Use Windows' default console window" selected and click on "Next".
    7. Click on "Install".
    8. Click on "Finish".
3. Check if the installation is working:
    1. Open RStudio
    2. File -> New Project -> Version Control -> Git
    3. If you reach a page called `Clone Git Repository` with some fields to fill out everything is working
>>>>>>> upstream/master

#### Mac OS X

1. Open up the Terminal, type in "git" and press enter.
2. This should cause a pop-up window to appear. It will have several options;
   click on "Install" (not "Get Xcode", see "Installing Xcode" for that).
3. Click "Agree".
4. When the install is finished, click "Done".
5. To make sure this worked, type in "git" in the Terminal and press enter. Some
   information will come up, including a list of common commands. If this
   doesn't work see additional instructions below.
6. Check if git and RStudio are talking to each other:
    1. Open RStudio
    2. File -> New Project -> Version Control -> Git
    3. If you reach a page called `Clone Git Repository` with some fields to
       fill out everything is working

If the git installation didn't work (i.e., you don't get the expect result from
Step 5), try the following:

For **OS X 10.9 and higher**, install Git for Mac by downloading and running the
most recent "mavericks" installer from
[this list](http://sourceforge.net/projects/git-osx-installer/files/).  After
installing Git, there will not be anything in your `/Applications` folder, as
Git is a command line program. For older versions of **OS X (10.5-10.8)**
use the most recent available installer labelled "snow-leopard" [available
here](http://sourceforge.net/projects/git-osx-installer/files/.)

If git and RStudio aren't talking to each other (i.e., you don't get the expect
result from Step 6), try the following:

1. Open RStudio
2. Select the `Tools` menu -> `Global Options` -> `Git/SVN`
3. Next to `Git executable` click `Browse`
4. Navigate to `usr/local/bin/` and double click on `git` (this should change
   the value in `Git executable` from `/usr/bin/git` to `/usr/local/bin/git`)
5. Click `OK`

#### Linux

Git is probably already installed. If it is not already available on your
machine you can try to install it via your distro's package manager. For
Debian/Ubuntu run `sudo apt-get install git` and for Fedora run `sudo yum
install git`.

### Python

*Python installation is not required for BIOL 691. Python materials on this site
are no longer under active development.*

Download and install the
[Anaconda Scientific Python Distribution](http://continuum.io/downloads).
I recommend you use a special editor like the [Wing Intelligent Development Environment - 101](http://wingware.com/downloads/wingide-101).
-->
