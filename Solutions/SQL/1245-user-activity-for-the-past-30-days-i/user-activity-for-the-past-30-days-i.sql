/* Write your PL/SQL query statement below */
select to_char(activity_date) "day", count(distinct user_id) "active_users"
from activity
where activity_date between to_date('2019-07-27', 'YYYY-MM-DD') - 29 and to_date('2019-07-27', 'YYYY-MM-DD')
group by activity_date;