curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"

curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | \
      sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/ubuntu16.04/nvidia-docker.list | \
      sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo apt-get install -y docker-ce nvidia-docker2

