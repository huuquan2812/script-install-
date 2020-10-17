#!/bin/bash 
sudo mv ./index.php /var/www/html 
sudo mv ./infophp.conf /etc/apache2/sites-available
sudo a2ensite infophp.conf 
sudo systemctl restart apache2 

