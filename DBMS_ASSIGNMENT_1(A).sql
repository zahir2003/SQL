use DBMS_1;

 create table Employee(
 Id varchar(5),
 Name varchar(20),
 City varchar(10),
 Phone_No int,
 Salary float(8,2)
 ); 
 
 insert into Employee
 (Id,Name,City,Phone_no,Salary)
 values
 ("E101","Tamal Saha","Kolkata",83522151,32000.00),
 ("E102","Rohit Sen","Delhi",null,35000.00),
 ("E103","Kunal Sen","Durgapur",62934261,42000.00),
 ("E104","Ruma Pal","Kolkata",93428641,35050.00),
 ("E105","Souvik Roy","Bangalore",62426456,41000.00),
 ("E106","Rajkumar","Delhi",94328614,43000.00),
 ("E107","Probal Sem","Durgapur",92315612,36000.00);
 
 select *from Employee;