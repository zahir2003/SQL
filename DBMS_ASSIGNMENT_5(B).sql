use DBMS_1;

select type,avg(PRICE) from Movie group by type having  type in ('Comedy','Thriller') and avg(PRICE)>=150;

select Mv_No,concat(dayname(Issue_date)) as Issue_Date from Invoice;

select Inv_No,dayname(Return_date) from Invoice;

select date_format(Issue_date,'%d-%M-%y') as Issue_date from Invoice; 

select current_date();

select current_date(),current_time();

select current_date() as Today,concat(date_add(current_date(),interval 15 day)) as After_15_days;

select datediff(current_date(), Return_date) as days from Invoice;