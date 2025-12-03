-- 178. Rank Scores
-- https://leetcode.com/problems/rank-scores?envType=problem-list-v2&envId=vkvhgcwg

-- /* Write your PL/SQL query statement below */
SELECT SCORE, DENSE_RANK() OVER ( ORDER BY SCORE DESC ) AS RANK
FROM SCORES;
