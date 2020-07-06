#!/bin/sh
if [ -z "$1" ]; then
	sdcv "$(fzf < /usr/share/dict/words)"
else
	sdcv "$1" #| less -FX
fi

