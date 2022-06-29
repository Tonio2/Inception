FROM debian:buster

RUN apt-get update
RUN apt-get install -y vsftpd

COPY vsftpd.conf /tmp/vsftpd.conf
COPY start.sh /tmp/start.sh

RUN chmod +x /tmp/start.sh

CMD ["/tmp/start.sh" ]