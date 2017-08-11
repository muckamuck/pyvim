Yet another bunch of files to use vi/vim as a python IDE. 

Clone the repo and run install.sh (Linux or OS X). [Windows people are on your own]

If you want to use this you should: pip install pdbrc to make full use of the interactive debug facility. The debug facility can be accessed with either running the file with a command like:

1) python -m pdb something.py
or
2) placing "import pdb; pdb.set_trace()" in your code just above your suspected problem.
