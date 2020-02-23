sudo apt install clang-7 clang-format-7 clang-tools-7 lld-7 lldb-7  -y
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-7 100
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-7 100 \
   --slave /usr/bin/clang++ clang++ /usr/bin/clang++-7
sudo update-alternatives --install /usr/bin/ld.lld ld.lld /usr/bin/ld.lld-7 100
