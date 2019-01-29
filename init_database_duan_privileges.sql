use mysql;
show variables like "%case%";

select host, user from user;
create user duan identified by '1234';
grant all privileges on *.* to 'root'@'%' identified by '1234' with grant option;
grant all privileges on *.* to 'duan'@'%' identified by '1234' with grant option;
flush privileges;
