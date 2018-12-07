# Project Instructions
1.  Launch the terminal - Double Click the file "Cmder.exe" and click the "Run" button, click
    "Ignore and continue"
2.  At the terminal prompt type "Vagrant up" The application will load
    and run the bootstrap.bash file which will load the LAMP stack.
3.  Then type "Vagrant ssh" - This will login to the virtual machine
4.  Login to MSQL by typing - mysql -u root -p (root is the user and
    root is the password) type "root" at the password prompt
    type "sudo mysql"
5.  Type "show databases;"
6.  Create a database, type "create database test;"
7.  Type "use test;"
8.  Create a database, a table and load records -

## create database table

    DROP TABLE IF EXISTS customer; CREATE TABLE customer ( id INTEGER
    PRIMARY KEY, name TEXT, address TEXT, city TEXT, state TEXT, zip TEXT );

    DROP TABLE IF EXISTS item; CREATE TABLE item ( id INTEGER PRIMARY KEY,
    name TEXT, description TEXT );

    DROP TABLE IF EXISTS sale; CREATE TABLE sale (id INTEGER PRIMARY KEY,
    item\_id INTEGER, customer\_id INTEGER, date TEXT, quantity INTEGER,
    price INTEGER);

    BEGIN; INSERT INTO customer ( id, name, address, city, state, zip )
    VALUES ( 1, 'Bill Smith', '123 Main Street', 'Hope', 'CA', '98765' );
    INSERT INTO customer ( id, name, address, city, state, zip ) VALUES ( 2,
    'Mary Smith', '123 Dorian Street', 'Harmony', 'AZ', '98765' ); INSERT
    INTO customer ( id, name, address, city, state, zip ) VALUES ( 3, 'Bob
    Smith', '123 Laugh Street', 'Humor', 'CA', '98765' );

    INSERT INTO item ( id, name, description ) VALUES ( 1, 'Box of 64
    Pixels', '64 RGB pixels in a decorative box' ); INSERT INTO item ( id,
    name, description ) VALUES ( 2, 'Sense of Humor', 'Especially dry.
    Imported from England.' ); INSERT INTO item ( id, name, description )
    VALUES ( 3, 'Beauty', 'Inner beauty. No cosmetic surgery required!' );
    INSERT INTO item ( id, name, description ) VALUES ( 4, 'Bar Code',
    'Unused. In original packaging.' );

    INSERT INTO sale ( id, item\_id, customer\_id, date, quantity, price )
    VALUES ( 1, 1, 2, '2009-02-27', 3, 2995 ); INSERT INTO sale ( id,
    item\_id, customer\_id, date, quantity, price ) VALUES ( 2, 2, 2,
    '2009-02-27', 1, 1995 ); INSERT INTO sale ( id, item\_id, customer\_id,
    date, quantity, price ) VALUES ( 3, 1, 1, '2009-02-28', 1, 2995 );
    INSERT INTO sale ( id, item\_id, customer\_id, date, quantity, price )
    VALUES ( 4, 4, 3, '2009-02-28', 2, 999 ); INSERT INTO sale ( id,
    item\_id, customer\_id, date, quantity, price ) VALUES ( 5, 1, 2,
    '2009-02-28', 1, 2995 ); COMMIT;


9. Open a broswer window and test the connection to the apache server. In the address bar type http://locahost or type http://"server ip address". The apache server default page shoould display. This verifies that the server is running.
To find the server ip address type "ip addr show".

To look at the apache profile type "sudo ufw app info "Apache Full" This will show the title and description of the web server as well as the ports.

The apache server can be configured by modifying the httpd.conf file located in the /etc/httpd/conf folder but you should first make a copy of this file in case you corrupt the file.

10. To display the databse records via the web page type "index.php" in the address bar

   
    
