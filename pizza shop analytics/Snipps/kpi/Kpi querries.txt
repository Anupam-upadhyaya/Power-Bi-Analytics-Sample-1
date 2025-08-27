select*from pizza_sales
select SUM (total_price) Total_revenue from pizza_sales
select sum (total_price) / count (Distinct order_id) as Avg_order_value from pizza_sales
select sum (quantity) as Total_pizza_Sold  from pizza_sales
select count (distinct order_id ) as total_orders from pizza_sales
select cast(cast (sum (quantity) as decimal(10,2)) / 
cast (count(distinct order_id) as decimal(10,2)) as decimal (10,2)) as avg_pizzas_per_oder from pizza_sales 