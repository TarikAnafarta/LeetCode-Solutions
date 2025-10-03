# Write your MySQL query statement below
select
    round(count(distinct a.player_id) / count(*), 2) "fraction"
from (
    select player_id, min(event_date) as first_login
    from activity
    group by player_id
) b
left join activity a
    on a.player_id = b.player_id
    and a.event_date = date_add(b.first_login, interval 1 day);