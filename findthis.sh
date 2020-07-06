#!/bin/sh
. ~/bin/possible_extensions
shift
find "$(pwd)" "$@" -type f -regextype posix-extended -iregex ".*\.(${extensions})$"
