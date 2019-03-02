#!/usr/bin/env bash

yum -y install mariadb-server mariadb

sudo systemctl start mariadb.service

#automatic
sudo systemctl enable mariadb.service

#password for root
mysqladmin -u root password 'senha123'
