/* Exporing the data*/
select * from film
limit 5;
/* Now lets look at the unique values in the rating column */
select DISTINCT(rating) from film;
