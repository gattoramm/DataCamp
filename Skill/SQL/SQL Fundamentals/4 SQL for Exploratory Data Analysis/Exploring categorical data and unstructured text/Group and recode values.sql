/*
Create recode with a standardized column; use split_part() then rtrim() to remove any remaining whitespace on the result of split_part().
*/
-- Fill in the command below with the name of the temp table
DROP TABLE IF EXISTS recode;

-- Create and name the temporary table
CREATE temp table recode AS
-- Write the select query to generate the table 
-- with distinct values of category and standardized values
  SELECT DISTINCT category, 
         rtrim(split_part(category, '-', 1)) AS standardized
    -- What table are you selecting the above values from?
  FROM evanston311;
    
-- Look at a few values before the next step
SELECT DISTINCT standardized 
FROM recode
WHERE standardized LIKE 'Trash%Cart'
   OR standardized LIKE 'Snow%Removal%';

-- ********************************************************

/*
UPDATE standardized values LIKE 'Trash%Cart' to 'Trash Cart'; UPDATE standardized values of 'Snow Removal/Concerns' and 'Snow/Ice/Hazard Removal' to 'Snow Removal'.
*/
-- Code from previous step
DROP TABLE IF EXISTS recode;

CREATE TEMP TABLE recode AS
  SELECT DISTINCT category, 
         rtrim(split_part(category, '-', 1)) AS standardized
  FROM evanston311;

-- Update to group trash cart values
UPDATE recode 
SET standardized='Trash Cart' 
WHERE standardized like 'Trash%Cart';

-- Update to group snow removal values
UPDATE recode 
SET standardized='Snow Removal' 
WHERE standardized like 'Snow%Removal%';
    
-- Examine effect of updates
SELECT DISTINCT standardized 
FROM recode
WHERE standardized LIKE 'Trash%Cart'
   OR standardized LIKE 'Snow%Removal%';

-- ********************************************************

/*
UPDATE standardized values of 'THIS REQUEST IS INACTIVE...Trash Cart', '(DO NOT USE) Water Bill', 'DO NOT USE Trash', and 'NO LONGER IN USE' to 'UNUSED'.
*/
-- Code from previous step
DROP TABLE IF EXISTS recode;

CREATE TEMP TABLE recode AS
  SELECT DISTINCT category, 
         rtrim(split_part(category, '-', 1)) AS standardized
  FROM evanston311;
  
UPDATE recode SET standardized='Trash Cart' 
WHERE standardized LIKE 'Trash%Cart';

UPDATE recode SET standardized='Snow Removal' 
WHERE standardized LIKE 'Snow%Removal%';

-- Update to group unused/inactive values
UPDATE recode 
SET standardized='UNUSED' 
WHERE standardized IN ('THIS REQUEST IS INACTIVE...Trash Cart', 
               '(DO NOT USE) Water Bill',
               'DO NOT USE Trash', 
               'NO LONGER IN USE');

-- Examine effect of updates
SELECT DISTINCT standardized 
FROM recode
ORDER BY standardized;

-- ********************************************************

/*
Now, join the evanston311 and recode tables to count the number of requests with each of the standardized values; list the most common standardized values first.
*/
-- Code from previous step
DROP TABLE IF EXISTS recode;
CREATE TEMP TABLE recode AS
  SELECT DISTINCT category, 
         rtrim(split_part(category, '-', 1)) AS standardized
  FROM evanston311;
UPDATE recode SET standardized='Trash Cart' 
WHERE standardized LIKE 'Trash%Cart';

UPDATE recode SET standardized='Snow Removal' 
WHERE standardized LIKE 'Snow%Removal%';

UPDATE recode SET standardized='UNUSED' 
WHERE standardized IN ('THIS REQUEST IS INACTIVE...Trash Cart', 
               '(DO NOT USE) Water Bill',
               'DO NOT USE Trash', 'NO LONGER IN USE');

-- Select the recoded categories and the count of each
SELECT standardized, count(*)
-- From the original table and table with recoded values
FROM evanston311 
       left JOIN recode 
       -- What column do they have in common?
       ON evanston311.category = recode.category
 -- What do you need to group by to count?
GROUP BY standardized
 -- Display the most common val values first
ORDER BY count(*) desc;