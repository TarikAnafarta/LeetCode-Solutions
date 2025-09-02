/* Write your PL/SQL query statement below */
select TO_CHAR(trans_date, 'YYYY-MM') as "month",
    country as "country",
    count(NVL(country, 1)) as "trans_count",
    sum(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) as "approved_count",
    sum(amount) as "trans_total_amount",
    sum(CASE WHEN state = 'approved' THEN amount ELSE 0 END) as "approved_total_amount"
from transactions
group by TO_CHAR(trans_date, 'YYYY-MM'), country
order by TO_CHAR(trans_date, 'YYYY-MM')