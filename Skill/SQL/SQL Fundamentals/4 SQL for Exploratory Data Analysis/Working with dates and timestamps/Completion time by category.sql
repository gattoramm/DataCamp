-- Select the category and the average completion time by category
SELECT category, 
       avg(date_completed - date_created) AS completion_time
FROM evanston311
GROUP BY category
-- Order the results
ORDER BY category;