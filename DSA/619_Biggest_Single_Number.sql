-- 619. Biggest Single Number
-- https://leetcode.com/problems/biggest-single-number?envType=problem-list-v2&envId=vkvhgcwg

-- /* Write your PL/SQL query statement below */
select max(num) as num
from MyNumbers 
where num not in (
    select num 
    from ( 
        select row_number() over( partition by num order by num) as rn, num 
        from mynumbers
    ) t
    where rn = 2
);

-- 2
select max(num) as num 
from mynumbers 
where num not in ( 
    select num 
    from mynumbers 
    group by num 
    having count(*) > 1
    );