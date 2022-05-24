/* Use window db */
select * from commissions
limit 5;

/* Define aggregate function */
select sum(commision_amount) from commissions

/* find commission by each agen */
select salesperson_id, sum(commision_amount) as amount
from commissions
group by salesperson_id
order by amount desc

/* We want to see the total commiission along with daily commission */
/* use over to add a new column */
select *,
sum(commision_amount) over() as total from commissions;

/* define window further */
select *,
sum(commision_amount) over(PARTITION by salesperson_id) as total from commissions;

/*order the results in a specific order */
select *,
sum(commision_amount) over(PARTITION by salesperson_id) as total from commissions
order by salesperson_id desc;
