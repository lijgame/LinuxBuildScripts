#!/bin/sh
num_cpus=$(nproc --all)
mkdir -p build
cd ./build
cmake .. -DCMAKE_C_COMPILER=/usr/bin/gcc-5 -DCMAKE_CXX_COMPILER=/usr/bin/g++-5 -DCMAKE_BUILD_TYPE=Release -DBUILD_CUDA=ON -DBUILD_OPENCL=ON
make -j$num_cpus
