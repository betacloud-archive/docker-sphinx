#!/usr/bin/env bash

docker run -it --entrypoint=/bin/bash --rm \
    -v $(pwd):/source \
    -v $(pwd):/pdf \
    -e FILENAME=index.rst \
    -e TYPE=latex \
    -e CUSTOMER="Betacloud Solutions GmbH" \
    betacloud/sphinx:latest
