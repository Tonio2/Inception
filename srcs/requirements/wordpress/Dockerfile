FROM debian:buster

RUN	apt update && apt install -y \
	php				\
	php-fpm			\
	php-bcmath			\
	php-bz2 			\
	php-calendar		\
	php-ctype			\
	php-curl			\
	php-dom			\
	php-exif			\
	php-fileinfo		\
	php-gd				\
	php-gmagick		\
	php-gmp			\
	php-iconv			\
	php-imap			\
	php-intl			\
	php-json			\
	php-mbstring		\
	php-mcrypt			\
	php-memcache		\
	php-mysqli			\
	php-mysqlnd		\
	php-openssl		\
	php-pcntl			\
	php-pdo			\
	php-pdo_mysql		\
	php-pdo_pgsql		\
	php-pdo_sqlite 	\
	php-pgsql			\
	php-phar			\
	php-posix			\
	php-session		\
	php-shmop			\
	php-simplexml		\
	php-soap			\
	php-sockets		\
	php-sodium			\
	php-sqlite3		\
	php-sysvsem		\
	php-sysvshm		\
	php-tokenizer		\
	php-xml			\
	php-xmlreader		\
	php-xmlwriter		\
	php-xsl			\
	php-zip			\
	php-zlib			\
	wget
EXPOSE 9000

COPY php.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY wp-config.php /var/www/
COPY install_script.sh /var/www/

RUN chmod +x /var/www/install_script.sh

CMD ["/var/www/install_script.sh"]