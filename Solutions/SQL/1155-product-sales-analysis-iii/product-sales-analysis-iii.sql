/* Write your PL/SQL query statement below */
select s.product_id, s.year as first_year, s.quantity, s.price
from sales s
join (
    select product_id, MIN(year) as first_year
    from sales
    group by product_id
) t
on s.product_id = t.product_id and s.year = t.first_year;
