/* use example.db */

select * from sales
limit 5;

/* Distinct Values in kind of business column */
select DISTINCT(kind_of_business) from sales;

/* Sales by different categories over time */

select DISTINCT(strftime("%Y", sales_month))  as years from sales;