#!/bin/bash
#Author: Bimalkhimdung@gmail.com
chmod +x script.sh

#installing packages
sudo apt update
sudo apt install curl -y
sudo apt install make -y
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev && sudo apt install build-essential zlib1g-dev

#download the latest version of Python

curl -O https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tar.xz

#download tar file

tar -xf Python-3.8.2.tar.xz

#navigate to the tar file

cd Python-3.8.2

./configure --enable-optimizatioins

#Run make

make -j 4

#install python binaries

sudo make altinstall && python3.8 --version
