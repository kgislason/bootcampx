--Total Student Assistance Requests
--We need to be able to see how many assistance requests any student has requested.

SELECT count(*) AS total_assistances, students.name
FROM assistance_requests
JOIN students ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;