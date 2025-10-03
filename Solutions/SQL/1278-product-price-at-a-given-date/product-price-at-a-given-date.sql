# Write your MySQL query statement below
select p.product_id,
       case when q.new_price is null then 10 else q.new_price end as price
from products p
left join products q
  on p.product_id = q.product_id
 and q.change_date = (
       select max(change_date)
       from products
       where product_id = p.product_id
         and change_date <= '2019-08-16'
 )
group by p.product_id;
