FROM docker.io/ubuntu:22.04

RUN apt-get update &&  apt-get install -y vim g++ gdb cmake linux-tools-common linux-tools-generic \
    && apt-get install -y libssl-dev libgflags-dev libgoogle-glog-dev libprotobuf-dev libprotoc-dev protobuf-compiler libleveldb-dev \
    && apt-get install -y libgoogle-perftools-dev

# ENV PATH="/usr/lib/linux-tools-`uname-r`:$PATH"

WORKDIR /workspace
