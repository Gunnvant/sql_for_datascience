/*using case statement */
select * from Track
limit 5;

/*bin the  duration of song into 3 categories, low, medium and high*/
select DISTINCT(Milliseconds) as milis from Track
order by milis desc;

select DISTINCT(Milliseconds/60000) as minutes from Track
order by minutes desc;

/* bin the data into buckets, duration of more than 50 mins is high, between 49 and 25 its medium else its low*/

select (Milliseconds/60000) as minutes, 
case 
when (Milliseconds/60000) >50 THEN "high"
when (Milliseconds/60000)<25 then "low"
ELSE "medium"
end 
as duration_bins
from track
order by minutes desc
