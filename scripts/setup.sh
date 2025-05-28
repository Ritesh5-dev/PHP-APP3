#!/bin/bash

# Exit immediately if a command fails
set -e

echo "Installing dependencies..."
apt install -y nginx unzip curl

echo "Setup complete."
# Update package index
apt update -y

# Install required tools
apt install -y software-properties-common

# Add Ondřej Surý’s PPA for PHP
add-apt-repository ppa:ondrej/php -y
apt update -y

# Install Apache and PHP 8.1
apt install -y apache2 php8.1 libapache2-mod-php8.1 php8.1-cli php8.1-common

# Enable and start Apache
systemctl enable apache2
systemctl start apache2
