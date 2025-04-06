/* Write your PL/SQL query statement below */
select emp.employee_id "employee_id", emp.name "name", count(mng.reports_to) "reports_count", round(avg(mng.age)) "average_age"
from employees emp, employees mng
where emp.employee_id = mng.reports_to
group by emp.employee_id, emp.name
order by emp.employee_id;