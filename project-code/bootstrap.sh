# lamp stack

# Update Packages
sudo apt-get update

# Upgrade Packages
sudo apt-get upgrade

# Install Apache
sudo apt-get install -y apache2

sudo systemctl restart apache2

# Enable Apache Mods
sudo a2enmod rewrite

#set firewall to allow web traffic
sudo ufw app list
sudo ufw app info "Apache Full"
sudo ufw allow in "Apache Full"

# check the ip address# 
# ip addr show 


# Install MySQL
sudo apt-get install -y mysql-server


# Set MySql User & Password
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'

# Create a my sql database
mysql -u root -p
# password is root
create database test;
use test;

# create table called posts()
create table posts(id INT AUTO_INCREMENT, text VARCHAR(250) NOT NULL, primary key (id));

# insert rows into table
insert into posts(text) values('Hello World');
insert into posts(text) values('Text Posts');

##create database table


DROP TABLE IF EXISTS customer;
CREATE TABLE customer ( id INTEGER PRIMARY KEY, name TEXT, address TEXT, city TEXT, state TEXT, zip TEXT);

DROP TABLE IF EXISTS item;
CREATE TABLE item ( id INTEGER PRIMARY KEY, name TEXT, description TEXT);

DROP TABLE IF EXISTS sale;
CREATE TABLE sale (id INTEGER PRIMARY KEY, item_id INTEGER, customer_id INTEGER, date TEXT, quantity INTEGER, price INTEGER);

BEGIN;
INSERT INTO customer ( id, name, address, city, state, zip ) VALUES ( 1, 'Bill Smith', '123 Main Street', 'Hope', 'CA', '98765' );
INSERT INTO customer ( id, name, address, city, state, zip ) VALUES ( 2, 'Mary Smith', '123 Dorian Street', 'Harmony', 'AZ', '98765' );
INSERT INTO customer ( id, name, address, city, state, zip ) VALUES ( 3, 'Bob Smith', '123 Laugh Street', 'Humor', 'CA', '98765' );

INSERT INTO item ( id, name, description ) VALUES ( 1, 'Box of 64 Pixels', '64 RGB pixels in a decorative box' );
INSERT INTO item ( id, name, description ) VALUES ( 2, 'Sense of Humor', 'Especially dry. Imported from England.' );
INSERT INTO item ( id, name, description ) VALUES ( 3, 'Beauty', 'Inner beauty. No cosmetic surgery required!' );
INSERT INTO item ( id, name, description ) VALUES ( 4, 'Bar Code', 'Unused. In original packaging.' );

INSERT INTO sale ( id, item_id, customer_id, date, quantity, price ) VALUES ( 1, 1, 2, '2009-02-27', 3, 2995 );
INSERT INTO sale ( id, item_id, customer_id, date, quantity, price ) VALUES ( 2, 2, 2, '2009-02-27', 1, 1995 );
INSERT INTO sale ( id, item_id, customer_id, date, quantity, price ) VALUES ( 3, 1, 1, '2009-02-28', 1, 2995 );
INSERT INTO sale ( id, item_id, customer_id, date, quantity, price ) VALUES ( 4, 4, 3, '2009-02-28', 2, 999 );
INSERT INTO sale ( id, item_id, customer_id, date, quantity, price ) VALUES ( 5, 1, 2, '2009-02-28', 1, 2995 );
COMMIT;


# Install PHP
sudo apt-get install -y php7.2

# PHP Apache Mod
sudo apt-get install -y libapache2-mod-php7.2

# restart Apache
sudo service apache2 restart

# Install php mods
# PHP Mods
sudo apt-get install -y php7.2-common
sudo apt-get install -y php7.2-mcrypt
sudo apt-get install -y php7.2-zip

# Installl PHP mysql libraries
# PHP-MYSQL lib
apt-get install -y php7.2-mysql

# Install php admin
sudo apt-get install -y phpmyadmin

sudo service apache2 restart







  




