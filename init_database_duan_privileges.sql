use mysql;
select host, user from user;
create user duan identified by '1234';
grant all privileges on *.* to 'duan'@'%' identified by '1234' with grant option;
flush privileges;
