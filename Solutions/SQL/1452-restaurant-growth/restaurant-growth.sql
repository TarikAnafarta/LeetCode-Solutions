# Write your MySQL query statement below
select
    c1.visited_on,
    sum(c2.amount) "amount",
    round(sum(c2.amount)/7, 2) "average_amount"
from (
    select visited_on, sum(amount) "amount"
    from customer
    group by visited_on
) c1
join (
    select visited_on, sum(amount) "amount"
    from customer
    group by visited_on
) c2
on c2.visited_on between date_sub(c1.visited_on, interval 6 day) and c1.visited_on
group by c1.visited_on
having count(*) = 7
order by c1.visited_on;