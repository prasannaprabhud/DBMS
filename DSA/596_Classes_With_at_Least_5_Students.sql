-- 596. Classes With at Least 5 Students
-- https://leetcode.com/problems/classes-with-at-least-5-students?envType=problem-list-v2&envId=vkvhgcwg

-- /* Write your PL/SQL query statement below */
select class 
from courses
group by class
having count(class) >= 5;

/* Write your PL/SQL query statement below */
SELECT MOD(id,2) != 0 as id, Cinema.* FROM Cinema;
-- WHERE decription not like "boring" ;