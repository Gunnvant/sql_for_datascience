/* use the databas window*/
select * from marketing
limit 5;

select Education, Income
from marketing
limit 5;

/* ranking functions */
select Education, Income,
row_number() over (
PARTITION by Education Order by Income desc)
as rank1
from marketing;

select Education, Income,
row_number() over (
PARTITION by Education order by Income)
as rank1
from marketing;

select Education, Income,
row_number() over (
PARTITION by Education)
as rank1
from marketing;

/* use rank functon */

select Education, Income,
rank() over (
PARTITION by Education ORDER By Income)
as rank1
from marketing;

select Education, Income,
rank() over (
PARTITION by Education ORDER By Income desc)
as rank1
from marketing;

/* dense rank */

select Education, Income,
dense_rank() over (
PARTITION by Education ORDER By Income)
as rank1
from marketing;

select Education, Income,
dense_rank() over (
PARTITION by Education ORDER By Income desc)
as rank1
from marketing;
