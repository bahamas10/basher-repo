scripts
=======

Shared scripts for use by any `basher` plugin (or anything really)

Contents
--------

- `interfaces` - A Node.js, platform agnostic, script to determine IP addresses on a box

Example:

    $ interfaces
    lo0 127.0.0.1
    en0 192.168.1.2
    en1 10.0.1.204

Useful for determining a nodes networking information *without* parsing the output
from `ifconfig`.
