/*using northwind database*/
with order_mod
as (select * from "order")
select order_mod.ShipCity, count(*) as cnt
from OrderDetail 
left join product
on OrderDetail.ProductId = Product.id
left join order_mod
on order_mod.Id = OrderDetail.OrderId 
where ProductName='Camembert Pierrot'
group by ShipCity order by cnt desc;