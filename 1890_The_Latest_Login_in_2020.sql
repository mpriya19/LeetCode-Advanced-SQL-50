# Write your MySQL query statement below

SELECT user_id, MAX(time_stamp) AS last_stamp
FROM Logins
WHERE YEAR(time_stamp) = 2020
GROUP BY user_id;


/*
SELECT user_id, time_stamp AS last_stamp
FROM(
    SELECT *, ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY time_stamp DESC) AS rn
    FROM Logins
    WHERE YEAR(time_stamp) = 2020
) AS temp
WHERE rn=1;
*/