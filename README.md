Debian 8  
PHP 7.1.1  
Apache/2.4.10 
Let’s Encrypt  

Document root : /var/www/html 

## Extensions
- mcrypt
- iconv
- intl
- mbstring
- gd 
- curl 
- dom 
- soap 
- simplexml 
- xmlreader 
- xmlwriter 
- sockets 
- zip 
- pgsql 
- mysqli 
- oci8 
- sqlsrv (PHP 7.0 or above) 
- pdo_sqlsrv (PHP 7.0 or above) 
- pdo_pgsql 
- pdo_mysql 
- pdo_oci 
- pdo_dblib 
- pdo_sqlite 
- memcached 
- redis 
- simplexml 
- apcu 
- opcache 
- ftp 
- gearman (PHP 5.6 only) 
- rewrite


## Ressources
- Composer 
- Phpunit 
- Wget 
- Vim 
- Git 
- Unzip 
- Cron

## Install the https certificate
It is important to expose port 80 and 443, because the Let's Encrypt Server will try to find their ports for verifying certificates.

Now log in to the running container  
`docker exec -it mycontainer /bin/bash`  
And install the https certificate  
`/opt/letsencrypt/letsencrypt-auto --apache --email your@email.org --agree-tos -d yourwebsite.org`  

## Redirecting
If you want to use another port that 443 for https (like 8080), you can bind like this :  
`docker run -p 80:80 -p 8080:443 -p 443:443`
