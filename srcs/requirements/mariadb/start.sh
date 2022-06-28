#!/bin/bash

if [ ! -f /var/www/old_db.sql ]; then
    echo "Initializing wordpress database";
    service mysql start;
    mysql -u root --password=root12345 < /var/www/initial_db2.sql;
    mv /var/www/initial_db2.sql /var/www/old_db.sql;
    service mysql stop;
fi

echo "wordpress database already intialized";

mysqld;