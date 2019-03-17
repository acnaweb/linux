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

# steam dependencies
# https://www.edivaldobrito.com.br/como-fazer-o-cliente-steam-funcionar-apos-erro-com-bibliotecas-de-32-bits/
apt -y install libc6-i386 libxtst6:i386 libxrandr2:i386 libglib2.0-0:i386 libgtk2.0-0:i386 libpulse0:i386 libgdk-pixbuf2.0-0:i386
apt -y install libgl1-mesa-glx:i386

echo '/usr/lib32' > /etc/ld.so.conf.d/steam.conf
echo '/usr/lib/i386-linux-gnu/mesa' >> /etc/ld.so.conf.d/steam.conf
ldconfig

