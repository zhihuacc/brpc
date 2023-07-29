#!/bin/bash

# $1: build 'brpc' or 'example'
# $2: if $1 == 'example', $2 is the specific example to build.
if [[ "$1" == "brpc" ]];
then
    echo "Building brpc ..."
    mkdir -p build
    # if build brpc with -DWITH_GLOG=ON, then to build 'examples', need add 'glog' in 'set(DYNAMIC_LIB ...)' in CMakeLists.txt
    # cmake -B build -DWITH_GLOG=ON
    cmake -B build
    cmake --build build -j6
elif [[ "$1" == "example" ]];
then
    echo "Building example/$2 ..."
    cd example/$2/
    mkdir -p build
    cmake -B build
    cmake --build build
    cd -
fi