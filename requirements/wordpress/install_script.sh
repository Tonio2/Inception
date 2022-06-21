#!/bin/bash
echo "hello"
chown -R www-data:www-data /var/www/*;
chown -R 755 /var/www/*;
mkdir -p /run/php/;
touch /run/php/php7.3-fpm.pid;
mkdir -p /var/www/html;
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
chmod +x wp-cli.phar; 
mv wp-cli.phar /usr/local/bin/wp;
cd /var/www/html;
wp core download --allow-root;
mv /var/www/wp-config.php /var/www/html/
wp core install --allow-root --url="localhost" --title="wordpress" --admin_user="gigachad" --admin_password="gigachad2013" --admin_email="gigachad@42.fr"
wp user create --allow-root "alabalet" "alabalet@42.fr" --user_pass="gigachad";
php-fpm7.3 -F