#!/usr/bin/env bash


# create user
# groupadd -r wildfly
# useradd -r -g wildfly -d /opt/wildfly -s /sbin/nologin wildfly

WILDFLY_FILE=wildfly-14.0.1.Final.tar.gz
WILDFLY_FOLDER=wildfly-14.0.1.Final
DOWNLOAD_FOLDER=/home/ac/Downloads

cd $DOWNLOAD_FOLDER
wget https://download.jboss.org/wildfly/14.0.1.Final/$WILDFLY_FILE

# install
tar -xzvf $WILDFLY_FILE --directory /usr/local

# create link
ln -sf /usr/local/$WILDFLY_FOLDER /opt/wildfly

chown -R ac:ac /opt/wildfly

# environment
echo '' >> /etc/profile.d/jboss_home.sh
echo 'export JBOSS_HOME=/opt/wildfly' >> /etc/profile.d/jboss_home.sh

source /etc/profile.d/jboss_home.sh


