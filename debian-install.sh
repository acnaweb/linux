#!/usr/bin/env bash

echo 'deb http://sft.if.usp.br/debian/ stretch main contrib non-free' >> /etc/apt/sources.list
apt update
apt upgrade
apt install firmware-linux firmware-atheros firmware-realtek
reboot

sudo dpkg --add-architecture i386
apt install llvm-4.0 clang-4.0


# ifconfig, arq, netstat, rarp, nameif e route

# traceroute
sudo apt -y install net-tools

# fix gpg: failed to start the dirmngr '/usr/bin/dirmngr': Arquivo ou diretório não encontrado
sudo apt -y install dirmngr 

# show open ports : nmap [ip]
sudo apt -y install nmap

# Configuring the Firewall
sudo apt -y install ufw


echo 'deb http://ftp.debian.org/debian stretch-backports main' | sudo tee --append /etc/apt/sources.list.d/stretch-backports.list >> /dev/null
sudo apt update
sudo apt -y install -t stretch-backports remmina remmina-plugin-rdp remmina-plugin-secret

sudo apt -y install git


