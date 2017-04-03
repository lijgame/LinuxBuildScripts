#!/bin/bash
sudo apt install -y mercurial
hg clone https://bitbucket.org/eigen/eigen/ ~/codes/eigen
cd ~/codes/eigen
hg update 3.3.3
mkdir ~/codes/eigen_build
cd ~/codes/eigen_build
cmake ../eigen
sudo make install

