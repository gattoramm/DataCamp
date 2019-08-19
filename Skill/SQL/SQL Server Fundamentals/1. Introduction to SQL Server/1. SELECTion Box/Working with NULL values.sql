/*
Use a shortcut to select all columns from grid. Then filter the results to only include rows where demand_loss_mw is unknown or missing.
*/
-- Retrieve all columns
SELECT 
  * 
FROM 
  grid 
  -- Return only rows where demand_loss_mw is missing or unknown  
WHERE 
  demand_loss_mw  IS NULL;

/*
Adapt your code to return rows where demand_loss_mw is not unknown or missing.
*/
-- Retrieve all columns
SELECT 
  * 
FROM 
  grid 
  -- Return rows where demand_loss_mw is not missing or unknown   
WHERE 
  demand_loss_mw IS NOT NULL;