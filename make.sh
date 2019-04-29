#!/usr/bin/env bash

# clean
echo "cleaning..."
rm -rf build
echo "cleaned."

# setup env
export CC=/usr/bin/gcc
export CXX=/usr/bin/g++
echo "env set ok."

# Preparing BootJDK
if [[ -d /opt/java/jdk-11.0.2 ]]; then
    echo "BootJDK exists,configuring..."
else
    echo "preparing BootJDK..."
    cd /opt/java
    wget https://terwer.oss-cn-qingdao.aliyuncs.com/soft/jdk/jdk-11.0.2_linux-x64_bin.tar.gz
    tar -xvf jdk-11*.gz
    rm jdk-11*.gz
fi

# configure
./configure \
--with-debug-level=slowdebug \
--with-jvm-variants=server \
--with-target-bits=64 \
--enable-ccache \
--with-boot-jdk=/opt/java/jdk-11.0.2

echo "configure finished."
