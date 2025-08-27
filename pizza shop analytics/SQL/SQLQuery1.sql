select*from pizza_sales

select datename(dw, order_date) as order_day, count (distinct order_id) as Total_orders
from pizza_sales 
group by  datename(dw, order_date)

select datename(month, order_date) as month_name,count(distinct order_id) as Total_orders from pizza_sales
group by datename(month, order_date)
order by Total_orders DESC 

