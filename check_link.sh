#!/bin/sh
check_link() {
    if [ -h "$1" ]; then
        readlink "$1"
    else
        printf "%s\n" "$1"
    fi
}
check_link "$@"
