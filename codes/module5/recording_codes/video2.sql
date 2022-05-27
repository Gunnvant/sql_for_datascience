select * from product
limit 5;

select * from product_category
limit 5;

select * FROM
product 
left join product_category on
product.product_category_id=product_category.product_category_id

select * FROM
product 
inner join product_category on
product.product_category_id=product_category.product_category_id
where product_category.product_category_name="Packaged Prepared Food"


select product_category.product_category_name, count(product_category.product_category_name) as cnt FROM
product 
left join product_category on
product.product_category_id=product_category.product_category_id
group by product_category.product_category_name
order by cnt desc