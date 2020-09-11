#!/bin/bash
#-----------------------------------------------------------
yum update -y
yum group install -y "Development Tools"
yum install -y net-tools
yum install -y bind-utils
yum install -y rsync
yum install -y wget

#-----------------------------------------------------------


#-----------------------------------------------------------
# sudo vi /etc/yum.repos.d/MariaDB.repo
# MariaDB 10.3 CentOS repository list - created 2019-01-13 00:47 UTC
# http://downloads.mariadb.org/mariadb/repositories/
# [mariadb]
# name = MariaDB
# baseurl = http://yum.mariadb.org/10.3/centos7-amd64
# gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
# gpgcheck=1
# Maria DB 설치
# repository 설정을 했으면 아래 명령으로 YUM을 통해서 Maria DB를 설치할 수 있다.
# sudo yum install MariaDB-server MariaDB-client
#MariaDB first config
systemctl enable mariadb
systemctl start mariadb
mysql_secure_installation
# -폐기- MariaDB install - use rpm ( yum )
# -폐기- yum -y install mariadb-*



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


#firewall port open
#firewall-cmd --zone=public --add-port=20/tcp --permanent
#firewall-cmd --zone=public --add-port=21/tcp --permanent
#firewall-cmd --zone=public --add-port=80/tcp --permanent
#firewall-cmd --zone=public --add-port=443/tcp --permanent
#firewall-cmd --zone=public --add-port=3306/tcp --permanent
#firewall-cmd --reload

#-----------------------------------------------------------------------
[root@localhost ~]# yum install php-fpm
[root@localhost ~]# vim /etc/httpd/conf.d/php.conf
# 저는 31 라인 입니다만 각자 다 다르겠죠?
<FilesMatch \.php$>
#    SetHandler application/x-httpd-php
    SetHandler "proxy:fcgi://127.0.0.1:9000" 
</FilesMatch>

서비스 재시작
[root@localhost ~]# systemctl start php-fpm 
[root@localhost ~]# systemctl enable php-fpm 
[root@localhost ~]# systemctl restart httpd 
#-----------------------------------------------------------------------

