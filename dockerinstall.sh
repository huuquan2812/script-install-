#!/bin/bash 
#update and upgrade system 
sudo apt update 
sudo apt upgrade 
#install docker 
sudo apt install docker.io -y
sudo systemctl enable --now docker
sudo usermod -aG docker huuquan
