/* use window database */
select * from fruitmart
limit 5;

/* using sum() as a window function */
select * ,
sum(sold) over (PARTITION BY fruit, date(month)
order by date(month)
) as total
from fruitmart

/* defining the frame*/
select * ,
sum(sold) over (PARTITION BY fruit, date(month)
order by date(month)
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
) as running_total
from fruitmart

/* we can change the frame definition */
select * ,
sum(sold) over (PARTITION BY fruit, date(month)
order by date(month)
ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
) as moving_total
from fruitmart