/*
Select description and event_date from grid. Your query should return the first 5 rows, ordered by event_date.
*/
-- Select the first 5 rows from the specified columns
SELECT 
  TOP (5) description, 
  event_date 
FROM 
  grid 
  -- Order your results by the event_date column
ORDER BY 
  event_date;
  
/*
Modify your code based on the comments provided on the right.
*/
-- Select the top 20 rows from description, nerc_region and event_date
SELECT 
  TOP (20) description,
  nerc_region,
  event_date
FROM 
  grid 
  -- Order by nerc_region, affected_customers & event_date
  -- Event_date should be in descending order
ORDER BY
  nerc_region,
  affected_customers,
  event_date desc;