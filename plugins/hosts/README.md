hosts
=====

This plugin is used to control the `/etc/hosts` file on a node

Description
-----------

Using the `nodes/` directory if present in the `basher-repo`, this plugin
constructs a very basic `/etc/hosts` file.

For this to work, the `nodes/` directory must contain files for each node
ending in `.com`, that defines a variable `ip`.

Example
-------

``` bash
BASHER_PLUGINS+=(hosts)
```

or

    bahser hosts
