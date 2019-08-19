-- Use coalesce
SELECT coalesce(industry, sector, 'Unknown') AS industry2,
       -- Don't forget to count!
       count(*)
FROM fortune500 
-- Group by what? (What are you counting by?)
GROUP BY industry2
-- Order results to see most common first
ORDER BY count DESC
-- Limit results to get just the one value you want
LIMIT 1;