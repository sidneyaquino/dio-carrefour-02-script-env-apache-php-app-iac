#!/bin/bash

echo "Updating the Linux Server..."
apt-get update -y
apt-get upgrade -y 

echo "Installing Apache HTTP Server..."
apt-get install apache2 -y

echo "Installing Unzip..."
apt-get install unzip -y

echo "Downloading Application..."
wget http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -o /tmp/main.zip

echo "Sending Application to Default Apache Directory..."
unzip /tmp/main.zip
cp -R /tmp/linux-site-dio-main/* /var/www/html/
#rm -rf /tmp/linux-site-dio-main/
#rm /tmp/main.zip

echo "All done!"