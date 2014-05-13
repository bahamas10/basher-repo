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

This function is a little more than a wrapper for calling `svcadm -v "$@"`, with logging
and error-checking.  If the action specified is `enable` or `disable`, this function
will determine if this action needs to be taken before doing anything.  ie. if a service
is already enabled, there's no sense calling enable again (1).  This way,
this function will emit a `warn` line if and only if an action is taken.

- (1) - actually, I'd argue that it makes more sense to call `svcadm enable` *every* time,
as who cares what state the service is currently in... we want it enabled!  However, the reason
this is not done is to provide better logging.  This function will only emit logs lower than
`info` if `svcadm` is forked.

- `smf_manifest`

This function is simply a wrapper for calling `svccfg -v "$@"`, with logging
and error-checking

Todo
----

`svcadm` works asynchronously, so this should probably be refactored to use `-s` where appropriate
to wait for state changes.
