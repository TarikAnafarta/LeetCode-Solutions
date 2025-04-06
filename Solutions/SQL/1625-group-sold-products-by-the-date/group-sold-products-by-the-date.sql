/* Write your PL/SQL query statement below */
select to_char(sell_date) "sell_date", count(distinct product) "num_sold", listagg(product, ',') within group (order by product) "products"
from (select distinct sell_date, product from activities)
group by sell_date
order by 1;