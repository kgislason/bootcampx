--Average Cohort Assistance Time
--We need to be able to see the average duration of a single assistance request for each cohort.

SELECT cohorts.name AS name, AVG(completed_at - started_at) AS average_assistance_time 
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.id
ORDER BY average_assistance_time;