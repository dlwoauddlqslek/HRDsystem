drop database if exists HRDsystem;
create database HRDsystem;
use HRDsystem;

drop table if exists dept;
create table dept(
dno int auto_increment,
dname varchar(10) unique,
dphone varchar(10) unique,
primary key(dno)
);

drop table if exists person;
create table person(
pno int auto_increment,
name varchar(10),
phone varchar(15),
position varchar(10),
dno int,
foreign key(dno) references dept(dno),
primary key(pno)
);

