#!/bin/sh
set -uef

# names from submission download
for f in "$@"; do
    echo "# ${f%%_*}"
done
