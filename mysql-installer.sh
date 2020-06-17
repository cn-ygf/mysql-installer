#!/bin/bash
wget https://mirrors.tuna.tsinghua.edu.cn/mysql/yum/mysql57-community-el7/mysql-community-client-5.7.30-1.el7.x86_64.rpm -O /tmp/
wget https://mirrors.tuna.tsinghua.edu.cn/mysql/yum/mysql57-community-el7/mysql-community-common-5.7.30-1.el7.x86_64.rpm -O /tmp/
wget https://mirrors.tuna.tsinghua.edu.cn/mysql/yum/mysql57-community-el7/mysql-community-libs-5.7.30-1.el7.x86_64.rpm -O /tmp/
wget https://mirrors.tuna.tsinghua.edu.cn/mysql/yum/mysql57-community-el7/mysql-community-server-5.7.30-1.el7.x86_64.rpm -O /tmp/

yum localinstall /tmp/mysql-community-common-5.7.30-1.el7.x86_64.rpm
yum localinstall /tmp/mysql-community-libs-5.7.30-1.el7.x86_64.rpm
yum localinstall /tmp/mysql-community-client-5.7.30-1.el7.x86_64.rpm
yum localinstall /tmp/mysql-community-server-5.7.30-1.el7.x86_64.rpm
systemctl enable mysqld
systemctl start mysqld
grep "temporary password" /var/log/mysqld.log
/usr/bin/mysql_secure_installation