npm
===

A wrapper function for [npm](https://www.npmjs.org/) that handles
logging and error-checking.

**Note:** this plugin does NOT install Node.js or `npm`.

Usage
-----

You have to first source this script to use the function.  In your plugin you
can do something like:

``` bash
# defines npm_package
. ../npm/package

# install jsontool at any version
npm_package install jsontool

# install httpserver at 0.1.0
npm_package install httpserver@0.1.0

# remove http-host-proxy
npm_package uninstall http-host-proxy
```

Note that the sourcing of `../npm/package` is relative to the running plugin.

Functions
---------

- `npm_package`

`npm_package install` can be used to install `npm` packages, optionally at a
specific version.  It's smart enough to skip installing anything if the package
is already installed (optionally at the correct version).

`npm_package uninstall` can be used to remove installed packages.  If the package
is not installed, it will have no effect.
