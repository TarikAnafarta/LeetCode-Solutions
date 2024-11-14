/* Write your PL/SQL query statement below */
select Department.name "Department", Employee.name "Employee", Employee.salary "Salary"
from Employee
join Department
on (Employee.departmentId = Department.id)
where (departmentId,salary) in (select departmentId, max(salary)
                 from Employee
                 group by departmentId);