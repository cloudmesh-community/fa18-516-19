
Week Fri 08/31/18 - 09/06/18

This week I worked on creating a python script to automate starting the vm, ssh into the vm and load a list of packages into the virtual environment. There is still work to do to as I would like to create a log file and change the environment to work with other cloud services.
The script is list in my project folder and is named "setproc.py". I also uploaded my bootstrap bash file which contains the list of commmands I used to create my lamp stack. This process is the one I automated using the "setproc.py script.

I will try to scheduel some time with a TA to clearify some confusion I have regarding the order of things.

I am still slithgly behind as I now need to spend time on being able to sync my folders from my computer to my github respository and ssh my files to the correct location.

Week Fri 08/31/18 - 09/06/18

 - Reviewed YAML data structure
 - Created YAML file
 - Loaded Virtual Box
 - Loaded Ubuntu 18.04.1 
 - Wrote simple python script to read the contents of YAML files



Week Fri 09/07/18 - 09/13/18
 - Installed tools in Ubuntu, Python3 pip, git, VIM
 - Configured Unbuntu 
 - reviewed REST Lecture
 - learned Linux Commands
 
 Week Fri 09/14/18 - 09/21/18
 Completed more extensive vagrant training
 Setup a stack
 Configured the vagrant file to reference a bootstrap containing the following:
 
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


# Set MySql User & Pass
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install MySQL
apt-get install -y mysql-server

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

# install cloudmesh
sudo apt-get pip install cloudmesh.cm5
sudo apt-get pip install cloud


 Week Fri 09/21/18 - 09/28/18
 reviewed more lecturees and changed my approach
 Vagrant file corrupted reloaded/ repaired vagrant
 working with installing pyenv encountered a few hurdles but got it to install. Changing the order of package installs
 Created ssh key. Saved key to Github. Will start using git to push make file and version control.
 Encoutered problems using xclip, still not working properly. Troubleshooting
 
 
 
  Week Fri 09/29/18 - 10/05/18

