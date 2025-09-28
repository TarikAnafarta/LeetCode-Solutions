/* Write your PL/SQL query statement below */
select d.name "Department", e.name "Employee", e.salary "Salary"
from Employee e, Department d
where e.departmentId = d.id 
and (select count(distinct e1.salary) from Employee e1
    where e1.salary > e.salary and e1.departmentId = e.departmentId) < 3;