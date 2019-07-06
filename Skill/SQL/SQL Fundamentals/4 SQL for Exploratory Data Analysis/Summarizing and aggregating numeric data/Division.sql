-- Select average revenue per employee by sector
SELECT sector, 
       avg(revenues/employees::numeric) AS avg_rev_employee
FROM fortune500
GROUP BY sector
 -- Use the column alias to order the results
ORDER BY sector;