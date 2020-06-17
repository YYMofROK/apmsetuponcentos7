#!/bin/bash
#-----------------------------------------------------------
yum update -y
yum group install -y "Development Tools"
yum install -y net-tools
yum install -y bind-utils
yum install -y rsync
yum install -y wget

#-----------------------------------------------------------
#MariaDB install - use rpm ( yum )
yum -y install mariadb-*
systemctl enable mariadb
systemctl start mariadb

#-----------------------------------------------------------
#centos 7 vsftpd install - use rpm ( yum )

yum install -y vsftpd
systemctl enable vsftpd

#view /etc/vsftpd/vsftpd.conf ( <= config file location )

#-------------------------------------------------
#centos 7 vsftpd install - use rpm ( yum )

yum install -y vsftpd
systemctl enable vsftpd
#view /etc/vsftpd/vsftpd.conf ( <= config file location )
#-------------------------------------------------
#centos 7 apache install - use rpm ( yum )

yum install -y httpd
systemctl enable httpd
systemctl start httpd
#-------------------------------------------------
#PHP7 install - use rpm ( yum )
wget -P /root https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -Uvh /root/epel-release-latest-7.noarch.rpm
wget -P /root http://rpms.remirepo.net/enterprise/remi-release-7.rpm
rpm -Uvh /root/remi-release-7.rpm
yum install -y yum-utils
yum-config-manager --enable remi-php72
yum install -y php php-common php-fpm php-process php-opcache php-pecl-apcu php-mysqlnd php-pdo php-gd php-mbstring php-xml php-pecl-zip php-bcmath

systemctl restart httpd
#-----------------------------------------------------------------------
#MariaDB first config
mysql_secure_installation

#firewall port open
#firewall-cmd --zone=public --add-port=20/tcp --permanent
#firewall-cmd --zone=public --add-port=21/tcp --permanent
#firewall-cmd --zone=public --add-port=80/tcp --permanent
#firewall-cmd --zone=public --add-port=443/tcp --permanent
#firewall-cmd --zone=public --add-port=3306/tcp --permanent


