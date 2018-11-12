![figure1](https://user-images.githubusercontent.com/42589474/47969386-a676c680-e044-11e8-9287-7d09266983f7.png)

---

# LAMP Stacks - Linux Apache, MySQL, PHP

| De'Angelo Rutledge
| derutled@iu.edu
| Indiana University
| hid: fa18-516-19
| github: [:cloud:](https://github.com/cloudmesh-community/fa18-516-19/blob/master/project-report/report.md)
| code: [:cloud:](TBD)

---

Keywords: Linux, Apache, MySQL, PHP, Application Programming Interface (API's), REST, IOT, OAS, LAMP

---


* LAMP is a set of open source software packages used in a
  collaborative model to create web applications and web services.
* LAMP stands for Linux, Apache, MySQL, PHP.


## Abstract

The use of open API's to transfer data over the web is increasing as
Web applications and the Internet of things (IOT) proliferate. Open
APIs make it easier to share and pass data over the web.

API's are built to expose resources for access to public data. APIs
are used to fetch data from a database, fulfill a request and process
data, using a web server to send information to a client or another
service.

## Introduction

LAMP is a set of open source software packages used in a collaborative
model to create web applications and web services. LAMP stands for
Linux, Apache, MySQL , PHP.  The LAMP stack contains open source
software packages when integrated creates a SaaS model.  The four
packages are:


1. Linux - The operating system
2. Apache - The Web Server
3. MySql - The backend database
4. PHP - The Web Programming Language


The use of open source networks to transfer data over the web is
increasing as Web applications and the Internet of things (IOT)
proliferate. Open source software and APIs, make it easier to share
and pass data over the web. APIs known as Application Programing
Interfaces are used to fulfill request from clients or other services.
They specify how to create, read, update and delete the state of
shared objects. API's can fetch data, process data, or pass data to
another web service. Much attention is given to the LAMP stack because
it is a common approach for creating web applications and is used with
open API's.

There are other alternatives to the LAMP stack as each component can
be exchanged for another application. Some list the LAMP stack as
Linux, Apache, MySQL & PHP/Python/Perl because each one of the last P
components can be a substitute for another. 

> There[@fa18-516-19-wwww-lamp-liquidweb] are several variants of the four stack model as well. ...

	- WAMP: Windows, Apache, MySQL & PHP
	- WISA: Windows, IIS, SQL &  ASP.net
	- MAMP: MacOS, Apache, MySQL & PHP
	

![figure2](https://user-images.githubusercontent.com/42589474/47969473-24879d00-e046-11e8-9a47-f818323f88aa.png)

[*figure2*]

## OpenAPIs

Web applications and the Internet of things (IOT) are reasons Open
API's are increasing in use. Sharing information between applications
is easier when the requester and the sender use a standard protocol to
communicate and exchange information. This is why the LAMP stack is so
popular because each component of the stack integrates well.

The OpenAPI Specification Initiative has worked to standardize API
design to facilitate standardization of design. The OpenAPI committee
states [fa18-516-19-www-oai-b].

> When properly defined via OpenAPI, a consumer can
> understand and interact with the remote service with a minimal amount
> of implementation logic.[fa18-516-19-OAI]. OAS states, The OpenAPI Specification
> (OAS) defines a standard, programming language-agnostic interface
> description for REST APIs, ...[fa18-516-19-OAI] 

RESTful stands for Representational state transfer. When referring to
RESTful here; I refer to the W3C working groups definition of RESTful
which is [fa18-516-19-www-restful], arbitrary Web Service, in which the service may expose
an arbitrary set of operations. An example is HTTP request to GET or
POST information from a URI.

<https://www.w3.org/TR/ws-arch/>

Rigor.com likens the job of an API to a waiter, taking the request,
then fetching and returning the data. 

> Your waiter writes down your order, delivers to the kitchen, picks up your food when it's
  ready, and serves it to you at your table. [fa18-516-19-www-rigor-com]


## Setting up a LAMP Stack

### Setup the environment

First Load the operating system for your environment in the case of a
LAMP stack Linux is the operating system. You may select one of the
Linux distributions such a ubuntu.

Click the link, locate your distro and  select download.

<https://www.ubuntu.com/download/desktop>

* Download Virtual Box to setup a virtual environment in which you will run the LAMP stack

<https://www.virtualbox.org/wiki/Downloads>

* Install Virtualbox

<https://www.virtualbox.org/manual/UserManual.html>

### Install Linux (Ubuntu)

* Install ubuntu on the virtual machine
* Install Vagrant
	
<https://www.vagrantup.com/downloads.html>
<https://www.vagrantup.com/intro/index.html>

### Setting Up Vagrant

Use vagrant to initialize ubuntu on the virtual machine(vm) by typing the following command:	
* vagrant init “your linux distro” (ubuntu-bionic64)
* vagrant -v  (check the version of vagrant that installed) 
* vagrant up  (starts the VM)


### Installing Apache

Apache is the web server used in a LAMP stack. Apache is an open source software created and managed my the Apache Software Foundation and the Apache Server Project. The Apache web server establishes connections between the backend database and a client and host services available to the client. According to Apache [fa18-516-19-www-apache-httpd] The Apache HTTP Server Project is an effort to develop and maintain an open-source HTTP server for modern operating systems including UNIX and Windows.

To install Apache from the command line type:

```bash
sudo apt-get install -y apache2
sudo a2enmod rewrite
```
a2enmod rewrite  - is an Apache module that generates readable url's. [fa18-516-19-www-digitalocean] One of the most useful modules for Apache is mod_rewrite. This module allows you to generate unique and easily readable urls for content requested on the server.

<https://www.digitalocean.com/community/tutorials/how-to-install-configure-and-use-modules-in-the-apache-web-server>

#### Performance Tuning and Server Settings

After you start the Apache server there are a few settings you might want to change in order to maintain server performance. Two of these settings are ServerLimit and MaxClients.  

It is best to configure the server to provide the shortest response time possible especially during peak times. Two variables that impact response to request are  MaxClients and ServerLimits. Both variables are set to a default values of 256 initially.  

According to APACHE HTTP SERVER PROJECT [fa18-516-19-www-apache-httpd], The biggest single hardware issue affecting web server performance is RAM.  APACHE recommends adjusting the *MaxRequestWorkers* setting to minimize swapping.

As the name indicates this setting controls the maximum number of connections that can be processed simultaneously. As stated by APACHE [fa18-516-19-www-apache-httpd] The MaxRequestWorkers directive sets the limit on the number of simultaneous request that will be served. The ServerLimit setting can be changed by updating the *httpd.conf* file.

<https://httpd.apache.org/docs/current/mod/mpm_common.html>


#### Server status

#### To list the server status type:

```bash
sudo systemctl status apache2
```

#### Adding Apache mods

One Apache mode that is recommended to install is the spamhaus mod.
The purpose of the mod is to block black listed URL's. This list was
created and is maintained by Spamhaus. According to Spamhause they
are

> an international nonprofit organization that tracks spam and
> related cyber threats such as phishing, malware and  botnets,
> provides realtime actionable and highly accurate threat intelligence
> to the Internet's major networks, corporations and security vendors,
> ... [fa18-516-19-www-spamhause]

<https://www.spamhaus.org/organization/>

To install the mod type:

```bash
sudo apt-get install libapache2-mod-spamhaus
```


### Installing PHP and MySql


To install PHP type the following bash command at the terminal command prompt:

```bash
$ sudo apt-get install -y php7.2
```

Now install the apache PHP mod by typing the following bash command at the terminal prompt:


```bash
$ apt-get install -y libapache2-mod-php7.2
```

Restart the apache server by typing the following bash command

```bash
$ service apache2 restart
```

Next install the following PHP mods, the first package loads common
modules for PHP. The php7.2-mycrypt packages provides a number of functions to handle 
encryption and decryption.

```bash
$ sudo apt-get install -y php7.2-common
$ sudo apt-get install -y php7.2-mcrypt
$ sudo apt-get install -y php7.2-zip
```

<http://php.net/manual/en/book.mcrypt.php>

####  Set MySql User & Pass

:o: fix section header 

debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

#### Install MySQL

:o: fix section header

```bash
$ apt-get install -y mysql-server
```

#### PHP-MYSQL lib

:o: fix section header

```bash
$ apt-get install -y php7.2-mysql
```

After installing the database restart the apache server before testing
the stack and writing data to the database.

#### Restart Apache

:o: fix section header

```bash
$ sudo service apache2 restart
```












