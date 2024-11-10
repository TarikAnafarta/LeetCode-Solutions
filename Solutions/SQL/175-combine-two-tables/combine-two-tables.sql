/* Write your PL/SQL query statement below */
select firstName, lastName, city, state
from Person p
left join Address a
using (personId);