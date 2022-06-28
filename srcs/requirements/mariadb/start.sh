#!/bin/bash

if [ ! -f /var/www/old_db.sql ]; then
    echo "Initializing wordpress database";
    service mysql start;
    mysql < /var/www/initial_db2.sql;
    mv /var/www/initial_db2.sql /var/www/old_db.sql;
fi

echo "wordpress database already intialized";

mysqld;