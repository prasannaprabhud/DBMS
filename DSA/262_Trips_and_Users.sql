-- 262. Trips and Users
-- https://leetcode.com/problems/trips-and-users?envType=problem-list-v2&envId=vkvhgcwg

/* Write your PL/SQL query statement below */

with temp AS (
    select *
    from trips
    where client_id not in (
        select users_id 
        from users
        where banned = 'Yes'
    )
    and driver_id not in (
        select users_id 
        from users
        where banned = 'Yes'
    )
);

select 
    request_at AS day, 
    ROUND( SUM( CASE WHEN status LIKE 'cancelled%'
                     THEN 1.00
                     ELSE 0 END) / COUNT(*), 2)
    AS "Cancellation Rate"
from temp
where request_at between '2013-10-01' and '2013-10-03'
group by request_at;
