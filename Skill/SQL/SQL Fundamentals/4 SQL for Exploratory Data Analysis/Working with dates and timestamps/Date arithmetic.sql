-- Subtract the min date_created from the max
SELECT max(date_created) - min(date_created)
FROM evanston311;

-- How old is the most recent request?
SELECT now() - max(date_created)
FROM evanston311;

-- Add 100 days to the current timestamp
SELECT now() + '100 days'::interval;

-- Select the current timestamp, 
-- and the current timestamp + 5 minutes
SELECT now() + '5 minutes'::interval;
