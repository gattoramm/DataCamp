-- Select name of the day of the week the request was created 
SELECT to_char(date_created, 'day') AS day, 
       -- Select avg time between request creation and completion
       avg(date_completed - date_created) AS duration
 FROM evanston311 
 -- Group by the name of the day of the week (use the alias) and 
 -- integer value of day of week 
 GROUP BY day, EXTRACT(DOW FROM date_created)
 -- Order by integer value of the day of the week
 ORDER BY EXTRACT(DOW FROM date_created);