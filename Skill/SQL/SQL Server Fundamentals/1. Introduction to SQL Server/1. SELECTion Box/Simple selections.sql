/*
SELECT the country column FROM the eurovision table.
*/
-- SELECT the country column FROM the eurovision table
SELECT country FROM eurovision

/*
Amend your query to return the points column instead of the country column.
*/
-- Select the points column
SELECT 
  points 
FROM 
  eurovision;

/*
Use TOP to change the existing query so that only the first 50 rows are returned.
*/
-- Limit the number of rows returned
SELECT 
  top (50) points 
FROM 
  eurovision;

/*
Return a list of unique countries using DISTINCT. Give the results an alias of unique_country.
*/
-- Return unique countries and use an alias
SELECT 
  DISTINCT country as unique_country 
FROM 
  eurovision;