FROM merorafael/php-apache
 
RUN a2enmod rewrite

WORKDIR /opt

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt --depth=1

RUN apache2ctl -D BACKGROUND

EXPOSE 8080 443

CMD ["apache2ctl", "-D", "FOREGROUND"]
