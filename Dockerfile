FROM mysql:5.7
MAINTAINER leon_xi@163.com

ENV MYSQL_ROOT_PASSWORD '1234'
ENV MYSQL_DATABASE duan

ENV WORK_PATH /usr/local/work
ENV AUTO_RUN_DIR /docker-entrypoint-initdb.d
ENV INSTALL_DATA_SHELL install_database.sh
ENV INIT_DUAN_DATABASE init_database_duan.sql

RUN mkdir -p $WORK_PATH

COPY ./$INIT_DUAN_DATABASE $WORK_PATH/
COPY ./$INSTALL_DATA_SHELL $AUTO_RUN_DIR/

ADD mysqld.cnf /etc/mysql/mysql.conf.d/

RUN chmod a+x $AUTO_RUN_DIR/$INSTALL_DATA_SHELL
