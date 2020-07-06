#!/bin/sh

# shellcheck disable=SC2016
find "${HOME}/git" -maxdepth 2 -type d -name '.git' -print0 | \
     parallel -0 --no-run-if-empty \
              'dir={//}; printf "%s\n" "$dir"; git -C "$dir" pull; printf \\n'
