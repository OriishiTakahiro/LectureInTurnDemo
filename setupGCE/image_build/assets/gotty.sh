#!/bin/sh

# Information for basic authentication.
# Should change these values, before execute 'packer build' command.
GOTTY_USER='user'
GOTTY_PASS='5mGddDeE052OeEtS'

/opt/gotty -c "${GOTTY_USER}:${GOTTY_PASS}" -a "" -p "80" -w bash
