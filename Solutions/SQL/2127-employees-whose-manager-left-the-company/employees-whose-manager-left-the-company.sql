/* Write your PL/SQL query statement below */
select emp.employee_id
from employees emp
left join employees mng 
on emp.manager_id = mng.employee_id
where emp.salary<30000 and mng.employee_id is null and emp.manager_id is not null
order by emp.employee_id;