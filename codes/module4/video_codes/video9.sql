/* use where clauses */
select count(*) from film
where rating=="G";

/* lets use the groupby clause*/
select * from film
limit 5;

select rating, count(rating) from film
group by rating;

select rating, count(rating) as cnt from film
group by rating;

/* we can now sort the values */
select rating, count(rating) as cnt from film
group by rating
order by cnt;

select rating, count(rating) as cnt from film
group by rating
order by cnt desc;
