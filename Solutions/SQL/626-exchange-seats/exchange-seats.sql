# Write your MySQL query statement below
select 
    CASE
        WHEN id % 2 = 0 THEN id - 1
        WHEN id % 2 = 1 AND id + 1 <= (select count(*) from seat) THEN id + 1
        ELSE id END "id",
    student
from seat
order by id;