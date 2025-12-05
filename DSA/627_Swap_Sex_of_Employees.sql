-- 627. Swap Sex of Employees
-- https://leetcode.com/problems/swap-sex-of-employees?envType=problem-list-v2&envId=vkvhgcwg

-- /* Write your PL/SQL query statement below */
update salary
set sex = 
case 
    when sex = 'm' then 'f'
    else 'm'
end;