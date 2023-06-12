FROM mysql:5.7

ARG ROOT_PASS
ENV MYSQL_ROOT_PASSWORD=$ROOT_PASS

ADD init.sql /docker-entrypoint-initdb.d