#!/usr/bin/env bash

echo 'deb http://sft.if.usp.br/debian/ stretch main contrib non-free' >> /etc/apt/sources.list
apt update 
apt upgrade 
apt -y install firmware-linux 
apt -y install make perl 
# apt --fix-broken install
# apt install --fix-missing
apt -y install build-essential

apt install firmware-linux-nonfree
apt install firmware-misc-nonfree

# Lenovo
# apt -y install firmware-atheros firmware-realtek

# https://askubuntu.com/questions/937254/cannot-install-build-essential-gcc-g-after-upgrade-to-17-04
# apt install aptitude
# dpkg --force-all -P gcc-7-base
# dpkg --force-all -P gcc-7-base:i386
# aptitude install build-essential


dpkg --add-architecture i386
apt install llvm-4.0 clang-4.0

reboot

# ifconfig, arq, netstat, rarp, nameif, route, traceroute
apt -y install net-tools
apt -y install telnet


# show open ports : nmap [ip]
apt -y install nmap

# fix gpg: failed to start the dirmngr '/usr/bin/dirmngr': Arquivo ou diretório não encontrado
apt -y install dirmngr 

# fix: Failed to load module "canberra-gtk-module"
apt install libcanberra-gtk-module libcanberra-gtk3-module

# Configuring the Firewall
# apt -y install ufw


echo 'deb http://ftp.debian.org/debian stretch-backports main' | tee --append /etc/apt/sources.list.d/stretch-backports.list >> /dev/null
apt update
apt -y install -t stretch-backports remmina remmina-plugin-rdp remmina-plugin-secret

apt -y install git
apt -y install python-iniparse


