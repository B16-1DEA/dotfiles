#!/usr/bin/env bash

# This script is used to push a gradient motd to the terminal. For now, we aren't manipulating any fancy gradient options from here -- they are all hardcoded in the callee. 

fname=$1

if [ -z "$fname" ]; then
    echo "No file name provided. Exiting."
    exit 1
fi

# For some reason, gradient.js does not provide any color if you pipe in the outpout of cat. So we invoke a subshell instead. 
# This may cause escaping issues, but I haven't seen any yet.
node gradient.js "$(cat $fname)" --color=16m > /etc/motd

exit 0

