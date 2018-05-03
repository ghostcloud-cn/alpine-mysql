create database ghostcloud_db;
use ghostcloud_db;
create table settings(
    name varchar(10),
    value varchar(100)
);
insert into settings values('vendor','ghostcloud');