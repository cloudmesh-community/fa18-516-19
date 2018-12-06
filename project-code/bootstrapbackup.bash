# lamp stack

# Update Packages
apt-get update

# Upgrade Packages
apt-get upgrade

# Basic Linux Stuff
apt-get install -y git

# Apache
apt-get install -y apache2

# Enable Apache Mods
a2enmod rewrite

# Add Onrej PPA Repo
apt-add-repository ppa:ondrej/php
apt-get update


# Install PHP
apt-get install -y php7.2

# PHP Apache Mod
apt-get install -y libapache2-mod-php7.2

# restart Apache
service apache2 restart

# PHP Mods
apt-get install -y php7.2-common
apt-get install -y php7.2-mcrypt
apt-get install -y php7.2-zip

# Install MySQL
apt-get install -y mysql-server

# Set MySql User & Pass
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'

# PHP-MYSQL lib
apt-get install -y php7.2-mysql

# Restart Apache
sudo service apache2 restart

# Install Python pip

#sudo apt-get install -y pip
sudo apt-get -y install python-pip
sudo apt-get -y install python3-pip

# Update pip
sudo pip install -y pip -U


# Install python 3.7
sudo apt-get install -y 3.7.0

# Install curl
sudo apt-get install -y curl
sudo apt-get update













