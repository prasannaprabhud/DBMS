-- 607. Sales Person
-- https://leetcode.com/problems/sales-person?envType=problem-list-v2&envId=vkvhgcwg

/* Write your PL/SQL query statement below */
SELECT NAME 
FROM SALESPERSON 
WHERE SALES_ID NOT IN (
    SELECT SALES_ID 
    FROM ORDERS
    WHERE COM_ID IN (
        SELECT COM_ID 
        FROM COMPANY 
        WHERE NAME IN 'RED'
    )
);