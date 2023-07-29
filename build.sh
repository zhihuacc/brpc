#!/usr/bin/env bash

mkdir build
# if build brpc with -DWITH_GLOG=ON, then to build 'examples', need add 'glog' in 'set(DYNAMIC_LIB ...)' in CMakeLists.txt
# cmake -B build -DWITH_GLOG=ON
cmake -B build
cmake --build build  -j6