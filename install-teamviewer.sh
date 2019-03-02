#!/usr/bin/env bash

TEAMVIEWER_FILE=teamviewer_amd64.deb
DOWNLOAD_FOLDER=/home/ac/Downloads

cd $DOWNLOAD_FOLDER
wget https://download.teamviewer.com/download/linux/$TEAMVIEWER_FILE
dpkg -i $TEAMVIEWER_FILE
apt -f -y install
