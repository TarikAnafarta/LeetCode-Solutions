/* Write your PL/SQL query statement below */
select contest_id, round(count(distinct user_id) * 100 / (select count(user_id) from users), 2) "percentage"
from register
group by contest_id
order by 2 desc, contest_id;