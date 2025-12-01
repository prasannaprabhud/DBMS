-- 577. Employee Bonus
-- https://leetcode.com/problems/employee-bonus?envType=problem-list-v2&envId=vkvhgcwg

-- /* Write your PL/SQL query statement below */
select e1.name, e2.bonus 
from Employee e1 left join
bonus e2 on  e1.empId = e2.empId
where bonus is null or e2.bonus < 1000 ;
