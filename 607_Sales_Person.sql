# Write your MySQL query statement below

SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (
    SELECT sp.sales_id
    FROM
        SalesPerson sp LEFT JOIN Orders ords ON sp.sales_id = ords.sales_id
        LEFT JOIN Company cp ON cp.com_id = ords.com_id
    WHERE cp.name = 'RED'
);