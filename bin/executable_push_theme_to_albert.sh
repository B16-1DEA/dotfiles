#!/bin/bash

# Description ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# This script is used to push the passed theme to the local albert theme folder.

# Validation ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Check if the theme folder exists.
[ ! -d /usr/share/albert/widgetsboxmodel/themes/ ] && echo "[$0][ERROR] The theme folder does not exist. Was there a recent update that broke things?" && exit 1

# Check to see if the passed theme exists.
[ ! -f $1 ] && echo "[$0][ERROR] The passed theme does not exist." && exit 1

# Execution ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Copy the theme to the Albert theme folder.
cp $1 /usr/share/albert/widgetsboxmodel/themes/

echo "Successfully pushed the passed Albert theme!"

exit 0

