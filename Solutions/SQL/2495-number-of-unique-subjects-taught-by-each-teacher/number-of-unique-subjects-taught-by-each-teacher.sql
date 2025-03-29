/* Write your PL/SQL query statement below */
select unique teacher_id, count(unique subject_id) cnt
from teacher
group by teacher_id;