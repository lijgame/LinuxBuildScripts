#!/bin/sh
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
#list all driver versions
apt-cache search nvidia-
