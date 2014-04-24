#!/usr/bin/env bash
#
# An example node file for `prod-1.example.com`.
#
# The filename is the FQDN of the node, and arbitrary
# values can be set here.
#
# This file does not necessarily need to be bash, but for the purposes of
# basher it makes it easy if they are.
#

ip='192.168.1.2'
env='prod'

# Imagine that /etc/basher.conf sources this file with something like:
#
# . "$BASHER_DIR/nodes/$HOSTNAME"
#
# Now, the `BASHER_PLUGINS` specific to the running node will be loaded...
# cool right?
BASHER_PLUGINS=('foo' 'bar')
