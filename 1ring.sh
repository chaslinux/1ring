#!/bin/bash
# Copyright 2022 Chaslinux - chaslinux@gmail.com
# Licensed under GPL v3.0

WHITE='\033[1;37m'
NC='\033[0m'
LTGREEN='\033[1;32m'
PURPLE='\033[0;35m'

echo -e "${LTGREEN}*** ${WHITE}Running updates & installing git! ${LTGREEN}*** ${NC}"
sudo apt update && sudo apt -y upgrade
sudo apt install git -y

echo -e "${LTGREEN}*** ${WHITE}Making the Code directory & cloning the repositories ${LTGREEN}*** ${NC}"
mkdir ~/Code
cd ~/Code

git clone https://github.com/chaslinux/hardware.sh
git clone https://github.com/chaslinux/install-extras.sh
git clone https://github.com/chaslinux/geekbench-dl
git clone https://github.com/chaslinux/phoronix

echo -e "${LTGREEN}*** ${WHITE}Start to run the scripts! ${LTGREEN}*** ${NC}"
echo -e "${PURPLE}*** ${WHITE}Note: This part is NOT completely automated! ${PURPLE}*** ${NC}"

cd ~/Code/hardware.sh
./hardware.sh
cd ~/Code/install-extras.sh
./install-extras.sh
cd ~/Code/geekbench-dl
./geekbench-dl.sh


