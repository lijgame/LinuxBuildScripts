#!/bin/bash
num_cpus=$(nproc --all)

git clone --recursive https://github.com/lijgame/openMVS.git ~/codes/openMVS
cd ~/codes/openMVS
git remote add remote https://github.com/cdcseacave/openMVS.git
mkdir -p ~/codes/openMVS_build
cd ~/codes/openMVS_build
cmake -DCMAKE_C_COMPILER=/usr/bin/gcc-5 -DCMAKE_CXX_COMPILER=/usr/bin/g++-5 -DTESTS_ENABLED=OFF ~/codes/openMVS
make -j$num_cpus