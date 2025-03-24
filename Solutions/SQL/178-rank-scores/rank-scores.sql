/* Write your PL/SQL query statement below */
select score, DENSE_RANK() OVER (ORDER BY score desc) "rank"
from Scores;