SELECT day, count(id) as number_of_assignments, sum(duration) as total_duration
FROM assignments
GROUP BY day
ORDER by day;