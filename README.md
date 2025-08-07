## DISCONTINUATION OF PROJECT. 

This project will no longer be maintained by Intel. 

Intel will not provide or guarantee development of or support for this project, including but not limited to, maintenance, bug fixes, new releases or updates. Patches to this project are no longer accepted by Intel. If you have an ongoing need to use this project, are interested in independently developing it, or would like to maintain patches for the community, please create your own fork of the project.

Contact: webadmin@linux.intel.com  
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

Whereas WIP is potentially not functional, Active is expected to be functional
and may have tests to validate functionality. Deprecated means preparation for
removal in two format bumps and Pending-Delete means removal is imminent in the
next format bump.  Generally, if a bundle becomes Deprecated, it includes its
replacement.  After a format bump, Deprecated bundles will change to
Pending-Delete.

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
