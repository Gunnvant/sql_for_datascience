
/*Use transactions database*/
/* inner query */
select city, sum(amount) as total
from transactions
group by city
order by total desc

/* outer and inner query*/
select *, case 
when total>25000 then "high"
when total <5000 then "low"
else "medium" end as amount_bins
from (
select city, sum(amount) as total
from transactions
group by city
order by total desc
)
