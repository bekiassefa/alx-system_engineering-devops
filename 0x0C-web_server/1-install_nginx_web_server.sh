#!/bin/bash

# Update packages and install Nginx
apt-get update -y
apt-get install -y nginx

# Configure Nginx to listen on port 80
sed -i 's/^\(listen\s*\).*$/\1 80;/' /etc/nginx/sites-available/default

# Restart Nginx
service nginx restart > /dev/null
