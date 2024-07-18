#!/bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt install apache2 -y

git clone https://github.com/luizcarlos16/site-bootcamp-devops.git

sudo mv site-bootcamp-devops/* /var/www/html/

sudo systemctl restart apache2