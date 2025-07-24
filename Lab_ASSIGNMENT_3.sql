create database CSE;
use CSE;
create table CUSTOMERS(
CUST_ID varchar(30) primary key,
NAME varchar(50),
AGE int not null,
ADDRESS varchar(40),
SALARY float(10,2) not null
);

create table SHIPMENT(
SHIPMENT_NO varchar(20) primary key,
CUST_ID varchar(30),
WEIGHT int not null,
SMART_CITY varchar(40)
);

insert into CUSTOMERS
(CUST_ID,NAME,AGE,ADDRESS,SALARY)
values
("C001","Ramesh",32,"Ahmedabad",12000.00),
("C002","Khilan",25,"Delhi",14500.00),
("C003","Kaushik",23,"KOTA",18000.00),
("C004","Muffy",25,"Mumbai",15000.00);

insert into SHIPMENT
(SHIPMENT_NO,CUST_ID,WEIGHT,SMART_CITY)
values
("S201","C001",120,"Indore"),
("S202","C002",210,"Kolkata"),
("S203","C003",320,"Mumbai");
select *from CUSTOMERS;
select *from SHIPMENT;

update SHIPMENT set SMART_CITY='Kolkata'
where SHIPMENT_NO='S203' and CUST_ID='C003';

select *from SHIPMENT;
select *from CUSTOMERS;

update CUSTOMERS set SALARY=13000.00
where CUST_ID='C001';
select *from CUSTOMERS;
select *from SHIPMENT;
delete from CUSTOMERS where CUST_ID='C001';
select *from CUSTOMERS;