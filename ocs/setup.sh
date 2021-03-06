#!/bin/bash
echo "###################################################################################"
echo "Installation will start now.......and it will take some time :)"
echo "###################################################################################"

apt-get update -y

apt-get install open-vm-tools sudo make apache2 php7.0 php7.0-common php7.0-cli php7.0-gd php7.0-zip php7.0-ldap libapache2-mod-php7.0 php-pear nano wget -y

apt-get install -y libxml-simple-perl libio-compress-perl libdbi-perl libdbd-mysql-perl libapache-dbi-perl libnet-ip-perl libsoap-lite-perl libarchive-zip-perl

apt-get install -y mysql-server mysql-client python-mysqldb libphp-pclzip php7.0-mysql

echo "<?php phpinfo();?>" >> /var/www/html/info.php
echo -e "\n"

cpan -i XML::Entities

cd /opt/

wget https://github.com/OCSInventory-NG/OCSInventory-ocsreports/releases/download/2.2/OCSNG_UNIX_SERVER-2.2.tar.gz
tar -xf OCSNG_UNIX_SERVER-2.2.tar.gz

chown -R www-data:www-data /var/www/html
chown -R www-data:www-data /usr/share/ocsinventory-reports/

service apache2 restart

sh setup.sh

#When script will ask about main apache conf file. If you didn’t change anything paste this:/etc/apache2/apache2.conf*
#When script checks: Checking for Apache Include configuration directory…, paste this: /etc/apache2/sites-enabled*
#Script will ask if you want to use SOAP extensions and more likely report that libraries are missing. Just continue.

#change ocs@localhost password
#nano /usr/share/ocsinventory-reports/ocsreports/dbconfig.inc.php
#nano /etc/apache2/sites-enabled/z-ocsinventory-server.conf
#rm /usr/share/ocsinventory-reports/ocsreports/install.php



