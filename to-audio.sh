#!/bin/sh
base="${1%%.*}"
format="$2"
ffmpeg -i "$1" -vn -acodec copy music/"$base"."$format"
