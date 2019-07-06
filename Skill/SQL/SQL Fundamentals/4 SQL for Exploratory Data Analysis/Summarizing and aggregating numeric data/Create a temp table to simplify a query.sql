/*
First, create a temporary table called startdates with each tag and the min() date for the tag in stackoverflow.
*/
-- To clear table if it already exists
DROP TABLE IF EXISTS startdates;

-- Create temp table syntax
CREATE temp table startdates AS
-- Compute the minimum date for each what?
SELECT tag,
       min(date) AS mindate
FROM stackoverflow
 -- What do you need to add to get a date for each tag?
GROUP BY tag;
 
 -- Look at the table you created
SELECT * 
FROM startdates;

-- ********************************************

/*
For each tag, select mindate, question_count on the mindate, and question_count on 2018-09-25.
Subtract the starting question_count from the ending question_count.
*/
-- To clear table if it already exists
DROP TABLE IF EXISTS startdates;

CREATE TEMP TABLE startdates AS
SELECT tag, min(date) AS mindate
  FROM stackoverflow
 GROUP BY tag;
 
-- Select tag and mindate
SELECT startdates.tag, 
       mindate, 
       -- Select question count on the first and last days
	   a.question_count AS min_date_question_count,
       b.question_count AS max_date_question_count,
       -- Compute the difference of above 
       b.question_count - a.question_count AS change
  -- Join startdates and one copy of stackoverflow
FROM startdates
       INNER JOIN stackoverflow AS a
       ON startdates.tag=a.tag
         -- Condition for matching mindate
       AND startdates.mindate=a.date
       -- Join other copy of stackoverflow
       INNER JOIN stackoverflow AS b
       ON startdates.tag=b.tag
         -- Condition for matching last date
       AND b.date='2018-09-25';