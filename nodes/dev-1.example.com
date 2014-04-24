#!/usr/bin/env bash
#
# An example node file for `dev-1.example.com`.
#
# see `prod-1.example.com` for more verbose comments.

ip='192.168.1.3'
env='prod'
