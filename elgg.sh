#update system 
sudo apt update -y 
sudo apt upgrade -y 
#install apache2 
sudo apt install apache2 -y
sudo status apache2 
#install mysql 
sudo  apt-get install mysql-server -y
#install php 
sudo add-apt-repository ppa:ondrej/php
sudo apt install update 
sudo apt-get install php7.2 -y
#enmod php7.2 
sudo a2enmod php7.2 
sudo systemctl restart apache2 
#config database for elgg
echo "CREATE DATABASE elgg;"|mysql -u root -p"Luonghuuquan1!" |true 
echo "GRANT ALL PRIVILEGES on elgg.* to 'elgg_quan'@'localhost' identified by 'Luonguuquan1!';"|mysql -u root -p"Luonghuuquan1!" 
echo "FLUSH PRIVILEGES;"|mysql -u root -p"Luonghuuquan1!"


