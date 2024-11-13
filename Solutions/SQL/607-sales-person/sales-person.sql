/* Write your PL/SQL query statement below */
select name
from SalesPerson
where sales_id not in (select sales_id
                       from Orders o
                       join Company c
                       using (com_id)
                       where name = 'RED');