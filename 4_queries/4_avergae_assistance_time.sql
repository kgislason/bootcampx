--Average Assistance Time
--We need to be able to see the current average time it takes to complete an assistance request.

SELECT AVG(completed_at-started_at) AS average_assistance_request_duration
FROM assistance_requests;