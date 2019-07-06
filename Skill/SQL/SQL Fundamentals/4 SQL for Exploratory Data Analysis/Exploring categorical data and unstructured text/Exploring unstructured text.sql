/*
Use ILIKE to count rows in evanston311 where the description contains 'trash' or 'garbage' regardless of case.
*/
-- Count rows
SELECT count(*)
FROM evanston311
 -- Where description includes trash or garbage
WHERE description ilike '%trash%'
   or description ilike '%garbage%';

-- *******************************************************

/*
category values are in title case. Use LIKE to find category values with 'Trash' or 'Garbage' in them.
*/
-- Select categories containing Trash or Garbage
SELECT category
FROM evanston311
 -- Use LIKE
WHERE category LIKE '%Trash%'
   or category LIKE '%Garbage%';

-- *******************************************************

/*
Count rows where the description includes 'trash' or 'garbage' but the category does not.
*/
-- Count rows
SELECT count(*)
FROM evanston311 
 -- description contains trash or garbage
WHERE (description ILIKE '%trash%'
   OR description ILIKE '%garbage%') 
 -- category does not contain trash or garbage
  AND category NOT LIKE '%Trash%'
  AND category NOT LIKE '%Garbage%';

-- *******************************************************

/*
Find the most common categories for rows with a description about trash that don't have a trash-related category.
*/
-- Count rows with each category
SELECT category, count(*)
FROM evanston311 
WHERE (description ILIKE '%trash%'
    OR description ILIKE '%garbage%') 
   AND category NOT LIKE '%Trash%'
   AND category NOT LIKE '%Garbage%'
 -- What are you counting?
GROUP BY category
 --- order by most frequent values
ORDER BY count(*) desc
LIMIT 10;