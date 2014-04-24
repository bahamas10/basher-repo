pull
====

Keep the local `basher-repo` up-to-date on a node

Description
-----------

This plugin serves one purpose; to ensure that the latest version of the
`basher-repo` is pulled to the running node.  This plugin assumes that
your `basher-repo` located in `$BASHER_DIR` is a git repository.

Example
-------

Put `pull` first in the `BASHER_PLUGINS` array to ensure that the latest
plugins will always be used when `basher` is run.

Also, run the following to update the `basher-repo` on a node:

    basher pull
