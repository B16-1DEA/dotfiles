#!/usr/bin/env bash

# This script prints the glyph at the passed codepoint. 
# It accepts the following arguments:
#   - codepoint

# Check if the number of arguments is correct
if [ $# -ne 1 ]; then
    echo "Usage: $0 codepoint font_file_path"
    exit 1
fi

printf "$(printf '\\U%08x' "0x$1")\n"

exit 0

