/* using database example.db */
select * from sales
limit 5;

/* distinct values in kind_of_business*/
select DISTINCT( kind_of_business)
from sales
/* add year information */
select *, cast(strftime("%Y",sales_month)  as INTEGER)as year from sales
limit 5;

/* now write the groupby query */
select cast(strftime("%Y",sales_month)  as INTEGER)  as year ,
sum(sales) as tot_sales
from sales
group by year
order by year

/* now modify this logic to include a where clause*/

with sub_table as (
select *, cast(strftime("%Y",sales_month)  as INTEGER)  as Year
from sales 
where kind_of_business="Men's clothing stores"
)
select Year, sum(sales) as tot_sales
from sub_table
group by Year
order by Year 