#!/bin/bash

# This script will run on the host from the workload directory
# (e.g. workloads/example-fed) every time the workload is built.
# It is recommended to call into something like a makefile because
# this script may be called multiple times.
echo "Building gapbs benchmark"
cd overlay/root/

export CXX=riscv64-linux-gnu-cpp
autoreconf -ivf
./configure
make -j 
# # make install
