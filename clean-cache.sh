#!/bin/sh
set -eu

find ~/.cache/ -type f -atime +0 -print0 | xargs -0r rm -v
find ~/.cache/ -type d -empty -atime +0 -print0 | xargs -0r rmdir -v
rm -fr ~/.cache/ranger

