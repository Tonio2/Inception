FROM debian:buster

RUN	apt update && apt install -y \
	php \
	php-common \
	php-fpm \
	php-mysql

RUN mkdir -p /run/php

COPY php.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN mkdir -p /var/www/html

CMD ["php-fpm7.3", "-F"]