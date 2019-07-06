-- Aggregate daily counts by month
SELECT date_trunc('month', daily_count.day) AS month,
       avg(count)
  -- Subquery to compute daily counts
FROM (SELECT date_trunc('day', date_created) AS day,
             count(date_created) AS count
      FROM evanston311
      GROUP BY day) AS daily_count
GROUP BY month
ORDER BY month;