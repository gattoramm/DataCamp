/*
Use trunc() to truncate employees to the 100,000s (5 zeros).
Count the number of observations with each truncated value.
*/
-- Truncate employees
SELECT trunc(employees, -5) AS employee_bin,
       -- Count number of companies with each truncated value
       count(employees)
FROM fortune500
 -- Use alias to group
GROUP BY employee_bin
 -- Use alias to order
ORDER BY employee_bin;

-- *********************************************

/*
Repeat step 1 for companies with < 100,000 employees (most common).
This time, truncate employees to the 10,000s place.
*/
-- Truncate employees
SELECT trunc(employees, -4) AS employee_bin,
       -- Count number of companies with each truncated value
       count(*)
FROM fortune500
 -- Limit to which companies?
WHERE employees < 100000
 -- Use alias to group
GROUP BY employee_bin
 -- Use alias to order
ORDER BY employee_bin;