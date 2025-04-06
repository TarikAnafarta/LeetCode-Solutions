/* Write your PL/SQL query statement below */
select product_name, sum(unit) "unit"
from products p
join orders o
using (product_id)
where to_char(order_date) like '2020-02-%'
group by product_name
having sum(unit) >= 100;