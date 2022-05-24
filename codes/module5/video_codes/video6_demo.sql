/*Use transactions database*/

with grouped_data as
(select city, sum(amount) as total
from transactions
group by city)
select *,
case 
when total>25000 then "high"
when total<5000 then "low"
else "medium"
end as amount_bins
from grouped_data
