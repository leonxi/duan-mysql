FROM mysql:5.7
MAINTAINER leon_xi@163.com

#设置免密登录
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

#将所需文件放到容器中
COPY setup.sh /mysql/setup.sh
COPY init_database_duan.sql /mysql/init_database_duan.sql
COPY init_database_duan_privileges.sql /mysql/init_database_duan_privileges.sql

RUN chmod +x /mysql/setup.sh

ADD mysqld.cnf /etc/mysql/mysql.conf.d/

#设置容器启动时执行的命令
CMD ["sh", "/mysql/setup.sh"]
