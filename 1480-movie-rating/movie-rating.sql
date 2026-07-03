# Write your MySQL query statement below
(
    select u.name as results
    from users u
    join movierating m on u.user_id = m.user_id
    group by u.user_id
    order by count(*) desc, u.name asc
    limit 1
)
union all
(
    select mov.title as results
    from movies mov
    join movierating m on mov.movie_id = m.movie_id
    where date_format(m.created_at, '%Y-%m') = '2020-02'
    group by mov.movie_id
    order by avg(m.rating) desc, mov.title asc
    limit 1
);