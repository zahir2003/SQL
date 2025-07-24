use DBMS_1;
update Cust set Area='vs'
where Cust_id='a05';
select *from Cust; 

insert into Invoice
(Inv_No,Mv_No,Cust_Id,Issue_date,Return_date)
values
("i08","9","a01","1993-08-11","1993-08-14");

select Return_date from Invoice;

update Invoice set Return_date='1993-08-16'
where Inv_No='i08';

select Return_date from Invoice;

select *from Cust where Fname like ('_a%');

select *from Cust where Iname like('s%') or Iname like ('j%');

select Area from Cust where Area like ('_a%');

select *from Cust where Area like ('da%') or Area like ('mu%') or Area like ('gh%');

select *from Cust where Phone_No>5550000;

select *from Invoice where Issue_date between ('1993-09-01') AND  ('1993-09-30');

select *from Invoice;

desc Invoice;

select *from Invoice where Cust_Id like ('a01') or Cust_Id like('a03');

select *from Movie where Type like ('Action') or Type like ('Comedy');