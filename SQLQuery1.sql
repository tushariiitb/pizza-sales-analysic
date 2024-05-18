select SUM(total_price) as Total_revenue from pizza_sales;
select (sum(total_price)/COUNT(Distinct order_id)) as Avrage_order_value from pizza_sales;

select sum(quantity) as number_of_pizza_soldes from pizza_sales;

select count(DISTINCT order_id) as Total_order_Place from pizza_sales;

select cast(cast(sum(quantity) as decimal(10,2))/cast(count(DISTINCT order_id) as decimal(10,2)) as decimal(10,2)) as Avg_number_of_pizza_per_order 
from pizza_sales;


select  DATENAME(DW,order_date) as order_day,
count(Distinct order_id) as total_order 
from pizza_sales
group by DATENAME(DW,order_date);

select  DATENAME(month,order_date) as month_name,
count(Distinct order_id) as total_order 
from pizza_sales
group by DATENAME(month,order_date)
order by total_order desc;

select pizza_category,sum(total_price)*100/(select sum(total_price) from pizza_sales)
as total_sales
from pizza_sales
group by pizza_category;


select pizza_category,sum(total_price)as total_sales,sum(total_price)*100/(select sum(total_price) from pizza_sales where month(order_date)=1)
as pct
from pizza_sales
where month(order_date)=1
group by pizza_category;


select pizza_size,sum(total_price)as total_sales,sum(total_price)*100/(select sum(total_price) from pizza_sales)
as pct
from pizza_sales
group by pizza_size;


select top 5 pizza_name,sum(total_price) as total_ravaneu from pizza_sales
group by pizza_name
order by total_ravaneu desc;


select top 5 pizza_name,sum(total_price) as total_ravaneu from pizza_sales
group by pizza_name
order by total_ravaneu;

select top 5 pizza_name,sum(quantity) as quantity from pizza_sales
group by pizza_name
order by quantity desc;

select top 5 pizza_name,sum(quantity) as quantity from pizza_sales
group by pizza_name
order by quantity ;




