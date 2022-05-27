select * from table1;
select * from table2;

select * from table1 
left join table2
on table1.Company=table2.Name
where table2.Id = 2728

select * from table1 
left join table2
on table1.Company=table2.Name
and table2.Id = 2728

select *,
case 
	when table2.id = 2728 then 1
	else 0
end as indicator
from table1 
left join table2
on table1.Company=table2.Name
and table2.Id = 2728


select avg(
case 
	when table2.id = 2728 then 1
	else 0
end) as perc_2728
from table1 
left join table2
on table1.Company=table2.Name
and table2.Id = 2728
