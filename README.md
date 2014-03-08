APRA2014
========
To download:

In a directory where you want to have the LaTeX files:

  git clone https://github.com/jaguirre/APRA2014/

This will create the directory APRA2014.  The Makefile should compile everything to a PDF, assuming you have pdflatex and bibtex.

To edit:
The workflow proceeds like this.  Make edits to your local document.  When you're happy,
  git commit <filename>
This lets git know you want your changes to be brought in.
  git pull
This brings over any changes from the master repository.  If there have been none, or git is able to merge your edits with those others have made in the interim, then you can proceed.  Otherwise, git will warn you and you must proceed through the file to find the places where conflicts have arisen, and resolve by hand.  Then
  git push
will put all changes back in the master repository.

To add new files:
  git add <filename>
  git commit

To remove a file from the repository:
  git rm <filename>
  git commit

