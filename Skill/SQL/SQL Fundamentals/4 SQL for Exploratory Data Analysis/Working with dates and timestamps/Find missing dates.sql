SELECT day
-- Subquery to generate all dates
-- from min to max date_created
FROM (SELECT generate_series(min(date_created),
                             max(date_created),
                             '1 day')::date AS day
          -- What table is date_created in?
      FROM evanston311) AS all_dates
-- Select dates (day from above) that are NOT IN the subquery
WHERE day NOT IN 
       -- Subquery to select all date_created values as dates
       (SELECT date_created::date
        FROM evanston311);