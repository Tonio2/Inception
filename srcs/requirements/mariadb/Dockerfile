FROM debian:buster

EXPOSE 3306

RUN apt-get update
RUN apt-get install -y mariadb-server

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./initial_db2.sql /var/www/
COPY ./start.sh /

ENTRYPOINT [ "/start.sh" ]

CMD [ "mysqld" ]