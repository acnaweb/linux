#!/usr/bin/env bash

SKYPE_FILE=skypeforlinux-64.deb
DOWNLOAD_FOLDER=/home/ac/Downloads

cd $DOWNLOAD_FOLDER

wget https://go.skype.com/$SKYPE_FILE
dpkg -i $SKYPE_FILE
apt -f -y install
