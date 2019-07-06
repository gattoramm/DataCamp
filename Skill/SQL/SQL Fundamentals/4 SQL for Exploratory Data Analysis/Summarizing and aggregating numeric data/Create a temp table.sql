/*
Create a temporary table called profit80 containing the sector and 80th percentile of profits for each sector.
Alias the percentile column as pct80.
*/
-- To clear table if it already exists;
-- fill in name of temp table
DROP TABLE IF EXISTS profit80;

-- Create the temporary table
CREATE temp TABLE profit80 AS 
  -- Select the two columns you need; alias as needed
  SELECT sector, 
         percentile_disc(0.8) WITHIN GROUP (ORDER BY profits) AS pct80
    -- What table are you getting the data from?
  FROM fortune500
   -- What do you need to group by?
  GROUP BY sector;
   
-- See what you created: select all columns and rows 
-- from the table you created
SELECT * 
FROM profit80;

-- **************************************

/*
Using the profit80 table you created in step 1, select companies that have profits greater than pct80.
Select the title, sector, profits from fortune500, as well as the ratio of the company's profits to the 80th percentile profit.
*/
-- Code from previous step
DROP TABLE IF EXISTS profit80;

CREATE TEMP TABLE profit80 AS
  SELECT sector, 
         percentile_disc(0.8) WITHIN GROUP (ORDER BY profits) AS pct80
  FROM fortune500 
  GROUP BY sector;

-- Select columns, aliasing as needed
SELECT title, fortune500.sector, 
       profits, profits/pct80 AS ratio
-- What tables do you need to join?  
FROM fortune500 
       LEFT JOIN profit80
-- How are the tables joined?
       ON fortune500.sector = profit80.sector
-- What rows do you want to select?
WHERE profits > pct80;