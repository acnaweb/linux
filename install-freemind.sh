#!/usr/bin/env bash

FREEMIND_FILE=freemind-bin-max-1.0.1.zip
FREEMIND_FOLDER=freemind
DOWNLOAD_FOLDER=/home/ac/Downloads

cd $DOWNLOAD_FOLDER
wget https://ufpr.dl.sourceforge.net/project/freemind/freemind/1.0.1/$FREEMIND_FILE


# install
unzip $FREEMIND_FILE -d /usr/local/$FREEMIND_FOLDER

# create link
ln -sf /usr/local/$FREEMIND_FOLDER /opt/$FREEMIND_FOLDER

# change owner
chown -R ac:ac /opt/$FREEMIND_FOLDER/

chmod +x /opt/$FREEMIND_FOLDER/freemind.sh

# environment
echo '' >> /home/ac/.bashrc
echo 'export PATH=$PATH:/opt/$FREEMIND_FOLDER' >> /home/ac/.bashrc
source /home/ac/.bashrc




