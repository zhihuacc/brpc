#!/usr/bin/env bash
# $1: image name

# Build image
# docker build -f Dev.Dockerfile -t brpc_dev ..

# --privileged is required so that gdb works properly.
docker run --privileged --name brpc_dev -it --rm -v $(greadlink -f ..):/brpc $1
