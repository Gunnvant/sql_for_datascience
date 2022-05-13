/*Use the table named customer from the database music.db and find out how many customers are from Canada?*/
select count(*) from Customer
where country =="Brazil";
/*Use the table named Track. Bin the price column using the following rule:
If unit price =0.99 then mark the entry as “retail” else “premium”*/
select
case 
when UnitPrice==0.99 then "retail"
else "premium"
end as bins,
count (case 
when UnitPrice==0.99 then "retail"
else "premium"
end) as cnt
from track
group by bins;
/* Use the table Customers, from the database music,db find out how many customers are from USA and states CA and WA*/
select Country,State, count(*) as cnt from Customer
group by Country, State 
having State in ("CA","WA")
ORDER by cnt desc;


