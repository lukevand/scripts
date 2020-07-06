#!/bin/sh
pip install -U $(pip freeze | awk -F'==' '{print $1}')
