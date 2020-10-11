#!/bin/bash
set -e
#cai dat apache2 
sudo apt update 
sudo apt install -y apache2 
sudo systemctl status 

#cai dat mysql 
 
sudo apt install -y mysql-server
#tao database wordpress 
echo "create database wordpress" | mysql -u root -p"Luonghuuquan1!"| true
#tao wordpressuser 
echo "CREATE USER 'wordpressuser'@'%' IDENTIFIED WITH mysql_native_password BY 'Luonghuuquan1!';" | mysql -u root  -p"Luonghuuquan1!"|true
echo "GRANT ALL ON wordpress.* TO 'wordpressuser'@'%';" | mysql -u root -p"Luonghuuquan1!"
echo "FLUSH PRIVILEGES;"|mysql -u root -p"Luonghuuquan1!"
#cai dat php7 
sudo  apt install -y php libapache2-mod-php
sudo apt install -y  php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
sudo systemctl restart apache2 

#cau hinh wordpress 
sudo cp ./apache2/wordpress.conf /etc/apache2/sites-available/wordpress.conf
sudo a2enmod rewrite
sudo apache2ctl configtest
sudo systemctl restart apache2
#tai wordpress 
curl -O https://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz
touch ./wordpress/.htaccess
cp ./wordpress/wp-config-sample.php ./wordpress/wp-config.php
mkdir ./wordpress/wp-content/upgrade
sudo cp -a ./wordpress/. /var/www/wordpress
sudo chown -R www-data:www-data /var/www/wordpress
sudo cp ./apache2/wp-config.php /var/www/wordpress/wp-config.php
