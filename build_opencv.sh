#!/bin/bash
num_cpus=$(nproc --all)

sudo apt install -y python3-dev python3-numpy cmake git libgtk-3-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
git clone https://github.com/lijgame/opencv.git ~/codes/opencv
cd ~/codes/opencv
git remote add remote https://github.com/opencv/opencv.git
mkdir -p ~/codes/opencv_build
cd ~/codes/opencv_build
cmake -DCMAKE_C_COMPILER=/usr/bin/gcc-5 -DCMAKE_CXX_COMPILER=/usr/bin/g++-5 \
-DOPENCV_EXTRA_MODULES_PATH=~/codes/opencv/opencv_contrib/modules \
-DWITH_OPENMP=ON -DENABLE_AVX=ON -DENABLE_AVX2=ON -DENABLE_SSE42=ON \
-DTESTS_ENABLED=OFF -DWITH_OPENGL=ON -DBUILD_TESTS=OFF -DBUILD_opencv_sfm=OFF ~/codes/opencv

make -j$num_cpus
sudo make install