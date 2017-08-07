FROM mysql:5.7

RUN { \
    echo '[mysqld]'; \
    echo 'character-set-server = utf8'; \
} > /etc/mysql/conf.d/charset.cnf

ENV MYSQL_ROOT_USER root
ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE sbtdb
ENV MYSQL_USER sbt
ENV MYSQL_PASSWORD sbt
ENV TZ Asia/Tokyo

COPY prepare.sql /docker-entrypoint-initdb.d/prepare.sql
