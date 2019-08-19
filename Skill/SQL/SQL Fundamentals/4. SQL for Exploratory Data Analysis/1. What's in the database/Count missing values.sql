/*
First, figure out how many rows are in fortune500 by counting them.
*/
-- Select the count of the number of rows
SELECT count(*)
FROM fortune500;

-- *********************************************

/*
Subtract the count of the non-NULL ticker values from the total number of rows; alias the difference as missing.
*/
-- Select the count of ticker, 
-- subtract from the total number of rows, 
-- and alias as missing
SELECT count(*) - count(ticker) AS missing
FROM fortune500;

-- *********************************************

/*
Repeat for the profits_change column.
*/
-- Select the count of profits_change, 
-- subtract from total number of rows, and alias as missing
SELECT count(*) - count(profits_change) AS missing
FROM fortune500

-- *********************************************

/*
Repeat for the industry column.
*/
-- Select the count of industry, 
-- subtract from total number of rows, and alias as missing
SELECT count(*) - count(industry) AS missing
FROM fortune500