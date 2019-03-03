#!/usr/bin/env bash

POSTMAN_FILE=Postman-linux-x64-6.7.4.tar.gz
POSTMAN_FOLDER=Postman
DOWNLOAD_FOLDER=/home/ac/Downloads

cd $DOWNLOAD_FOLDER

# uncompress
rm -Rf $POSTMAN_FOLDER
tar -xzf $POSTMAN_FILE --directory /usr/local


# create link
ln -fs /usr/local/$POSTMAN_FOLDER/ /opt/Postman

# change owner
chown -R ac:ac /opt/Postman



# environment
echo '' >> /home/ac/.bashrc
echo 'export PATH=$PATH:/opt/$POSTMAN_FOLDER' >> /home/ac/.bashrc
source /home/ac/.bashrc

