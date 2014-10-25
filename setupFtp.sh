#!/bin/bash

FTP_USER=%FTP_USER%
FTP_USER_PASSWORD=%FTP_USER_PASSWORD%

sudo useradd coadd -g git -d /var/www/f4.flodge.com/current/public -s /bin/false
echo -e "$FTP_USER_PASSWORD\$FTP_USER_PASSWORD" | (passwd --stdin $FTP_USER)

echo "Opening proftpd config"
echo "----------------------"
echo ""
echo "1. Set `DefaultRoot ~`"
echo "2. Set `RequireValidShell off`"
echo ""

sudo vi /etc/proftpd/proftpd.conf
sudo service proftpd restart