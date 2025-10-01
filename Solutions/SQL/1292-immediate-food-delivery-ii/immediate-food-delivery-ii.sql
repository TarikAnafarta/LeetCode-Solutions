# Write your MySQL query statement below
select round(sum(order_date = customer_pref_delivery_date)/count(*)*100, 2)"immediate_percentage"
from delivery d
where order_date=(select min(order_date) from delivery where customer_id = d.customer_id);