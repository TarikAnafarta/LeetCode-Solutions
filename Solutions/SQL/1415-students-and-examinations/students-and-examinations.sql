/* Write your PL/SQL query statement below */
select stu.student_id, stu.student_name, s.subject_name, count(e.subject_name) attended_exams
from students stu
cross join subjects s
left join examinations e
on e.student_id = stu.student_id and e.subject_name = s.subject_name
group by stu.student_id, s.subject_name, stu.student_name
order by stu.student_id, s.subject_name