#!/usr/bin/env bash

docker run --rm \
    -v $(pwd):/source \
    -v $(pwd):/pdf \
    -e DOCUMENT=index \
    -e TYPE=latex \
    betacloud/sphinx:latest
