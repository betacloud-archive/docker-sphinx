#!/usr/bin/env bash
set -x

CONFPATH=/sourc/conf.py

if [[ ! -e $CONFPATH ]]; then
    CONFPATH=/conf.py
fi

# build html

sphinx-build -a -b latex /source /html

# build pdf / latex

sphinx-build -a -b latex /source /latex

cd latex
LATEXMKOPTS="-interaction=nonstopmode -f" make -e all-pdf
