#!/bin/bash

if [ ! -f /var/www/old_db.sql ]
then
    echo "initialzing wp db"
    service mysql start
    mysql < /var/www/initial_db.sql
    mv /var/www/initial_db.sql /var/www/old_db.sql
fi

echo "wp db initialized"
mysqld