#!/usr/bin/env bash

docker run --rm \
    -v $(pwd):/source \
    -v $(pwd):/pdf \
    -e FILENAME=index.rst \
    -e TYPE=latex \
    -e CUSTOMER="Lorem Ipsum GmbH" \
    betacloud/sphinx:latest
