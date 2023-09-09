#!/usr/bin/env bash
# $1: image name
# $2: container name


image_id=$(docker image list -q $1)
if [[ "$image_id" == "" ]];
then
    docker build -f Dev.Dockerfile -t $1 ..
fi

# --privileged is required so that gdb works properly.
# change greadlink to readlink if in MacOS
docker run --privileged --name $2 -it --rm -v $(readlink -f ..):/workspace $1
