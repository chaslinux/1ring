#/bin/bash

sudo apt update && sudo apt -y upgrade
sudo apt install git -y

mkdir ~/Code
cd ~/Code

git clone https://github.com/chaslinux/hardware.sh
git clone https://github.com/chaslinux/install-extras.sh
git clone https://github.com/chaslinux/phoronix/

cd ~/Code/hardware.sh
./hardware.sh
cd ~/Code/install-extras.sh
./install-extras.sh
cd ~/Code/phoronix
./run-tests.sh

