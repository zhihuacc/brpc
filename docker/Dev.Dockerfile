FROM docker.io/ubuntu:20.04

RUN apt-get update &&  apt-get install -y vim g++ gdb cmake \
    && apt-get install -y libssl-dev libgflags-dev libgoogle-glog-dev libprotobuf-dev libprotoc-dev protobuf-compiler libleveldb-dev \
    && apt-get install -y libgoogle-perftools-dev

WORKDIR /brpc
