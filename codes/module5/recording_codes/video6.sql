select * from transactions
limit 5;

select city, sum(amount) as total
from transactions
group by city
order by total desc

with aggregated_data as(
select city, sum(amount) as total
from transactions
group by city
order by total desc
)
select*,
CASE
	when total > 25000 then "high"
	when total < 5000 then "low"
	else "medium"
end as total_bins
 from aggregated_data