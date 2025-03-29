/* Write your PL/SQL query statement below */
select max(num) "num"
from mynumbers
where num in (
    select num
    from mynumbers
    group by num
    having count(num) = 1);