#!/bin/bash

# Exit immediately if a command fails
set -e

echo "Updating package index..."
apt update -y

echo "Installing base dependencies..."
apt install -y software-properties-common curl unzip nginx

echo "Adding PHP PPA..."
add-apt-repository ppa:ondrej/php -y
apt update -y

echo "Installing Apache and PHP 8.1..."
apt install -y apache2 php8.1 libapache2-mod-php8.1 php8.1-cli php8.1-common

echo "Enabling and starting Apache..."
systemctl enable apache2
systemctl start apache2

echo "Setup complete."
