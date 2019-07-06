/*
How many rows have each priority level?
*/
-- Count rows with each priority 
SELECT priority,
       count(*)
FROM evanston311
GROUP BY priority;

-- ****************************************

/*
How many distinct values of zip appear in at least 100 rows?
*/
-- Find values of zip that appear in at least 100 rows
-- Also get the count of each value
SELECT zip, count(*)
FROM evanston311
GROUP BY zip
HAVING count(*) > 100;

-- ****************************************

/*
How many distinct values of source appear in at least 100 rows?
*/
-- Find values of source that appear in at least 100 rows
-- Also get the count of each value
SELECT source, count(*)
FROM evanston311
GROUP BY source
HAVING count(*) > 100; 

-- ****************************************

/*
Select the five most common values of street and the count of each.
*/
-- Find the 5 most common values of street and the count of each
SELECT street, count(*)
FROM evanston311
GROUP BY street
HAVING count(*) > 100
ORDER BY count(*) DESC
LIMIT 5;