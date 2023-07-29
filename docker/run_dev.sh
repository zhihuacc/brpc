#!/usr/bin/env bash
# $1: container name

# --privileged is required so that gdb works properly.
# change greadlink to readlink if in MacOS
docker run --privileged --name $1 -it --rm -v $(readlink -f ..):/brpc brpc_dev
