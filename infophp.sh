#!/bin/bash 
mv ./index.php /var/www/html 
mv ./infophp.conf /etc/apache2/sites-available
sudo a2ensite infophp.conf 
sudo systemctl restart apache2 

