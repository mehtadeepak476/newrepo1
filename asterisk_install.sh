#!/bin/bash

sudo sed -i 's/enforcing/disabled/g' /etc/selinux/config
sudo reboot
sudo yum install gcc gcc-c++ php-xml php php-mysql php-pear php-mbstring mariadb-devel mariadb-server mariadb sqlite-devel lynx bison gmime-devel psmisc tftp-server httpd make ncurses-devel libtermcap-devel sendmail sendmail-cf caching-nameserver sox newt-devel libxml2-devel libtiff-devel audiofile-devel gtk2-devel uuid-devel libtool libuuid-devel subversion kernel-devel kernel-devel-$(uname -r) git subversion kernel-devel php-process crontabs cronie cronie-anacron wget vim
cd /usr/src/
sudo wget https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/g/gmime-2.6.23-1.el7.x86_64.rpm
sudo wget https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/g/gmime-devel-2.6.23-1.el7.x86_64.rpm
sudo rpm -ivh gmime-2.6.23-1.el7.x86_64.rpm
sudo rpm -ivh gmime-devel-2.6.23-1.el7.x86_64.rpm
sudo yum install gcc gcc-c++ php-xml php php-mysql php-pear php-mbstring mariadb-devel mariadb-server mariadb sqlite-devel lynx bison gmime-devel psmisc tftp-server httpd make ncurses-devel libtermcap-devel sendmail sendmail-cf caching-nameserver sox newt-devel libxml2-devel libtiff-devel audiofile-devel gtk2-devel uuid-devel libtool libuuid-devel subversion kernel-devel kernel-devel-$(uname -r) git subversion kernel-devel php-process crontabs cronie cronie-anacron wget vim
sudo systemctl enable mariadb
sudo systemctl start mariadb
sudo systemctl status mariadb
sudo systemctl enable mariadb
sudo wget http://digip.org/jansson/releases/jansson-2.7.tar.gz
sudo tar -zxvf jansson-2.7.tar.gz
cd jansson-2.*/ 
sudo ./configure --prefix=/usr
sudo make clean
sudo make
sudo make install
sudo ldconfig
cd /usr/src/  
sudo wget https://downloads.asterisk.org/pub/telephony/asterisk/old-releases/asterisk-13.5.0.tar.gz
sudo tar -zxvf asterisk-13.5.0.tar.gz
cd asterisk-13.*/  
sudo ./configure --libdir=/usr/lib64
sudo make menuselect
sudo contrib/scripts/get_mp3_source.sh
sudo make
sudo make install
sudo make samples
sudo make config
sudo useradd -m asterisk
sudo chown asterisk.asterisk /var/run/asterisk
sudo chown -R asterisk.asterisk /etc/asterisk 
sudo systemctl start asterisk
sudo systemctl status asterisk
sudo systemctl enable asterisk
sudo asterisk -rv