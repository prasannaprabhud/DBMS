-- 175. Combine Two Tables
-- https://leetcode.com/problems/combine-two-tables?envType=problem-list-v2&envId=m8baczxh

-- # Write your MySQL query statement below -
--  435 ms Beats 19.07%
Select p.firstName, p.lastName, a.city, a.state 
from Person p 
left join Address a 
on p.personId = a.personId;

427 ms Beats 22.30%
Select Person.firstName, Person.lastName, Address.city, Address.state 
from Person 
left join Address 
on Person.personId = Address.personId ;

-- Your query is already optimal.
-- LeetCode’s timing difference (314 ms vs 427 ms) is due to server randomness, not your SQL.
