/*
Use GROUP BY and count() to examine the values of revenues_change.
Order the results by revenues_change to see the distribution.
*/
-- Select the count of each value of revenues_change
SELECT revenues_change, count(revenues_change)
FROM fortune500
GROUP BY revenues_change
 -- order by the values of revenues_change
ORDER BY revenues_change;

/*
Repeat step 1, but this time, cast revenues_change as an integer to reduce the number of different values.
*/
-- Select the count of each revenues_change integer value
SELECT revenues_change::integer, count(revenues_change)
FROM fortune500
GROUP BY revenues_change::integer
 -- order by the values of revenues_change
ORDER BY revenues_change;

/*
How many of the Fortune 500 companies had revenues increase in 2017 compared to 2016? To find out, count the rows of fortune500 where revenues_change indicates an increase.
*/
-- Count rows 
SELECT count(revenues_change)
FROM fortune500
 -- Where...
WHERE revenues_change > 0;