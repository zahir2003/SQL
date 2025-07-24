create database DBMS_1;
use DBMS_1;
desc Cust;
create table Cust(
Cust_id varchar(3) primary key,
Iname varchar(15),
Fname varchar(15),
Area varchar(2),
Phone_No int(8)
);

create table Movie(
Mv_No varchar(2) primary key,
Title varchar(25),
Type varchar(10),
Star varchar(25)
);

create table Invoice(
Inv_No varchar(3) primary key,
Mv_No varchar(2),
Cust_Id varchar(3),
Issue_date date,
Return_date date
);

alter table Invoice
add foreign key(Cust_id) references Cust(Cust_id); 

alter table Invoice
add foreign key(Mv_No) references Movie(Mv_No);

alter table Cust
modify column Fname varchar(5) NOT NULL;

alter table Movie
modify column Title varchar(25);

alter table Movie
modify column Type varchar(10);

alter table Movie
add PRICE float(8,2);

alter table Cust
modify Fname varchar(15);

insert into Cust
(Cust_id,Iname,Fname,Area,Phone_No)
values
("a01","Bayross","Ivan","sa",6125467),
("a02","Saitwal","Vandana","mu",5560379),
("a03","Jaguste","Pramada","da",4563891),
("a04","Navingdgi","Basu","ba",6125401),
("a05","Sreedharan","Ravi","va",NULL),
("a06",NULL,"Rukmini","gh",5125274);

insert into Movie
(Mv_No,Title,Type,Star,PRICE)
values
("1","Bloody Vengeance","Action","Jackie Chan",180.95),
("2","The Firm","Thriller","Tom Cruise",200.00),
("3","Pretty Woman","Romance","Richard gere",150.55),
("4","Home Alone","Comedy","Macaulay Culkin",150.00),
("5","The Fugitive","Thriller","Harisson Ford",200.00),
("6","Coma","Suspense","Michael Douglas",100.00),
("7","Dracula","Horror","Gary Oldman",150.25),
("8","Quick Change","Comedy","Bill Murray",100.00),
("9","Gone With the Wind","Drama","Clarke Gable",200.00),
("10","Carry on Doctor","Comedy","Leslie Phillips",100.00);

insert into Invoice
(Inv_No,Mv_No,Cust_Id,Issue_date,Return_date)
values
("i01","4","a01","1993-07-23","1993-07-25"),
("i02","3","a02","1993-08-12","1993-08-15"),
("i03","1","a02","1993-08-15","1993-08-18"),
("i04","6","a03","1993-09-10","1993-09-12"),
("i05","7","a04","1993-08-05","1993-08-08"),
("i06","2","a06","1993-09-18","1993-09-21"),
("i07","9","a05","1993-07-07","1993-07-10"),
("i08","9","a01","1993-08-11","1993-08-14"),
("i09","5","a03","1993-07-06","1993-07-07"),
("i10","8","a06","1993-09-03","1993-09-06");

select *from Cust;
select *from Movie;
select *from Invoice;
select Return_date from Invoice;
select date_format(Issue_date,"%d/%m/%Y") as Issue_date from Invoice;