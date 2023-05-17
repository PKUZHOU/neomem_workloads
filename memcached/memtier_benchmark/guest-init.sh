#!/bin/bash

echo "Installing memtier_benchmark"
dnf install -y autoconf automake make gcc-c++ 
dnf install -y pcre-devel zlib-devel libmemcached-devel libevent-devel openssl-devel 
dnf install  memcached --allowerasing -y
cd /root/memtier_benchmark
autoreconf -ivf
./configure
make -j 
make install
poweroff
