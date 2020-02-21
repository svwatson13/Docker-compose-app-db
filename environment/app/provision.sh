#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y


# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

sudo apt-get install nginx -y

# nginx
sudo npm install ejs mongoose express

# remove the old file and add our one
sudo rm /etc/nginx/sites-enabled/default
sudo cp /home/ubuntu/environment/app/nginx.default /etc/nginx/sites-enabled/default

# finally, restart the nginx service so the new config takes hold
sudo service nginx restart