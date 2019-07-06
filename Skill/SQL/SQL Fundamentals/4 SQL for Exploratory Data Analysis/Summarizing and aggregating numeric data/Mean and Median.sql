-- What groups are you computing statistics by?
SELECT sector,
       -- Select the mean of assets with the avg function
       avg(assets) AS mean,
       -- Select the median
       percentile_disc(0.5) WITHIN GROUP (ORDER BY assets) AS median
FROM fortune500
 -- Computing statistics for each what?
GROUP BY sector
 -- Order results by a value of interest
ORDER BY mean;