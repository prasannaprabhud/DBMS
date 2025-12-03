-- 180. Consecutive Numbers
-- https://leetcode.com/problems/consecutive-numbers?envType=problem-list-v2&envId=vkvhgcwg

/* Write your PL/SQL query statement below */
-- select count(id)
-- from logs
-- group by num;

-- SELECT num,LEAD(num) OVER(ORDER BY id) AS lead, LAG(num) OVER (ORDER BY id) AS lag
-- FROM logs

-- SELECT DISTINCT num AS ConsecutiveNums 
-- FROM
-- (
--     SELECT num,LEAD(num) OVER(ORDER BY id) AS leadnum, LAG(num) OVER (ORDER BY id) AS lagnum
--     FROM logs
-- )t
-- WHERE num=leadnum and num=lagnum;

-- SELECT *
-- FROM
--     Logs l1,
--     Logs l2,
--     Logs l3
-- WHERE
--     l1.Id = l2.Id - 1
--     AND l2.Id = l3.Id - 1

SELECT distinct L1.NUM AS CONSECUTIVENUMS
FROM
    Logs l1 
JOIN 
    Logs l2
ON
    l1.id = l2.id -1
JOIN
    LOGS L3
ON
    l2.Id = l3.Id - 1
WHERE
    L1.NUM = L2.NUM
AND
    L2.NUM = L3.NUM;
