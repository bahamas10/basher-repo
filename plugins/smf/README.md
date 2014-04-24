smf
===

Wrapper functions for `svcadm` and `svccfg` on [Illumos](http://illumos.org/) based
operating systems.

Usage
-----

You have to first source these script to use the functions.  In your plugin you
can do something like:

``` bash
# defines smf_service
. ../smf/service
# defines smf_manifest
. ../smf/manifest

# same as `svcadm -v enable nginx`
smf_service enable nginx

# same as `svccfg -v import foo.xml`
smf_manifest import files/foo.xml
```

Functions
---------

- `smf_service`

This function is simply a wrapper for calling `svcadm -v "$@"`, with logging
and error-checking

- `smf_manifest`

This function is simply a wrapper for calling `svccfg -v "$@"`, with logging
and error-checking
