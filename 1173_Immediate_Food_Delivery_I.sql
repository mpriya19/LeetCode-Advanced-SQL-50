# Write your MySQL query statement below

SELECT ROUND((SUM(CASE WHEN customer_pref_delivery_date = order_date THEN 1 ELSE 0 END)/COUNT(*))*100,2) AS immediate_percentage
FROM Delivery;