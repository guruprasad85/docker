#!/bin/bash
cd /
wget https://download.nextcloud.com/server/releases/nextcloud-12.0.4.zip
unzip nextcloud-12.0.4.zip
rm nextcloud-12.0.4.zip 
cp -r nextcloud /var/www/
chown www-data:www-data /var/www/nextcloud/ -R
mkdir /var/www/nextcloud-data/
chown www-data:www-data /var/www/nextcloud-data/ -R

rm -rf nextcloud.* lamp.* download.*

mysql -u root -p"q1w2e3//*" 

create database nextcloud; 

create user nextcloud@localhost identified by 'Next@123';

grant all privileges on nextcloud.* to nextcloud@localhost identified by 'Next@123'; 

flush privileges; 

exit;

