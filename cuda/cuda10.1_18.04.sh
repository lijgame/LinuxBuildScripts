sudo dpkg -i cuda-repo-ubuntu1804_10.1.105-1_amd64.deb
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda

echo "export PATH=$PATH:/usr/local/cuda/bin/" >> ~/.zshrc
echo "export PATH=$PATH:/usr/local/cuda/bin/" >> ~/.bashrc
echo "export CUDADIR=/usr/local/cuda" >> ~/.zshrc
echo "export CUDADIR=/usr/local/cuda" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64" >> ~/.zshrc
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64" >> ~/.bashrc