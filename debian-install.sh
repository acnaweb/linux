#!/usr/bin/env bash

echo 'deb http://sft.if.usp.br/debian/ stretch main contrib non-free' >> /etc/apt/sources.list
apt update 
apt upgrade 
apt -y install firmware-linux 
apt -y install make perl 
# apt --fix-broken install
# apt install --fix-missing
apt -y install build-essential

apt-get install firmware-linux-nonfree
apt-get install firmware-misc-nonfree

# Lenovo
# apt -y install firmware-atheros firmware-realtek

# https://askubuntu.com/questions/937254/cannot-install-build-essential-gcc-g-after-upgrade-to-17-04
# apt install aptitude
# dpkg --force-all -P gcc-7-base
# dpkg --force-all -P gcc-7-base:i386
# aptitude install build-essential


sudo dpkg --add-architecture i386
apt install llvm-4.0 clang-4.0

reboot

# ifconfig, arq, netstat, rarp, nameif, route, traceroute
sudo apt -y install net-tools

# show open ports : nmap [ip]
sudo apt -y install nmap

# fix gpg: failed to start the dirmngr '/usr/bin/dirmngr': Arquivo ou diretório não encontrado
sudo apt -y install dirmngr 

# fix: Failed to load module "canberra-gtk-module"
sudo apt install libcanberra-gtk-module libcanberra-gtk3-module

# Configuring the Firewall
# sudo apt -y install ufw


echo 'deb http://ftp.debian.org/debian stretch-backports main' | sudo tee --append /etc/apt/sources.list.d/stretch-backports.list >> /dev/null
sudo apt update
sudo apt -y install -t stretch-backports remmina remmina-plugin-rdp remmina-plugin-secret

sudo apt -y install git
sudo apt -y install python-iniparse


