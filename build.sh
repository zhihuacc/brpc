#!/usr/bin/env bash

mkdir build
# if build brpc with glog, then to build 'examples', need add 'glog' in 'set(DYNAMIC_LIB ...)' in CMakeLists.txt
cmake -B build -DWITH_GLOG=ON
cmake --build build  -j6