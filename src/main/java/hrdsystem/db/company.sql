drop database if exists HRDsystem;
create database HRDsystem;
use HRDsystem;

drop table if exists dept;
create table dept(
dno int auto_increment,
dname varchar(10) unique,
dphone varchar(15) unique,
primary key(dno)
);

drop table if exists person;
create table person(
pno int auto_increment,
name varchar(10),
phone varchar(15) unique,
position varchar(10),
dno int,
foreign key(dno) references dept(dno),
primary key(pno)
);

insert into dept (dname,dphone) values('인사과','02-1234-5678');
select * from dept;
