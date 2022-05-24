/*using northwind database*/

select * from order;

select * from "order";

with order_mod as (select * from "order")
select * from order_mod;

select * from product;
