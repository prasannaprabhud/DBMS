-- 176. Second Highest Salary
-- https://leetcode.com/problems/second-highest-salary?envType=problem-list-v2&envId=m8baczxh

-- # Write your MySQL query statement below -

-- 1
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

--2
SELECT ( SELECT DISTINCT salary 
        FROM ( SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) as rnk 
            FROM employee ) AS RankedSalaries 
        WHERE rnk = 2 ) AS SecondHighestSalary;

--3
SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;

--4
SELECT COALESCE((
    SELECT DISTINCT salary
    FROM (
        SELECT 
            salary,
            DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
        FROM Employee
    ) AS RankedSalaries
    WHERE rnk = 2
), NULL) AS SecondHighestSalary;

--5 
SELECT (
    SELECT DISTINCT salary
    FROM (
        SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
        FROM employee
    ) AS RankedSalaries
    WHERE rnk = 2
) AS SecondHighestSalary;
-- If there is no rnk = 2 row, DISTINCT returns zero rows — the scalar subquery becomes NULL.