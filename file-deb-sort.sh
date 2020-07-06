#!/bin/sh
stest -f $(dpkg-query -L "$1") | xargs du -h | sort -h

