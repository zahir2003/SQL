create database exam;

use exam;

create table Cust(
cust_id varchar(4) primary key,
name varchar(15),
area varchar(4),
phone_no double
);

create table Movie(
mv_no varchar(4),
title varchar(40),
type varchar(15),
price float(8,2)
);

create table Invoice(
inv_no varchar(4),
mv_no varchar(4),
cust_id varchar(4)
);

insert into Cust
(cust_id,name,area,phone_no)
values
("c01","Suman","CSE",6125467),
("c02","Bipul","ME",null),
("c03","Prasanta","EE",4563891),
("c04","Bisal","IT",6125401),
("c05","Ratan","CE",null),
("c06","Sauvik","ECE",5125274);

insert into Movie
(mv_no,title,type,price)
values
("m01","Bloody Vengeance","Action",180.95),
("m02","The Firm","Thriller",200.00),
("m03","Pretty Woman","Romance",150.55),
("m04","Home Alone","Comedy",150.00),
("m05","The Fugitive","Thriller",200.00),
("m06","Coma","Suspence",100.00),
("m07","Dracula","Horror",150.25),
("m08","Quick Change","Comedy",100.00),
("m09","Gone with the wind","Drama",200.00),
("m10","Carry on doctor","Comedy",100.00);

insert into Invoice
(inv_no,mv_no,cust_id)
values
("i01","m04","c01"),
("i02","m03","c02"),
("i03","m01","c02"),
("i04","m06","c03"),
("i05","m07","c04"),
("i06","m02","c06"),
("i07","m09","c05"),
("i08","m09","c01"),
("i09","m05","c03"),
("i10","m08","c06");

select *from Cust;

select *from Movie;

select *from Invoice;

select name,area from Cust where name like ('_a%');

select type,count(type) from Movie group by type;

select count(cust_id) from Cust; 

select MAX(price) from Movie where price IN (select MAX(price) from Movie where price NOT IN (select MAX(price) from Movie));

select concat(MIN(price)) as Min_price,concat(MAX(price)) as Max_price from Movie;
 
 select phone_no,cust_id from Cust where Cust_id In(select Cust_id from Invoice where inv_no in(select inv_no from Movie where price IN(select MAX(price) from Movie)));