#!/usr/bin/env bash


# ifconfig, arq, netstat, rarp, nameif, route, traceroute
apt -y install net-tools
apt -y install telnet


# show open ports : nmap [ip]
apt -y install nmap

# fix gpg: failed to start the dirmngr '/usr/bin/dirmngr': Arquivo ou diretório não encontrado
apt -y install dirmngr 

# fix: Failed to load module "canberra-gtk-module"
apt -y install libcanberra-gtk-module libcanberra-gtk3-module

# Configuring the Firewall
# apt -y install ufw


echo 'deb http://ftp.debian.org/debian stretch-backports main' | tee --append /etc/apt/sources.list.d/stretch-backports.list >> /dev/null
apt update
apt -y install -t stretch-backports remmina remmina-plugin-rdp remmina-plugin-secret

apt -y install git
apt -y install python-iniparse


