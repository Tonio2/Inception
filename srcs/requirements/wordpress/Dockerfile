FROM debian:buster

RUN	apt update
RUN apt upgrade
RUN apt install -y \
	php7.3 \
	php7.3-common \
	php7.3-fpm \
	php7.3-mysql \
	php7.3-curl \
	php7.3-gd \
	php7.3-intl \
	php7.3-mbstring \
	php7.3-soap \
	php7.3-xml \
	php7.3-imap \
	php7.3-xmlrpc \
	php7.3-zip \
	sendmail \
	wget

EXPOSE 9000

COPY php.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY wp-config.php /var/www/
COPY wp-comments-post.php /var/www/
COPY install_script.sh /var/www/
COPY index.html /tmp/index.html

RUN chmod +x /var/www/install_script.sh

CMD ["/var/www/install_script.sh"]