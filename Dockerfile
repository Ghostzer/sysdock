FROM merorafael/php-apache
 
RUN a2enmod rewrite

RUN apt-get -y update && \
    apt-get install -q -y git

RUN git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt --depth=1 \ /opt/letsencrypt/letsencrypt-auto

WORKDIR /opt/letsencrypt

VOLUME ["/etc/letsencrypt"]

EXPOSE 443 80
