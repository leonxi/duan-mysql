create database duan default character set utf8 collate utf8_general_ci;
create user 'duan'@'%' identified by '1234';
grant all privileges on *.* to 'duan'@'%' identified by '1234' with grant option;
flush privileges;
