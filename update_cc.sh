
# Remove all existing alternatives
sudo update-alternatives --remove-all cc
sudo update-alternatives --remove-all c++

# exit on first error
set -e


sudo update-alternatives \
      --install /usr/bin/cc   cc   /usr/bin/clang     90 \
      --slave   /usr/bin/c++ c++ /usr/bin/clang++  \
      --slave   /usr/bin/ld ld /usr/bin/ld.lld

sudo update-alternatives \
      --install /usr/bin/cc   cc   /usr/bin/gcc     50 \
      --slave   /usr/bin/c++ c++ /usr/bin/g++  \
      --slave   /usr/bin/ld ld /usr/bin/ld.gold
