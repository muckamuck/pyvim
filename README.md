### PyVim
Yet another bunch of files to use vi/vim as a python IDE. 

Clone the repo and run install.sh (Linux or OS X). [Windows people are on your own]

If you want to use this you should: 
```bash
pip install pdbpp
```
to make full use of the interactive debug facility. The debug facility can be accessed with either running the file with a command like:

1) python -m pdb something.py
2) placing "import pdb; pdb.set_trace()" in your code just above your suspected problem.

### Helpful Hints
In pdb:
* c - continue to the end or the next break-point
* s - step into a function
* r - return from the current function
* b <line-number> - set a break-point at the line number

In vi:
* ```vi -O <files>``` edit more than one file in vertically split panes
* ```vi -o <files>``` edit more than one file in horizontally split panes
