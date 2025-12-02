-- 586. Customer Placing the Largest Number of Orders
-- https://leetcode.com/problems/customer-placing-the-largest-number-of-orders?envType=problem-list-v2&envId=vkvhgcwg

-- /* Write your PL/SQL query statement below */
select customer_number
from orders 
group by customer_number
having count(*) = (
    select max(count(*))
    from orders
    group by customer_number
);


-- 2
SELECT customer_number FROM
(
    SELECT customer_number, count(order_number) as LARGE
    FROM orders
    GROUP BY customer_number
    ORDER BY LARGE DESC
)
WHERE ROWNUM = 1;

