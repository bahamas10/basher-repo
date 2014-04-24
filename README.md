basher-repo
===========

A template repo for use with [basher][0].  Use this as a skeleton
or even fork this repository to host your own plugins and scripts.

Usage
-----

**Note:** See the [basher][0] documentation for an in-depth guide on how to get started
using this repository as a template.

Clone this repo to a machine you want to control with `basher`.

    [sudo] git clone git://github.com/bahamas10/basher-repo.git /var/basher

Contents
--------

**Note:** Only the `plugins/` directory is required for `basher` to work

- `plugins/`

This directory is used to store plugins for `basher`.  Plugins consist of a single
directory with 1 or more scripts in them.

- `scripts/`

This directory contains shared scripts that can be used by any and all `basher` plugins.
This directory is optional and is not required for `basher` to function.

- `nodes/`

This directory contains a file for each node (system) in an environment will `basher`
could be run.  This directory is optional and is not required for `basher` to function.

Documentation
-------------

Each plugin will have its own readme with relevant documentation.

License
-------

Every plugin in here is released under the MIT License

[0]: https://github.com/bahamas10/basher
