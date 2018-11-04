# title: "LAMP Stacks - Linux Apache, MySQL, PHP"

# LAMP is a set of open source software packages used in a collaborative model to create web applications and web services.  
# LAMP stands for Linux, Apache, MySQL , PHP.
#
#


￼

**Introduction**

LAMP is a set of open source software packages used in a collaborative model to create web applications and web services. LAMP stands for Linux, Apache, MySQL , PHP.  The LAMP stack contains open source software packages when integrated creates a SaaS model.  The four packages are:

1. Linux - The operating system
2. Apache - The Web Server
3. MySql - The backend database
4. PHP - The Web Programming Language 


￼

The use of open source networks to transfer data over the web is increasing as Web applications and the Internet of things (IOT) proliferate. Open source software and APIs, make it easier to share and pass data over the web. APIs known as Application Programing Interfaces are used to fulfill request from clients or other services. They specify how to create, read, update and delete the state of shared objects.   API’s can fetch data, process data, or pass data to another web service.  Much attention is given to the LAMP stack because it is a common approach for  creating web applications and is used with open API’s.

There are other alternatives to the LAMP stack as each component can be exchanged for another application.  Some list the LAMP stack as Linux, Apache, MySQL & PHP/Python/Perl because each one of the last P components can be a substitute for another. " There [1]  are several variants of the four stack model as well. …

	- WAMP: Windows, Apache, MySQL & PHP
	- WISA: Windows, IIS, SQL &  ASP.net
	- MAMP: MacOS, Apache, MySQL & PHP “( Retrieved 2018)


**Abstract**

The use of open API’s to transfer data over the web is increasing as Web applications and the Internet of things (IOT) proliferate. Open APIs make it easier to share and pass data  over the web.

API’s are built to expose resources for access to public data. APIs are used to fetch data from a database, fulfill a request and process data, using a web server to send information to a client or another service.

## keywords:  Linux, Apache, MySQL, PHP, Application Programming Interface (API’s), REST, IOT, OAS, LAMP


# OPEN API’s

Web applications and the Internet of things (IOT) are reasons Open API’s are increasing in use. Sharing information between applications is easier when the requester and the sender use a standard protocol to communicate and exchange information. This is why the LAMP stack is so popular because each component of the stack integrates well. 

The OpenAPI Specification Initiative has worked to standardize API design to facilitate standardization of design. The OpenAPI committee states [2] “When properly defined via OpenAPI, a consumer can understand and interact with the remote service with a minimal amount of implementation logic.” . OAS states [3] “The OpenAPI Specification (OAS) defines a standard, programming language-agnostic interface description for REST APIs,…” (Retrieved Oct 2018)

RESTful stands for Representational state transfer.  When referring to RESTful here; I refer to the W3C working groups  definition of RESTful which is [4] “arbitrary Web Service, in which the service may expose an arbitrary set of operations”.  An example is HTTP request to GET or POST information from a URI. 

https://www.w3.org/TR/ws-arch/


Rigor.com likens the job of an API to a waiter, taking the request, then fetching and returning the data.  [5] “Your waiter writes down your order, delivers to the kitchen, picks up your food when it’s ready, and serves it to you at your table.” (Retrieved 2018).


## Setting up a LAMP Stack

### Setup the environment

First Load the operating system for your environment in the case of a LAMP stack Linux is the operating system. You may select one of the Linux distributions such a ubuntu. 

Click the link, locate your distro and  select download.

https://www.ubuntu.com/download/desktop

* Download Virtual Box to setup a virtual environment in which you will run the LAMP stack

https://www.virtualbox.org/wiki/Downloads

* Install Virtualbox

https://www.virtualbox.org/manual/UserManual.html

### Install Linux (Ubuntu)

* Install ubuntu on the virtual machine
* Install Vagrant
	
https://www.vagrantup.com/downloads.html
https://www.vagrantup.com/intro/index.html

### Setting Up Vagrant

Use vagrant to initialize ubuntu on the virtual machine(vm) by typing the following command:	
* vagrant init “your linux distro” (ubuntu-bionic64)
* vagrant -v  (check the version of vagrant that installed) 
* vagrant up  (starts the VM)


### Installing Apache

Apache is the web server used in a LAMP stack. Apache is an open source software created and managed my the Apache Software Foundation and the Apache Server Project. The Apache web server establishes connections between the backend database and a client and host services available to the client. According to Apache [6] “The Apache HTTP Server Project is an effort to develop and maintain an open-source HTTP server for modern operating systems including UNIX and Windows.” (Retrieved 2018)



To install Apache from the command line type:

sudo apt-get install -y apache2
sudo a2enmod rewrite

a2enmod rewrite  - is an Apache module that generates readable url’s. [7] “One of the most useful modules for Apache is mod_rewrite. This module allows you to generate unique and easily readable urls for content requested on the server.” (Retrieved 2018).

https://www.digitalocean.com/community/tutorials/how-to-install-configure-and-use-modules-in-the-apache-web-server

### Performance Tuning and Server Settings

After you start the Apache server there are a few settings you might want to change in order to maintain server performance. Two of these settings are ServerLimit and MaxClients.  

