#!/bin/sh
epo=$(stat -c '%Y' "$1")
date -d "@${epo}" +'%F %R'
