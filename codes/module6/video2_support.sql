/* use windows database*/

select * from commissions
limit 5;

select 
commissions.date,
salesperson_id as sp,
commision_id as id,
commision_amount as amount,
sum(commision_amount)
over (
PARTITION by salesperson_id
order by date(commissions.date)
rows between UNBOUNDED PRECEDING and CURRENT row
) as running_tot
from commissions
order by sp,date(commissions.date)


select 
commissions.date,
salesperson_id ,
commision_id,
commision_amount ,
sum(commision_amount)
over (
PARTITION by salesperson_id
order by date(commissions.date)
) as total
from commissions
order by salesperson_id,date(commissions.date)

select 
commissions.date,
salesperson_id ,
commision_id ,
commision_amount 
from commissions
limit 5;

select Education,
Income
from marketing;

/*ranking functions*/
select * from(
	select 
	Education,
	Income,
	dense_rank() over 
	(PARTITION by Education
	order by Income desc) as income_rank
	from marketing
) where income_rank<=3

/*lead/lag*/
select *,
lead(sold) over 
(
PARTITION by fruit
order by date(month)) as next
FROM
fruitmart


select *,
lag(sold) over 
(
PARTITION by fruit
order by date(month)) as previous
FROM
fruitmart