FROM php:7.0.8-fpm-alpine

RUN apk update && apk upgrade && \
    apk add --update curl wget bash tree autoconf gcc g++ make libffi-dev openssl-dev

RUN apk add supervisor

RUN pecl install xdebug \
	&& docker-php-ext-enable xdebug \
	&& docker-php-ext-install opcache

RUN docker-php-ext-install pdo_mysql

RUN mkdir -p /var/log/supervisor

COPY ./conf/php-dev.ini /usr/local/etc/php/
COPY ./conf/php-prod.ini /usr/local/etc/php/
COPY ./conf/envars-development.conf /usr/local/etc/php-fpm.d
COPY ./conf/supervisord.conf /etc
WORKDIR /srv
COPY ./index.php /srv/web/
WORKDIR /srv

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

CMD ["/usr/bin/supervisord","-n","-c","/etc/supervisord.conf"]