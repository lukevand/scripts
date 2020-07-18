#!/bin/sh
set -euf

cd "$HOME" || exit 1
mkdir git
cd git || exit 1
for project in dwm st slstatus; do
    git clone --depth=1 "https://github.com/lukevand/${project}"
    cd "${project}" && make
done
