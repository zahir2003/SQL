use DBMS_1;

select *from Cust;

select *from Movie;

select Cust.Fname,invoice.Mv_No from Cust,Invoice where Cust.Fname='Ivan' and Cust.Cust_id=Invoice.Cust_Id;

select concat(Cust.Fname,' ',Cust.Iname) as Name,invoice.Mv_No from Cust,Invoice where Cust.Cust_id=Invoice.Cust_Id;

select Movie.Title,Invoice.Cust_Id,Invoice.Mv_No from Movie,Invoice where Movie.Mv_No=Invoice.Mv_No;

select Movie.Title,Movie.Type from Movie,Cust,invoice where Cust.Fname='Vandana'  and  Invoice.Mv_No=Movie.Mv_No and Cust.Cust_id=Invoice.Cust_Id;

select concat(Cust.Fname,' ',Cust.Iname) as Name,Movie.Type from Cust,Movie,Invoice where Movie.Type='Drama' and Invoice.Mv_No=Movie.Mv_No and Invoice.Cust_id=Cust.Cust_Id;

select concat("The movie is taken by ",Cust.Fname,' ',Cust.Iname," is ",Movie.Title,' ') as info from Cust,Movie,Invoice where Cust.Cust_id=Invoice.Cust_Id and Movie.Mv_No=Invoice.Mv_No and Movie.Mv_No>='3'; 

select concat(Cust.Fname," ",Cust.Iname) as Name from Cust,Invoice where Cust.Cust_id=Invoice.Cust_Id and Invoice.Mv_No="9";

select Cust.Fname,Cust.Iname,Cust.Area from Cust,Invoice where Cust.Cust_id=Invoice.Cust_Id and Inv_No="i10";

select Cust.Fname,Cust.Iname,Cust.Phone_No from Cust,Invoice where Cust.Cust_id=Invoice.Cust_Id and date_format(Invoice.Issue_date,"%m")>8;
 
select Movie.Title from Cust,Movie,Invoice where Cust.Fname in ("Vandana","Ivan") and Cust.Cust_id=Invoice.Cust_Id and Invoice.Mv_No=Movie.Mv_No;

select distinct Movie.Mv_No,Movie.Title from Cust,Invoice,Movie where Cust.Cust_id=Invoice.Cust_Id and Invoice.Mv_No=Movie.Mv_No order by Movie.Mv_No;

select Movie.Type,Movie.Mv_No from Cust,Invoice,Movie where Invoice.Cust_Id in ("a01","a02") and Invoice.Mv_No=Movie.Mv_No;

select Invoice.Cust_Id from Movie,Invoice where Invoice.Mv_No=Movie.Mv_No and Movie.Star="Tom Cruise";

select distinct Cust.Fname,Cust.Iname from Cust,Invoice,Movie where Cust.Cust_id=Invoice.Cust_Id and Invoice.Mv_NO=Movie.Mv_No;

select Fname,Iname from Cust where Cust_id not in (select distinct Cust.Cust_id from Cust,Invoice,Movie where Cust.Cust_id=Invoice.Cust_Id and Invoice.Mv_No=Movie.Mv_No); 