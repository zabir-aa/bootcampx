SELECT cohorts.name as name, 
avg(completed_at - started_at) as average_assistance_time
FROM cohorts JOIN students ON cohorts.id = cohort_id
JOIN assistance_requests ON students.id =student_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;