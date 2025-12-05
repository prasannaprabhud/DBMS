-- 177. Nth Highest Salary
-- https://leetcode.com/problems/nth-highest-salary?envType=problem-list-v2&envId=vkvhgcwg


CREATE FUNCTION getNthHighestSalary(N IN NUMBER) RETURN NUMBER IS
result NUMBER;
BEGIN
    /* Write your PL/SQL query statement below */

    select distinct salary into result
    from (
        select dense_rank() over( order by salary desc) as rn, salary
        from employee
    ) t
    where rn = N;
    RETURN result;
END;


-- reference
-- https://www.tutorialspoint.com/plsql/plsql_functions.htm