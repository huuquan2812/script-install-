#!/bin/bash 
sudo mv ./index.php /var/www/html 
sudo mv ./oanh.php.conf /etc/apache2/sites-available
sudo a2ensite oanh.php.conf 
sudo systemctl restart apache2 

