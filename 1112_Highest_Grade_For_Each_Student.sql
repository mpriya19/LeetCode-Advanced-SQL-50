# Write your MySQL query statement below

SELECT student_id, course_id, grade
FROM (
    SELECT student_id, course_id, grade, DENSE_RANK() OVER (PARTITION BY student_id ORDER BY grade DESC, course_id ASC) as d_rank FROM Enrollments
) enroll
WHERE d_rank = 1
ORDER BY student_id;