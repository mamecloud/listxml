#!/usr/bin/env bash

curl https://api.github.com/repos/mamedev/mame/releases > releases.txt

docker pull ubuntu          && \
docker build --tag mame .   && \ 
docker run -it --rm -v "$PWD/xml":/mame mame
