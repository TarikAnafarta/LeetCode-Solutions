/* Write your PL/SQL query statement below */
select s.user_id as "user_id", NVL(
    ROUND(
      SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END)
      / NULLIF(COUNT(c.action), 0), 2), 0) as "confirmation_rate"
from signups s
left join confirmations c
on s.user_id = c.user_id
group by s.user_id;