-- 196. Delete Duplicate Emails
-- https://leetcode.com/problems/delete-duplicate-emails?envType=problem-list-v2&envId=m8baczxh
-- /* Write your PL/SQL query statement below */
DELETE FROM Person p
WHERE p.id NOT IN (
    SELECT MIN(id)
    FROM Person
    GROUP BY email
);

