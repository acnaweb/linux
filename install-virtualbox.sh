#!/usr/bin/env bash

VIRTUALBOX_FILE=virtualbox-6.0_6.0.4-128413~Debian~stretch_amd64.deb
DOWNLOAD_FOLDER=/home/ac/Downloads

cd $DOWNLOAD_FOLDER
wget https://download.virtualbox.org/virtualbox/6.0.4/$VIRTUALBOX_FILE
dpkg -i $VIRTUALBOX_FILE
apt -f -y install

# Guest
# sudo adduser USERNAME vboxsf
# mount -t vboxsf share mount_point
