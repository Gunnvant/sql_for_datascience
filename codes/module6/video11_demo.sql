/* using database example.db */
select * from sales
limit 5;

/* distinct values in kind_of_business*/
select DISTINCT( kind_of_business)
from sales

with sub_table as (
select *, cast(strftime("%Y",sales_month)  as INTEGER)  as Year
from sales 
where kind_of_business="Men's clothing stores"
)
select Year, sum(sales) as tot_sales
from sub_table
group by Year
order by Year 

/* use another layer of cte */
with consolidated_table as (
	with sub_table as (
	select *, cast(strftime("%Y",sales_month)  as INTEGER)  as Year
	from sales 
	where kind_of_business="Men's clothing stores"
	)
	select Year, sum(sales) as tot_sales
	from sub_table
	group by Year
	order by Year 
)
select *,
tot_sales - lag(tot_sales) over(order by Year) as diff
 from consolidated_table
 
 /* find percentage change */
with diff_table as (
with consolidated_table as (
	with sub_table as (
	select *, cast(strftime("%Y",sales_month)  as INTEGER)  as Year
	from sales 
	where kind_of_business="Men's clothing stores"
	)
	select Year, sum(sales) as tot_sales
	from sub_table
	group by Year
	order by Year 
)
select *,
tot_sales - lag(tot_sales) over(order by Year) as diff
 from consolidated_table
)
select *, round(cast(diff as REAL)/cast(tot_sales as REAL)*100 ,2)as pct_change from diff_table;