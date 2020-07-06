#!/bin/sh
wget --quiet https://httpbin.org/ip -O - | perl -nwl -e 's/.*"([\d.]+)"/$1/g and print'
