#!/bin/bash
num_cpus=$(nproc --all)

sudo apt install -y python-dev python-numpy python3-dev python3-numpy cmake git libgtk-3-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
git clone --recursive  https://github.com/lijgame/opencv.git ~/codes/opencv
cd ~/codes/opencv
git remote add remote https://github.com/opencv/opencv.git
mkdir -p ~/codes/opencv/build
cd ~/codes/opencv/build
cmake -G"Ninja" -DCMAKE_C_COMPILER=/usr/bin/clang -DCMAKE_CXX_COMPILER=/usr/bin/clang++ \
-DOPENCV_EXTRA_MODULES_PATH=~/codes/opencv/opencv_contrib/modules \
-DWITH_OPENMP=ON -DWITH_CUDA=ON -DENABLE_AVX2=ON \
-DTESTS_ENABLED=OFF -DWITH_OPENGL=ON -DBUILD_TESTS=OFF -DBUILD_opencv_sfm=ON -DPYTHON_DEFAULT_EXECUTABLE=$(which python3) -DBUILD_opencv_cudacodec=OFF ~/codes/opencv

ninja
sudo ninja install
