-- 620. Not Boring Movies
-- https://leetcode.com/problems/not-boring-movies?envType=problem-list-v2&envId=vkvhgcwg

-- /* Write your PL/SQL query statement below */
-- 1
SELECT cinema.*
FROM Cinema
where mod(id,2) != 0 and
lower(substr(description,1,6)) != 'boring' 
-- lower(cinema.description) not like 'boring%'
order by rating desc;


-- 2
SELECT cinema.*
FROM Cinema
where mod(id,2) != 0 and
-- lower(substr(description,1,6)) != 'boring' 
lower(cinema.description) not like 'boring%'
order by rating desc;