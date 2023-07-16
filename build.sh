#!/usr/bin/env bash

mkdir build
cmake -B build -DWITH_GLOG=ON
cmake --build build  -j6