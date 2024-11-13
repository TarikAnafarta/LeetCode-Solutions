/* Write your PL/SQL query statement below */
select emp.name "Employee"
from Employee emp, Employee mng
where emp.managerId = mng.id and emp.salary > mng.salary;
