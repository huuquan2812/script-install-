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
sudo apt-get install php7.2 
