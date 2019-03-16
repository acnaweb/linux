#!/usr/bin/env bash

MAVEN_FILE=apache-maven-3.6.0-bin.tar.gz
MAVEN_FOLDER=apache-maven-3.6.0
DOWNLOAD_FOLDER=/home/ac/Downloads

cd $DOWNLOAD_FOLDER

#https://maven.apache.org/download.cgi


# install
tar -xzf $MAVEN_FILE --directory /usr/local

# create link
ln -sf /usr/local/$MAVEN_FOLDER /opt/maven

# change owner
chown -R ac:ac /opt/maven

# environment
echo '' >> /home/ac/.bashrc
echo 'export PATH=$PATH:/opt/maven/bin' >> /home/ac/.bashrc
source /home/ac/.bashrc




