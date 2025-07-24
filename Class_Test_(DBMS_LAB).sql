create database Class_test;
use Class_test;

create table Employee(
E_ID varchar(5),
Name varchar(20),
Designation varchar(14),
Branch varchar(15),
Salary float(8,2)
);

create table Bank(
B_ID varchar(5),
E_ID varchar(5),
Cust_Name varchar(20),
Acc_No double,
Balance float(8,2),
Cust_Branch varchar(15)
);

alter table Bank
modify Balance float(12,2); 

select *from Employee;

select *from Bank;

insert into Employee
(E_ID,Name,Designation,Branch,Salary)
values
("E101","Santosh Kumar","Manager","Chennai",80000.00),
("E102","Ram Saha","Supervisor","Madurai",75000.00),
("E103","Hari Agrawal","Assistant","Trichy",70000.00),
("E104","Tarun Purakit","Clerk","Kolkata",60000.00),
("E105","Suman saw","Clerk","New Delhi",72000.00),
("E106","Rahit Taran","Manager","Hyderabad",82000.00),
("E107","Pritam Samadar","Supervisor","Kantar",76000.00),
("E108","Sayan Sikdar","Manager","Bandura",85000.00),
("E109","Priyam Sarkar","Clerk","Madurai",60000.00),
("E110","Saikat Basu","Assistant","Trichy",72000.00);

insert into Bank
(B_ID,E_ID,Cust_Name,Acc_No,Balance,Cust_Branch)
values
("B201","E101","Sunam saha",123565,802587.00,"New Delhi"),
("B202","E102","Rohit Sarma",123566,470216.58,"Hyderabad"),
("B203","E102","Drone Guin",123567,520364.25,"Kolkata"),
("B204","E104","Arnab Bara",123568,25000.00,"Hyderabad"),
("B205","E105","Priyanka Roy",123569,4500.32,"Kantar"),
("B206","E109","Tuna Ganguly",234456,98324.23,"Bandura"),
("B207","E107","Priyam Samata",234561,4598.02,"Madurai"),
("B208","E108","Tapu Sikder",234452,4578956.90,"Trichy"),
("B209","E109","Pranto Queen",234453,780213.25,"Mumbai"),
("B210","E106","Ashata Agrawal",234454,8767036.26,"Durgapur");

select Name,Designation from Employee where salary>70000.00;

select *from Bank where Cust_Name like ('A%');

select count(Cust_Name) from Bank where Cust_Name like ('%a%');

select Employee.*from Employee,Bank where Employee.E_ID=Bank.E_ID and Bank.B_ID="B202";

select Cust_Name from Bank where Balance=(select max(Balance) from Bank);

select Designation,sum(Salary) from Employee group by Designation;

select Employee.Name,Bank.Cust_Name from Employee,Bank where Employee.Branch=Bank.Cust_Branch;

select Cust_Branch from Bank group by Cust_Branch having count(Cust_Branch);

select Cust_Name,Balance from Bank order by Acc_No DESC;

select Bank.Cust_Name,Employee.Name,Bank.Balance from Bank,Employee where Employee.E_ID=Bank.E_ID and Employee.Name="Ram Saha";