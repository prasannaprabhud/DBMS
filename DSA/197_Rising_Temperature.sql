-- 197. Rising Temperature
-- https://leetcode.com/problems/rising-temperature?envType=problem-list-v2&envId=vkvhgcwg

/* Write your PL/SQL query statement below */

-- if date is missed, then it shows an error  
-- select id
-- from (
--     select 
--     weather.*,  
--     temperature as current_temp, 
--     lag(temperature) over( order by recorddate ) as previous_temp
--     from weather 
-- )
-- where current_temp > previous_temp ;

select current_temp.id 
from weather current_temp
cross join weather previous_temp -- tries every possiblity to join (1,1),(1,2),(2,1),(2,2)
where current_temp.recorddate - previous_temp.recorddate = 1 -- checks day before date
and current_temp.temperature > previous_temp.temperature; -- 25 > 20

