/* Using northwind databse */
with order_mod
as (select * from "order")
select order_mod.ShipCity, order_mod.ShipCountry
from OrderDetail 
left join product
on OrderDetail.ProductId = Product.id
left join order_mod
on order_mod.Id = OrderDetail.OrderId 