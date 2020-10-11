#!/bin/bash 
#update&&upgrade system 
sudo apt-get update -y 
sudo apt-get upgrade -y
#install lamp sever 
#install apache2 
sudo apt install apache2 
systemctl status apche2 
#install mysql 
sudo apt install mysql-server -y
#install php
sudo apt install -y  php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
sudo  apt install -y php libapache2-mod-php

#create database for elgg 
echo "create database elgg;"| mysql -u root -p"Luonghuuquan1!"| true

