pkgin
=====

A wrapper function for [pkgin](http://pkgsrc.smartos.org/packages/SmartOS/)
on [SmartOS](http://smartos.org/) with logging and error-checking.

Usage
-----

You have to first source this script to use the function.  In your plugin you
can do something like:

``` bash
# defines pkgin_package
. ../pkgin/package

# this is the same as `pkgin -y install nginx` except it will also generate a
# log message, and fail if `pkgin` returns non-zero
pkgin_package install nginx
```

Note that the sourcing of `../pkgin/package` is relative to the running plugin.

Functions
---------

- `pkgin_package`

This function is mostly a wrapper for calling `pkgin -y "$@"`, with logging
and error-checking
