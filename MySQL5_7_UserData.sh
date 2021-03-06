#!/bin/bash
yum -y install tree yum-utils bind-utils nscd lvm2 lsof at psmisc wget

wget https://github.com/robohodo/MySQL/raw/master/mysql80-community-release-el7-1.noarch.rpm
yum -y install mysql80-community-release-el7-1.noarch.rpm
yum-config-manager --disable mysql80-community
yum-config-manager --enable mysql57-community

yum install mysql-community-server.x86_64

yum -y update
