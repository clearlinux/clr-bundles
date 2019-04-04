Bundle Definition Files
=======================

**Please submit patches for review to dev@lists.clearlinux.org.**

This repository contains bundle definition files for the Clear Linux
Operating System for Intel Architecture.

The files under bundles/ in this directory are processed via m4 macros
and disregard lines start with '#' as comments.  Please be careful when
editing.  The end result is a list of the packages that comprise a bundle.

All bundle files must include a filled-out bundle-header.txt at the top
of the file. These are used to generate documentation, so be descriptive
and precise.

In bundle-header `TAGS`, add at least one category to which your bundle applies:

- Data Science
- Developer Tools
- Education 
- Games
- Multimedia and Graphics
- Productivity
- Programming Languages
- Security
- Tools and Utilities
- Other (for bundles that do not fit previous categories)

Note: If you add more than one category, add them as comma-separated values.  
For example: `#[TAGS]: Developer Tools, Data Science`

To automatically create a "-dev" variant of a bundle, such that bundle
"foo-dev" has what is required to build bundle "foo", simply add the bundle
name "foo" in to the auto.devbundles file.

For debugging and visualization purposes, a small python program called
`make-dot.py` is included. If run, the output will be suitable to create
a dependency graph of the bundles. Run it as so:

   `make-dot.py | dot -Tsvg > dot.svg`

This will output a "dot.svg" file that can be opened with a web browser.

Currently maintained by:
Robert Nesius <robert.a.nesius@intel.com>
William Douglas <william.douglas@intel.com>
