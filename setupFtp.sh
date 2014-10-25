#!/bin/bash

sudo useradd coadd -g git -d /var/www/f4.flodge.com/current/public -s /bin/false

echo "Opening proftpd config"
echo "----------------------"
echo ""
echo "1. Set `DefaultRoot ~`"
echo "2. Set `RequireValidShell off`"
echo ""

sudo vi /etc/proftpd/proftpd.conf
sudo service proftpd restart