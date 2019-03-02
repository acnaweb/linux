#!/usr/bin/env bash

NODE_FILE=node-v11.10.1-linux-x64.tar.xz
NODE_FOLDER=node-v11.10.1-linux-x64
DOWNLOAD_FOLDER=/home/ac/Downloads

cd $DOWNLOAD_FOLDER

wget https://nodejs.org/dist/v11.10.1/$NODE_FILE


# uncompress
rm -Rf $NODE_FOLDER
tar -xJf $NODE_FILE 

# move to /usr/local
rm -Rf /usr/local/$NODE_FOLDER/
mv $NODE_FOLDER/ /usr/local

# create link
ln -fs /usr/local/$NODE_FOLDER/ /opt/node

chown -R ac:ac /opt/node

echo 'export NODE_HOME=/opt/node' >> /home/ac/.bashrc
echo 'export PATH=$PATH:$NODE_HOME/bin:./node_modules/.bin' >> /home/ac/.bashrc

source /home/ac/.bashrc

npm install -g npm 

