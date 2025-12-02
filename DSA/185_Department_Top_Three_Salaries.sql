-- 185. Department Top Three Salaries
-- https://leetcode.com/problems/department-top-three-salaries?envType=problem-list-v2&envId=vkvhgcwg

-- /* Write your PL/SQL query statement below */

SELECT department, employee, salary
FROM (
    SELECT department.name AS department, employee.name AS employee, employee.salary AS salary, DENSE_RANK() OVER ( PARTITION BY EMPLOYEE.DEPARTMENTID ORDER BY SALARY DESC) AS TOPSAL
    FROM employee JOIN department
    ON employee.departmentID = department.id 
)
WHERE TOPSAL < 4
ORDER BY SALARY DESC;