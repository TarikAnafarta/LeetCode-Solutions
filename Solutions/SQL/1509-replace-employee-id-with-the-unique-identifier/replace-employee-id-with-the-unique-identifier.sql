/* Write your PL/SQL query statement below */
select unique_id, name 
from Employees
left join EmployeeUNI 
using (id);