# Write your MySQL query statement below

WITH cte1 AS (
    SELECT sale_date, sold_num AS apples_count
    FROM Sales
    WHERE fruit = 'apples'
),
cte2 AS (
    SELECT sale_date, sold_num AS oranges_count
    FROM Sales
    WHERE fruit = 'oranges'
)
SELECT cte1.sale_date, apples_count-oranges_count AS diff
FROM cte1 JOIN cte2 ON cte1.sale_date = cte2.sale_date
ORDER BY sale_date;