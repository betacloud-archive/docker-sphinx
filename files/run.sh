#!/usr/bin/env bash
set -x
sphinx-build -b latex /source /latex
pushd /latex
LATEXMKOPTS="-interaction=nonstopmode -f" make -e all-pdf
popd
