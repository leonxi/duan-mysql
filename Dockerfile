FROM mysql:5.7
MAINTAINER leon_xi@163.com

ADD init_database_duan.sql /docker-entrypoint-initdb.d/