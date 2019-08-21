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

## Bundle status

Bundles must have a `STATUS` set, which must be of the following types:
- WIP
- Active
- Deprecated
- Pending-Delete

Whereas WIP is potentially not functional, Active is functional and has tests
to validate functionality. Deprecated is going to be replaced and removed, whereas
Pending-Delete is going to be removed. Generally, if something is Deprecated
after a format bump that includes its replacement has occured the bundle
will change to Pending-Delete.

## Bundle tags

In the `bundle-header` `TAGS`, assign at least one MAJOR **keyword** and, if applicable, a MINOR keyword. The goal of assigning keywords to bundle metadata is to improve a bundle's discoverability on the [Clear Linux Store](https://clearlinux.org/software).
Be accurate yet conservative in assigning keywords. By *not* adding any keyword, a bundle is automatically assigned as "Other" in the Clear Linux Store.
Avoid this scenario. It may inhibit developers' ability to quickly find the resources they need.

1. Add at least one MAJOR keyword, from below, that applies to your bundle:

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

2. Add a MINOR keyword if applicable, from below, to improve a bundle's discoverability:

- Documentation
- Editor
- Kernel
- Networking
- Perl
- Python
- R

  Note: If you add multiple keywords, add them as comma-separated values as follows: 
  `#[TAGS]: Developer Tools, Data Science, Python`

To automatically create a "-dev" variant of a bundle, such that bundle
"foo-dev" has what is required to build bundle "foo", simply add the bundle
name "foo" in to the auto.devbundles file.

To automatically create a "devpkg-foo" where "foo" is the name of a
"foo.pc" file, just add "foo" to "auto.devpkgs".

For debugging and visualization purposes, a small python program called
`make-dot.py` is included. If run, the output will be suitable to create
a dependency graph of the bundles. Run it as so:

   `make-dot.py | dot -Tsvg > dot.svg`

This will output a "dot.svg" file that can be opened with a web browser.

Currently maintained by:
William Douglas <william.douglas@intel.com>
