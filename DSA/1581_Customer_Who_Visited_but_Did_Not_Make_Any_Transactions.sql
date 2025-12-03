-- 1581. Customer Who Visited but Did Not Make Any Transactions
-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions?envType=problem-list-v2&envId=vkvhgcwg

-- /* Write your PL/SQL query statement below */
select customer_id, count(customer_id) AS count_no_trans
from visits
where 
    visit_id not in (
        select distinct visit_id
        from transactions
    )
group by customer_id;