FROM debian:buster

RUN apt-get -y update \
    && apt-get install -y mariadb-server

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/dbCreation.sh /dbCreation.sh

RUN chmod +x /dbCreation.sh

CMD ["mysqld_safe"]