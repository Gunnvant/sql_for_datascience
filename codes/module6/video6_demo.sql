/* use the databsae called window */
select * from fruitmart
limit 5;

/* use lag to create an intermediate view*/
select *,
lag(sold) over (
PARTITION by fruit, date(month)
order by date(month)
) as previous 
from fruitmart

with lagged_table as (
select *,
lag(sold) over (
PARTITION by fruit, date(month)
order by date(month)
) as previous 
from fruitmart
)
select *, (previous-sold)/sold  as perc_change from lagged_table;

/* improve the float handling */
with lagged_table as (
select *,
lag(sold) over (
PARTITION by fruit, date(month)
order by date(month)
) as previous 
from fruitmart
)
select *, cast((previous-sold) as Real)/cast(sold as REAL) as perc_change from lagged_table;

/* making it even better*/
with lagged_table as (
select *,
lag(sold) over (
PARTITION by fruit, date(month)
order by date(month)
) as previous 
from fruitmart
)
select *, round(cast((previous-sold) as Real)/cast(sold as REAL), 3) as perc_change from lagged_table;
