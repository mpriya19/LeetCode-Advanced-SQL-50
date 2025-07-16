# Write your MySQL query statement below

SELECT left_operand, operator, right_operand,
    CASE
        WHEN operator = '<' AND vars1.value < vars2.value THEN 'true'
        WHEN operator = '>' AND vars1.value > vars2.value THEN 'true'
        WHEN operator = '=' AND vars1.value = vars2.value THEN 'true'
        ELSE 'false'
    END AS value
FROM Variables vars1
    JOIN Expressions expr ON vars1.name = expr.left_operand
    JOIN Variables vars2 ON vars2.name = expr.right_operand;