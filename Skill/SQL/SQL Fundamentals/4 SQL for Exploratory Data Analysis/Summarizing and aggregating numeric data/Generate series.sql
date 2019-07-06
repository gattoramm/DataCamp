/*
Start by selecting the minimum and maximum of the question_count column for the tag 'dropbox' so you know the range of values to cover with the bins.
*/
-- Select the min and max of question_count
SELECT min(question_count), 
       max(question_count)
  -- From what table?
FROM stackoverflow
 -- For tag dropbox
WHERE tag = 'dropbox';

-- **********************************************

/*
Next, use generate_series() to create bins of size 50 from 2200 to 3100; you need an upper and lower bound to define a bin.
*/
-- Create lower and upper bounds of bins
SELECT generate_series(2200, 3050, 50) AS lower,
       generate_series(2250, 3100, 50) AS upper;

-- **********************************************

/*
Select lower and upper from bins, along with the count of values within each bin bounds.
To do this, you'll need to join 'dropbox', which contains the question_count for tag dropbox, to the bins created by generate_series().
*/
-- Bins created in previous step
WITH bins AS (
      SELECT generate_series(2200, 3050, 50) AS lower,
             generate_series(2250, 3100, 50) AS upper),
     -- subset stackoverflow to just tag dropbox
     dropbox AS (
      SELECT question_count 
      FROM stackoverflow
      WHERE tag='dropbox') 
-- select columns for result
SELECT lower, upper, count(question_count) 
  -- from bins created above
FROM bins
       -- join to dropbox and keep all rows from bins
       LEFT JOIN dropbox
       -- Compare question_count to lower and upper
         ON question_count >= lower 
        AND question_count < upper
 -- Group by lower and upper to count values in each bin
GROUP BY lower, upper
 -- Order by lower to put bins in order
ORDER BY lower;