import os
import subprocess

#The initial purpose of this file was to load each command line in the tuple. 
# In its current state the script will read each command in the tuple and echo's that command to the terminal display.
# Then print the full list of installed packages to the terminal. 
# I did NOT YET add a function to call each command as it was much simpler to use a bootstrap file or a bash script to accomplish this task. 

#logfile = setproc.log

p = subprocess.Popen("vagrant up", shell=True)

p.wait()

subprocess.call("vagrant ssh", shell=True)

cdms = ("apt-get update","apt-get upgrade", "apt-get install -y git", "apt-get install -y apache2", "a2enmod rewrite", "apt-add-repository ppa:ondrej/php", "apt-get update", "apt-get install -y php7.2", "apt-get install -y libapache2-mod-php7.2", "service apache2 restart", "apt-get install -y php7.2-common", "apt-get install -y php7.2-mcrypt", "apt-get install -y php7.2-zip", "debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'", "debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'", "apt-get install -y mysql-server", "apt-get install -y php7.2-mysql","service apache2 restart", "apt-get -y install python-pip", "apt-get -y install python3-pip", "sudo pip install -y pip -U", "apt-get install -y 3.7.0", "apt-get install -y curl", "apt-get update", "apt-get pip install cloudmesh.cm5", "apt-get pip install cloudmesh.sys",)

c = ""



for i in range(len(cdms)):
    c = cdms[i]
#    print (c)
    print("command {}: {}".format(i + 1, cdms[i]))
#print(c)


def runinst(c):
    subprocess.call(c, shell=True)
    subprocess.check_output(c, shell=True)
    return

	

cdms = ("ls","apt-get update")

c = ""

for i in range(len(cdms)):
    c = cdms[i]
    subprocess.call(c, shell=True)
    subprocess.check_output(c, shell=True)
#    print (c)
    print("command {}: {}".format(i + 1, cdms[i]))
#print(c)


runinst(c)

subprocess.call(dpkg --get-selections, shell=True)
