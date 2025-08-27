select*from pizza_sales

select pizza_category,sum(total_price) as total_sales, 
sum(Total_price)*100/ (select sum(Total_price) from pizza_sales where month (order_date) = 1) as PCT -- Percentage of total sales  
from pizza_sales 
where month (order_date) = 1
group by pizza_category

select pizza_size, cast(sum(total_price) as decimal(10,2 )) as total_sales,
cast (sum (total_price)*100/
(select sum(Total_price) from pizza_sales where datepart (quarter, order_date)=1 ) as decimal(10,2)) as PCT -- Percentage of total sales  
from pizza_sales 
where datepart (quarter, order_date)=1 
group by pizza_size
order by pct desc