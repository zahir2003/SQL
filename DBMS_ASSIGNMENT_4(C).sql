use DBMS_1;

select *from movie where PRICE>150 AND PRICE<=200;

select concat(PRICE*15) as NEW_PRICE from MOVIE
where PRICE>150;

select *from MOVIE ORDER BY Title;

select Type,Title  from MOVIE where Type<>"Horror";

select *,concat(PRICE-100) as NEW_PRICE from Movie where Title="Home Alone";

select Cust_id,Iname,Fname,Area from Cust;

select concat(Fname) as Name from Cust;

select Mv_No,Title,Type from Movie where Star like ('m%');

select Inv_No,Mv_No from Invoice where Inv_No<'i05';