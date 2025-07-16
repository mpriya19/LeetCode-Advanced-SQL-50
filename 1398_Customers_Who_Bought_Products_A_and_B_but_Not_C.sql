# Write your MySQL query statement below

SELECT *
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
    GROUP BY customer_id
    HAVING SUM(product_name IN ('A','B'))>1 AND SUM(product_name = 'C')=0
)
ORDER BY customer_id;