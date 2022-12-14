--Total Teacher Assistance Requests
--We need to be able to see how many assistance requests any teacher has completed.

SELECT count(*) AS total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;