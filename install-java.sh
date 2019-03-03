#!/usr/bin/env bash

JAVA_FILE=jdk-8u201-linux-x64.tar.gz 
JAVA_FOLDER=jdk1.8.0_201
DOWNLOAD_FOLDER=/home/ac/Downloads

cd $DOWNLOAD_FOLDER

# uncompress
rm -Rf $JAVA_FOLDER
tar -xzf $JAVA_FILE 

# move to /usr/local
rm -Rf /usr/local/$JAVA_FOLDER/
mv $JAVA_FOLDER/ /usr/local

# create link
ln -fs /usr/local/$JAVA_FOLDER/ /opt/jdk
ln -fs /usr/local/$JAVA_FOLDER/ /opt/sdk
ln -fs /usr/local/$JAVA_FOLDER/jre /opt/jre

# change owner
chown -R ac:ac /opt/jdk
chown -R ac:ac  /opt/sdk
chown -R ac:ac  /opt/jre

# environment
echo '' >> /etc/profile.d/jdk_home.sh
echo 'export JAVA_HOME=/opt/jdk' >> /etc/profile.d/jdk_home.sh
echo 'export JRE_HOME=/opt/jre' >> /etc/profile.d/jdk_home.sh
echo 'export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin' >> /etc/profile.d/jdk_home.sh
source /etc/profile.d/jdk_home.sh

#remove openjdk
rm -Rf /usr/bin/java
