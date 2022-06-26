#!/bin/bash
echo "hello"
chown -R www-data:www-data /var/www/*;
chown -R 755 /var/www/*;
mkdir -p /run/php/;
touch /run/php/php7.3-fpm.pid;
if [ ! -f /var/www/html/wp-config.php ]; then
    mkdir -p /var/www/html;
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
    chmod +x wp-cli.phar; 
    mv wp-cli.phar /usr/local/bin/wp;
    cd /var/www/html;
    wp core download --allow-root;
    mv /var/www/wp-config.php /var/www/html/
    wp core install --allow-root --url=${URL} --title="wordpress" --admin_user=${DB_USER} --admin_password=${DB_USER_PWD} --admin_email="gigachad@42.fr"
    wp user create --allow-root ${DB_USER} "alabalet@42.fr" --user_pass=${DB_USER_PWD};
fi
php-fpm7.3 -F