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
#instal elgg 
cd /var/www/html
sudo rm -r index.html 
wget https://elgg.org/download/elgg-2.3.7.zip
sudo apt install unzip
unzip elgg-2.3.7.zip
mv ./elgg-2.3.7/* . && rm elgg-2.3.7.zip && rm -r elgg-2.3.7
#create data directory 
sudo mkdir -p /var/www/html/data
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/
#config acpche for elgg 
sudo a2enmod rewrite
sudo mv /tmp/elgg.conf /etc/apache2/sites-available/
 sudo a2ensite elgg.conf
  sudo systemctl restart apache2.service
