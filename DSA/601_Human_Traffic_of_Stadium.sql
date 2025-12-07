-- 601. Human Traffic of Stadium
-- https://leetcode.com/problems/human-traffic-of-stadium?envType=problem-list-v2&envId=vkvhgcwg

/* Write your PL/SQL query statement below */

-- WITH temp as (
--     SELECT *
--     FROM STADIUM
--     WHERE PEOPLE >= 100
--     ORDER BY ID
-- );


with temp as (
    SELECT tt.*
        ,(SELECT COUNT(id) FROM stadium WHERE people <= 99 and  ID < tt.ID) AS cnt 
    FROM  stadium tt
    where people >= 100
);

-- SELECT tt.*
--     ,(SELECT COUNT(id) FROM stadium WHERE people <= 99 and  ID < tt.ID) AS cnt -- id < tt.id - really, i dont understand, working for that.
-- FROM  stadium tt

-- select * from temp

-- select temp.*, row_number() over(partition by cnt order by id) rn
-- from temp

select id, to_char(visit_date,'YYYY-MM-DD') visit_date, people 
from temp
where cnt in (
    select cnt
    from temp
    group by cnt
    having count(cnt) >= 3
)
order by id;


-- reference
-- https://stackoverflow.com/questions/18436749/how-to-find-consecutive-rows-based-on-the-value-of-a-column
