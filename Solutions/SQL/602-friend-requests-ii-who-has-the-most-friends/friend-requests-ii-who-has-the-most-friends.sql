# Write your MySQL query statement below
select t.id, count(distinct t.friend_id) as num
from (
    select r1.requester_id as id, r1.accepter_id as friend_id
    from RequestAccepted r1
    union
    select r2.accepter_id as id, r2.requester_id as friend_id
    from RequestAccepted r2
) t
group by t.id
order by num desc, id asc
limit 1;