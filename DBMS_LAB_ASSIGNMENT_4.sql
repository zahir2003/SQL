use DBMS_1;
select concat(Fname,"  ",Iname) as Customer_Name from cust;

select *from Cust;

select Fname,Area from Cust;

select distinct Type from Movie;

select concat("The Invoice No of Customer id ",Cust_id,"is",Inv_No,"and Movie No is",Mv_No,"  ",Cust_id,"has taken Movie No.",Mv_No,"on",
Issue_date,"and will return on",Return_date) as Customer_Information from Invoice;

update Cust set Phone_No=466389
where Cust_id='a03';

select *from Cust;

update Invoice set Issue_date='1993-07-24'
where Cust_Id='a01';

select *from Invoice;

update Movie set PRICE=250.00
where MV_No='9';

select *from Movie;

delete from Invoice
where Inv_No='i08';

select *from Invoice;

set sql_SAFE_UPDATES=0;

delete from Invoice 
where Return_date<'1993-07-10';

select *from Invoice;