-- Compute standard deviation of maximum values
SELECT stddev(maxval),
	   -- min
       min(maxval),
       -- max
       max(maxval),
       -- avg
       avg(maxval)
  -- Subquery to compute max of question_count by tag
FROM (SELECT tag, max(question_count) AS maxval
      FROM stackoverflow
         -- Compute max by...
      GROUP BY tag) AS max_results; -- alias for subquery