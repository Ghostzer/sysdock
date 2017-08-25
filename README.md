Debian 8  
PHP 7.1.1  
Apache/2.4.10  
Let’s Encrypt  
ACME  

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

## Install the https certificate with Let's Encrypt
It is important to expose port 80 and 443, because the Let's Encrypt Server will try to find their ports for verifying certificates.

Now log in to the running container  
`docker exec -it mycontainer /bin/bash`  
And install the https certificate  
`/opt/letsencrypt/letsencrypt-auto --apache --email your@email.org --agree-tos -d yourwebsite.org`  

## Install the https certificate with ACME
https://github.com/Neilpang/acme.sh
