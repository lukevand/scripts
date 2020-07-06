#!/bin/sh
set -euf

before=$(youtube-dl --version)
pip3 install --user -U youtube-dl
after=$(youtube-dl --version)

if [ "$before" != "$after" ]; then
	notify-send "youtube-dl updated from $before to $after"
fi
