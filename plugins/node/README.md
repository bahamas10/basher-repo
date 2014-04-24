node
====

Install [Node.js](http://nodejs.org/) from source.

Description
-----------

Install Node.js from source by cloning the source from GitHub, ensuring
it is up-to-date, and compiling it and installing it if it is not currently
installed at the specified version.

Usage
-----

By default, this plugin will install version `v0.10.26`, but this can be overridden
by setting the environmental variable `NODE_VERSION`.

You can add a line like this to your `basher` config

``` bash
NODE_VERSION='v0.10.23'
```

Or, control this at runtime like:

    NODE_VERSION='v0.10.22' basher node
