#!/bin/bash
mysql -uroot -p$MYSQL_ROOT_PASSWORD <<EOF
source /usr/local/work/init_database_duan.sql;