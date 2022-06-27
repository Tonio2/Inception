#!/bin/bash
echo "hello"
chown -R www-data:www-data /var/www/*;
chmod -R 755 /var/www/*;
mkdir -p /run/php/;
touch /run/php/php7.3-fpm.pid;
if [ ! -f /var/www/html/wp-config.php ]; then
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
    chmod +x wp-cli.phar; 
    mv wp-cli.phar /usr/local/bin/wp;
    mkdir -p /var/www/html;
    cd /var/www/html;
    wp core download --allow-root;
    mv /var/www/wp-config.php /var/www/html/
    wp core install --allow-root --url=${WP_URL} --title="wordpress" --admin_user=${WP_ADMIN} --admin_password=${WP_ADMIN_PWD} --skip-email --admin_email="labalette.antoine@gmail.com";
    wp user create --allow-root ${DB_USER} "random@gmail.com" --user_pass=${DB_USER_PWD};
    wp theme install inspiro --activate --allow-root
fi
php-fpm7.3 -F