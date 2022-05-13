/* Order data */
/* find out the top 5 transactions by value */
select * from Invoice
order by total DESC
LIMIT 5;

/* Multiple sorts  */
/* find the 10 most expensive songs that have the least length possible*/
select * from Track
order by UnitPrice desc, Milliseconds asc 
limit 5;
