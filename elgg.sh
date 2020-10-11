#!/bin/bash 
#update&&upgrade system 
sudo apt-get update -y$$sudo apt-get upgrade -y
#install lamp sever 
#install apache2 
sudo apt install apache2 
systemctl status apche2 
#install mysql 
sudo apt install mysql-server -y
#install php7
apt-get install php7.2 libapache2-mod-php7.2 php7.2-common php7.2-sqlite3 php7.2-curl php7.2-intl php7.2-mbstring php7.2-xmlrpc php7.2-mysql php7.2-gd php7.2-xml php7.2-cli php7.2-zip -y 
sudo systemctl restart apache2
#create database for elgg 
echo "create database elgg;"| mysql -u root -p"Luonghuuquan1!"
echo "GRANT ALL PRIVILEGES on elgg.* to 'quan_ellg'@'localhost' identified by 'Luonghuuquan1!';"|mysql -u root -p"Luonghuuquan1!"
#dowload the lastest version ellg 
cd /var/www/html 
sudo rm -r index.html 
sudo wget https://elgg.org/download/elgg-2.3.7.zip
sudo apt install unzip
unzip elgg-2.3.7.zip
sudo mv ./elgg-2.3.7/* . && rm elgg-2.3.7.zip && rm -r elgg-2.3.7
#Create a data directory for Elgg.
sudo mkdir -p /var/www/html/data
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/
#Configure Apache for Elgg

