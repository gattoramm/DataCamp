/*
SELECT the country and event_year columns from the eurovision table.
*/
-- Select country and event_year from eurovision
SELECT 
  country, 
  event_year 
FROM eurovision;

/*
Use a shortcut to amend the current query, returning ALL rows from ALL columns in the table.
*/
-- Amend the code to select all rows and columns
SELECT 
  * 
FROM 
  eurovision;

/*
Return all columns, but only include the top half of the table - in other words, return 50 percent of the rows.
*/
-- Return all columns, restricting the percent of rows returned
SELECT 
  top (50) percent  * 
FROM 
  eurovision;