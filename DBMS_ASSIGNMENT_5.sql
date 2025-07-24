use DBMS_1;
select PRICE, SQRT(PRICE) as square_root from Movie; 

select count(Cust_id) from Cust;

select sum(PRICE) from Movie;

select avg(PRICE) from Movie;

select concat(MIN(PRICE)) as Min_price ,concat(MAX(PRICE)) as Max_price from Movie;

select count(PRICE) from Movie where PRICE>=150;

select type,avg(PRICE) from Movie group by type;

select type,count(type) from Movie group by type;

select type,count(type) from Movie group by type having type in("comedy","thriller");

select type,concat(round(avg(PRICE),2)) from Movie group by type having avg(PRICE<=150);