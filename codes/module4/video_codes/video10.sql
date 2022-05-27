/* extract the weekday data from date column */
select payment_date, strftime("%w", payment_date) from payment
limit 5;
/* Bucket the data into weekday and weekend*/
select payment_date, strftime("%w", payment_date) as dayweek,
case 
when cast(strftime("%w", payment_date)  as INTEGER)< 5 then "weekday"
else "weekend"
end as week_end_ind
from payment;
/*Do a group by on the converted column and the count */
select  
case 
when cast(strftime("%w", payment_date)  as INTEGER) in (1,2,3,4,5) then "weekday"
else "weekend"
end as week_end_ind, count(*) as cnt
from payment
group by week_end_ind