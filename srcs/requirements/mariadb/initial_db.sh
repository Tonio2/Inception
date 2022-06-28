#!/bin/sh

echo test
cat << EOF > /var/www/initial_db2.sql
CREATE DATABASE IF NOT EXISTS wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON wordpress.* TO 'alabalet'@'%' IDENTIFIED BY '$DB_USER_PWD';
ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ADMIN_PWD';
FLUSH PRIVILEGES;
EOF