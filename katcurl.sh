#!/bin/sh
ping -q -c2 'open.kattis.com' >/dev/null && curl -s 'https://open.kattis.com/universities/massey.ac.nz' | w3m -T text/html -dump | grep '^[[:digit:]]' > "$HOME/Documents/kat/mass$(date +'%F_%R:%S').txt"
