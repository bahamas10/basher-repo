config
======

This plugin is used to control the `/etc/basher.conf` file on a node... `basher`
controlling `basher`.

> Yo dawg, I heard you like basher...

Description
-----------

This plugins ensures that `/etc/basher.conf` on a node matches what is stored
in `files/basher.conf` in this plugin.

Example
-------

Put this plugin somewhere towards the beginning of the `BASHER_PLUGINS` array
to ensure that the latest config is pulled.

Also, you can run the following command to update just the `basher` config on
any node:

    basher config
