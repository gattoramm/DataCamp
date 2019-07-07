-- Generate 6 month bins covering 2016-01-01 to 2018-06-30

-- Create lower bounds of bins
SELECT generate_series('2016-01-01',  -- First bin lower value
                       '2018-01-01',  -- Last bin lower value
                       '6 months'::interval) AS lower,
-- Create upper bounds of bins
       generate_series('2016-07-01',  -- First bin upper value
                       '2018-07-01',  -- Last bin upper value
                       '6 months'::interval) AS upper;

-- ****************************************************************************

-- Compute number of requests made per day
SELECT day, count(date_created) AS count
-- Use a daily series to capture days with no requests as 0
FROM (SELECT generate_series('2016-01-01',  -- series start date
                               '2018-06-30',  -- series end date
                               '1 day'::interval)::date AS day) AS daily_series
       LEFT JOIN evanston311
       -- match day from above (which is a date) to date_created
       ON day = date_created::date
GROUP BY day;

-- ****************************************************************************

-- Bins from Step 1
WITH bins AS (
	SELECT generate_series('2016-01-01',
                            '2018-01-01',
                            '6 months'::interval) AS lower,
           generate_series('2016-07-01',
                            '2018-07-01',
                            '6 months'::interval) AS upper),
-- Daily counts from Step 2
    daily_counts AS (
		SELECT day, count(date_created) AS count
        FROM (SELECT generate_series('2016-01-01',
                                    '2018-06-30',
                                    '1 day'::interval)::date AS day) AS daily_series
            LEFT JOIN evanston311
            ON day = date_created::date
        GROUP BY day)
-- Select bin bounds and median of count
SELECT lower, 
       upper, 
       percentile_disc(0.5) WITHIN GROUP (ORDER BY count) AS median
-- Join bins and daily_counts
FROM bins
       LEFT JOIN daily_counts
-- Where the day is between the bin bounds
       ON day > lower
          AND day < upper
-- Group by bin bounds
GROUP BY lower, upper
ORDER BY lower;