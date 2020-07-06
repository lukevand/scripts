#!/bin/sh

tmp=$(mktemp)
trap 'rm -- "$tmp"; exit 1' INT TERM HUP
debtree --no-versions --no-conflicts --no-provides "$@" | dot -Tpng -o "$tmp" || exit 1
sxiv "$tmp" && rm "$tmp"
