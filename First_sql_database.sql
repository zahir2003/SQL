create database college;
use college;
create table student(
Roll int primary key,
Name varchar(50),
Age int not null
);
create table school(
Roll int primary key,
Name varchar(50),
Age int not null
);
insert into student
(Roll,Name,Age)
values
(1,"Zahir",20),
(2,"Thomas",30),
(3,"Thomas",30),
(4,"Thomas",30);

insert into school
(Roll,Name,Age)
values
(5,"Zahir",20),
(6,"Thomas",30),
(7,"Arthur",33),
(8,"John",28);
select *from school;
select *from student;



