/*
Compute the min(), avg(), max(), and stddev() of profits.
*/
-- Select min, avg, max, and stddev of fortune500 profits
SELECT min(profits),
       avg(profits),
       max(profits),
       stddev(profits)
FROM fortune500;

-- **********************************************

/*
Now repeat step 1, but summarize profits by sector.
Order the results by the average profits for each sector.
*/
-- Select sector and summary measures of fortune500 profits
SELECT sector,
       min(profits),
       avg(profits),
       max(profits),
       stddev(profits)
FROM fortune500
 -- What to group by?
GROUP BY sector
 -- Order by the average profits
ORDER BY avg;