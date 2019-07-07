/*
Select profits_change and profits_change cast as integer from fortune500.
Look at how the values were converted.
*/
-- Select the original value
SELECT profits_change, 
	   -- Cast profits_change
       CAST(profits_change as integer) AS profits_change_int
FROM fortune500;

-- **************************************************

/*
Compare the result of dividing the integer value 10 by 3 to the result of dividing the numeric value 10 by 3.
*/
-- Divide 10 by 3
SELECT 10/3, 
       -- Divide 10 cast as numeric by 3
       10::numeric/3;

-- **************************************************

/*
Now cast numbers that appear as text as numeric.
Note: 1e3 is scientific notation.
*/
SELECT '3.2'::numeric,
       '-123'::numeric,
       '1e3'::numeric,
       '1e-3'::numeric,
       '02314'::numeric,
       '0002'::numeric;