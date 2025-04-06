/* Write your PL/SQL query statement below */
select machine_id, 
       round(avg(end_time - start_time), 3) "processing_time"
from (
    select machine_id, process_id,
           max(case when activity_type = 'end' then timestamp end) as end_time,
           min(case when activity_type = 'start' then timestamp end) as start_time
    from activity
    group by machine_id, process_id
) durations  
group by machine_id;