#!/usr/bin/env bash

CONFPATH=${CONFPATH:-/source}
DOCUMENT=${FILENAME%.rst}
FILENAME=${FILENAME:-index.rst}
SOURCEPATH=${SOURCEPATH:-/source}
TYPE=${TYPE:-html}

if [[ ! -e $CONFPATH/conf.py ]]; then

    CONFPATH=/

fi

##########
# html

if [[ $TYPE == "html" ]]; then

    sphinx-build -c $CONFPATH -b html $SOURCEPATH /html $FILENAME

fi

##########
# latex

if [[ $TYPE == "latex" ]]; then

    sphinx-build -c $CONFPATH -b latex $SOURCEPATH /latex $FILENAME

    cd /latex
    LATEXMKOPTS="-interaction=nonstopmode -f" make -e all-pdf

    cp /latex/$DOCUMENT.pdf /pdf/$(date +%Y%m%d)-$DOCUMENT.pdf

fi
