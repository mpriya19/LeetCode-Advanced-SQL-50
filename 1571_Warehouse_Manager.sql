# Write your MySQL query statement below

SELECT name AS warehouse_name, SUM(Width*Length*Height*units) AS volume
FROM Products prd JOIN Warehouse wh ON prd.product_id = wh.product_id
GROUP BY name;