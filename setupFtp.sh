#!/bin/bash

echo "Adding FTP user: $FTP_USER"
sudo useradd $FTP_USER -g git -d /var/www/$DOMAIN/current/public -s /bin/false
echo "$FTP_USER:$FTP_USER_PASSWORD" | chpasswd

echo ""
echo "Opening proftpd config"
echo "----------------------"
echo ""
echo "1. Set DefaultRoot ~"
echo "2. Set RequireValidShell off"
echo ""

sudo vi /etc/proftpd/proftpd.conf
sudo service proftpd restart