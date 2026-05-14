select * from shipping limit(5);

-- Top 5 product category that were late for shipment

select category_name,count(*) as total_orders,
sum(late_delivery_risk) as late_orders,
round(avg(late_delivery_risk)*100,2) as late_percentage
from shipping
group by category_name
having count(*)>100
order by late_percentage desc
limit(5);

--Profit vs delivery status

select delivery_status,round(avg(order_profit_per_order)::numeric,2) as avg_profit,
round(avg(order_item_discount)::numeric,2) as avg_discount
from shipping
group by delivery_status
order by avg_profit desc;

-- late delivery risk by market

select market , sum(late_delivery_risk) as total_late_orders,
count(*) as total_orders,
round(avg(late_delivery_risk)*100,2)||'%' as late_percentage
from shipping
group by market
order by avg(late_delivery_risk) desc;

--premium shipping

select market,shipping_mode,count(*) as total_orders
,round(avg(late_delivery_risk)::numeric *100,2) as fail_rate,
round(avg(actual_delay)::numeric,2) as avg_overdue
from shipping
where shipping_mode in ('Same Day','First Class')
group by 1,2
having count(*)>50 and avg(actual_delay)>0
order by avg_overdue desc;