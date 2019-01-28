FROM mysql:5.7
MAINTAINER leon_xi@163.com

ENV MYSQL_ROOT_PASSWORD 1234

ADD init_database_duan.sql /docker-entrypoint-initdb.d/