It is best to configure the server to provide the shortest response time possible especially during peak times. Two variables that impact response to request are  MaxClients and ServerLimits. Both variables are set to a default values of 256 initially.  


According to APACHE HTTP SERVER PROJECT [8] “The biggest single  hardware issue affecting web server performance is RAM.  APACHE recommends adjusting the “MaxRequestWorkers” setting to minimize swapping. “ (Retrieved 2018).

 As the name indicates this setting controls the maximum number of connections that can be processed simultaneously.  As stated by APACHE (2018_ “The MaxRequestWorkers directive sets the limit on the number of simultaneous request that will be served.” (Retrieved 2018).  The ServerLimit setting can be changed by updating the “httpd.conf” file.


https://httpd.apache.org/docs/current/mod/mpm_common.html


### Server status

#### To list the server status type: 

* sudo systemctl status apache2

### Adding Apache mods

One Apache mode that is recommended to install is the spamhaus mod. The purpose of the mod is to block black listed URL’s. This list was created and is maintained by Spamhaus . According to Spamhause  they are [9] “an international nonprofit organization that tracks spam and related cyber threats such as phishing, malware and  botnets, provides realtime actionable and highly accurate threat intelligence to the Internet's major networks, corporations and security vendors, ...”(retrieved 2018)

https://www.spamhaus.org/organization/

To install the mod type:

* sudo apt-get install libapache2-mod-spamhaus 



### Setting up PHP and MySql


To install PHP type the last open source software in the stack. Type the following command:

sudo apt-get install -y php7.2

Now install the apache PHP mod

Apt-get install -y libapache2-mod-php7.2

Restart the apache server

service apache2 restart

Next install the following PHP mods, the first package loads common modules for PHP. The php7.2-mycrypt packages provides a number of functions to handle encryption and decryption.  

sudo apt-get install -y php7.2-common
sudo apt-get install -y php7.2-mcrypt
Sudo apt-get install -y php7.2-zip  


http://php.net/manual/en/book.mcrypt.php





## References


@Misc{fa18-516-19-What is a LAMP stack
    author             = {J. Potter},
    title                  = {What is a LAMP stack?},
    howpublished = {Web},
    URL                 = {https://www.liquidweb.com/kb/what-is-a-lamp-stack/},
    month             = February,
    year                = {2018},
}

@Misc{fa18-516-19-OAI,
    author  = {Bjorn Jarisch},
    title       = {OpenAPI-Specification},
    howpublished = {Github},
    URL = {https://github.com/OAI/OpenAPI-Specification/blob/master/README.md}
    month  = October,
    year     = {2018},
}

@Misc{fa18-516-19-OAI,
    author    = {Cloud Foundry},
    title         = {Open Service Broker API},
    howpublished = {Web},
    URL        = {https://www.openservicebrokerapi.org/}
    year       = {2016}
}

@Misc{fa18-516-19-Web Services Architecture 
     author              = {David Booth et all},
     title                   =  {3.1.3 Relationship to the World Wide Web and REST Architectures},
     howpublished  = {Web},
     URL                  = {https://www.w3.org/TR/ws-arch/},
     month              = February,
     year                 = “2004”,
}

@Misc{fa18-516-19-Rigor.com,
    author    = {Rigor.com},
    title     = {API’s in Action},
    howpublished = {Web”}
    URL = {https://rigor.com/resources/ebooks/apis-in-action}
    month    =  October,
    year     = {2018},
}

@Misc{fa18-516-19-APACHE HTTP SERVER PROJECT
    author             = {The Apache Software Foundation},
    title                  = {The Number one HTTP Server On the Internet},
    howpublished = {Web},
    URL                 = {https://httpd.apache.org/},
    month             = October,
    year                = {2018},
}

@Misc{fa18-516-19-DigitalOcean
    author             = {Justin Ellingwood},
    title                  = {How to install, Configure, And Use Modules in The Apache Web Server},
    howpublished = {Web },
    URL                 = {https://www.digitalocean.com/community/tutorials/how-to-install-configure-and-use-modules-in-the-apache-web-server},
    month             = August,
    year                = {2013},
}

@Misc{fa18-516-19-An introduction to APIs,
    author    = {Gonzalo Vazquez},
    title     = {An Introduction to API’s},
    howpublished = {Web },
    URL = {https://restful.io/an-introduction-to-api-s-cee90581ca1 b”}
    month = August,
    year     = {2015},
}


@Misc{fa18-516-19-Spamhause
    author              = {he Spamhaus Project organization},
    title                   = {The Spamhaus Project},
    howpublished  = {Web},
    URL                  = {https://www.spamhaus.org/organization/},
    month              = October,
    year                 = {2018},
}


@Misc{fa18-516-19-Vagrant 
     author              = {Hashicorp},
     title                   = {Download Vagrant“},
     howpublished  = {Web},
     URL                  = {https://www.vagrantup.com/downloads.html/ },
     month              = October,
     year                 = {2018},
}

@Misc{fa18-516-19-PHP
     author              = {The PHP Group},
     title                  = {PHP},
     howpublished = {Web},
     URL                 = {http://php.net/},
     month             = October,
     year                = {2018},
}


