-- 184. Department Highest Salary
-- https://leetcode.com/problems/department-highest-salary?envType=problem-list-v2&envId=vkvhgcwg

-- /* Write your PL/SQL query statement below */

select department, employee, salary
from (
    select department.name as department, 
            employee.name as employee, 
            employee.salary as salary, 
            rank() over( partition by employee.departmentId order by employee.salary desc) as ranksal
    from employee join department 
    on employee.departmentid = department.id
) t
where ranksal = 1;
 

