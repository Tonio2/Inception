FROM debian:buster

EXPOSE 3306

RUN apt-get update
RUN apt-get install -y mariadb-server

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./initial_db2.sql /var/www/
COPY ./start.sh /

# RUN chmod +x /start.sh
RUN service mysql start && mysql < /var/www/initial_db2.sql && rm -f /var/www/initial_db2.sql

# ENTRYPOINT [ "/start.sh" ]
CMD [ "mysqld" ]