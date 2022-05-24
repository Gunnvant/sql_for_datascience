/* use the window database*/
select * from fruitmart
limit 5;

/* find out the leading and lagging values */
select *,
lead(sold) over (
PARTITION by fruit order by date(month)
) as next 
from fruitmart;

select *,
lag(sold) over (
PARTITION by fruit order by date(month)
) as previous
from fruitmart;

select *,
lead(sold) over (
PARTITION by fruit order by date(month)
) as next ,
lag(sold) over (
PARTITION by fruit order by date(month)
) as previous
from fruitmart

