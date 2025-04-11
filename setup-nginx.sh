#!/bin/sh

# Install nginx
apt-get -y update
apt -y install nginx

# Remove the default page
rm /var/www/html/index.nginx-debian.html

# Create the default page for the region
wget https://raw.githubusercontent.com/ECClabs/mslearn-distribute-load-with-traffic-manager/master/index.$1.html -O /var/www/html/index.html
