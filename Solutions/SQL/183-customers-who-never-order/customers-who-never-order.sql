/* Write your PL/SQL query statement below */
select name "Customers"
from Customers c
where id not in (select customerId
                 from Orders);