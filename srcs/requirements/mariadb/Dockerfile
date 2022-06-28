FROM debian:buster
ARG DB_USER_PWD
ARG DB_ADMIN_PWD

EXPOSE 3306

RUN apt-get update
RUN apt-get install -y mariadb-server

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./initial_db.sh /var/www/

RUN chmod +x /var/www/initial_db.sh
RUN /var/www/initial_db.sh
RUN service mysql start && mysql < /var/www/initial_db2.sql

CMD [ "mysqld" ]