-- 595. Big Countries
-- https://leetcode.com/problems/big-countries?envType=problem-list-v2&envId=m8baczxh

-- /* Write your PL/SQL query statement below */
select name , population, area 
from world
where  area >= 3000000 or population >= 25000000;

--  Using UNION (Good if you want distinct rows)
SELECT name, population, area
FROM world
WHERE area >= 3000000

UNION ALL

SELECT name, population, area
FROM world
WHERE population >= 25000000;
