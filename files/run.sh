#!/usr/bin/env bash

CONFPATH=${CONFPATH:-/source}
DOCUMENT=${DOCUMENT:-index}
TYPE=${TYPE:-html}

if [[ ! -e $CONFPATH/conf.py ]]; then
    CONFPATH=/
fi

##########
# html
if [[ $TYPE == "html" ]]; then
    sphinx-build -c $CONFPATH -a -b html /source /html
fi

##########
# latex
if [[ $TYPE == "latex" ]]; then
    sphinx-build -c $CONFPATH -a -b latex /source /latex

    cd /latex
    LATEXMKOPTS="-interaction=nonstopmode -f" make -e all-pdf

    cp /latex/$DOCUMENT.pdf /pdf
fi
