#!/usr/bin/env bash
# $1: image name

# --privileged is required so that gdb works properly.
docker run --privileged --name brpc_dev -it --rm -v $(greadlink -f ..):/brpc $1
