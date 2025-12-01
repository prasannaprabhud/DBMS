-- 584. Find Customer Referee
-- https://leetcode.com/problems/find-customer-referee?envType=problem-list-v2&envId=vkvhgcwg

-- /* Write your PL/SQL query statement below */
select name
from customer
where referee_id != 2 or referee_id is null;
