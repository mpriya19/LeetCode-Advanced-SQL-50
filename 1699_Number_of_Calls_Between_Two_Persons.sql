# Write your MySQL query statement below

WITH CTE AS (
    SELECT from_id, to_id, duration FROM Calls WHERE from_id < to_id
    UNION ALL
    SELECT to_id, from_id, duration FROM Calls WHERE to_id < from_id
)
SELECT from_id AS person1, to_id AS person2, COUNT(*) as call_count, SUM(duration) AS total_duration
FROM CTE
GROUP BY person1, person2;

/*
SELECT LEAST(from_id,to_id) AS person1, GREATEST(from_id,to_id) AS person2, COUNT(*) AS call_count, SUM(duration) AS total_duration
FROM Calls
GROUP BY 1, 2;
*/