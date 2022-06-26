FROM debian:buster

RUN	apt update && apt install -y \
	php \
	php-common \
	php-fpm \
	php-mysql \
	php-curl \
	php-gd \
	php-intl \
	php-mbstring \
	php-soap \
	php-xml \
	php-xmlrpc \
	php-zip \
	sendmail \
	wget

EXPOSE 9000

COPY php.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY wp-config.php /var/www/
COPY install_script.sh /var/www/

RUN chmod +x /var/www/install_script.sh

CMD ["/var/www/install_script.sh"]