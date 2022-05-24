select * from table1;
select * from table2

SELECT *
  FROM table1 cd
  LEFT JOIN table2
    ON cd.Company = table2.Name
   AND table2.Id IN (2728);
   
 SELECT *
  FROM table1 cd
  LEFT JOIN table2
    ON cd.Company = table2.Name
   where table2.Id IN (2728);
   
  /* Now where can And be useful? 
  */
 SELECT *,
 case when table2.Id=2728 then 1
 else 0
 end as indicator
 FROM table1 cd
 LEFT JOIN table2
 ON cd.Company = table2.Name
 AND table2.Id IN (2728);
 
 /* Imagine we want to find out  the percentage of times the id = 2728 occurs, we can now simply average up the indicator column*/
 
 SELECT 
 avg(case when table2.Id=2728 then 1
 else 0
 end) as indicator
 FROM table1 cd
 LEFT JOIN table2
 ON cd.Company = table2.Name
 AND table2.Id IN (2728);

 