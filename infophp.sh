#!/bin/bash 
sudo mv ./index.php /var/www/html 
sudo mv ./oanhphp.conf /etc/apache2/sites-available
sudo a2ensite oanhphp.conf 
sudo systemctl reload apache2 

