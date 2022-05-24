/* using farmers db*/
select * from product limit 5;

select * from product_category limit 5;

/* now lets imagine we want to check the product_category_name 
for all the products in product table*/

select * from 
product 
left join product_category on 
product.product_category_id = product_category.product_category_id

/* lets assume we wanted to do an inner join? below is how we will do the join */
select * from 
product 
inner join product_category on 
product.product_category_id = product_category.product_category_id

/* if we want to make sure all the rows of the product_category 
table are shown then we can do a left join with product_category as thel left
table */

select * from 
product_category 
inner join product on 
product_category.product_category_id = product.product_category_id

/* Once we join tables we can do still use the where and GROUP BY clauses
*/

select product.product_name , product_category.product_category_name
from product
left join product_category 
on product.product_category_id = product_category.product_category_id
where product_category.product_category_name<>"Packaged Pantry Goods"

/* Example group by */

select 
product_category.product_category_name ,
count(product_category.product_category_name) as cnt
from product
left join product_category 
on product.product_category_id = product_category.product_category_id
where product_category.product_category_name<>"Packaged Pantry Goods"
GROUP BY product_category.product_category_name
order by cnt desc;
