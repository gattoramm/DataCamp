## Working with dates and timestamps
What time is it? In this chapter, you'll learn how to find out. You'll aggregate date/time data by hour, day, month, or year and practice both constructing time series and finding gaps in them.

### Date comparisons
When working with timestamps, sometimes you want to find all observations on a given day. However, if you specify only a date in a comparison, you may get unexpected results. This query:

```sql
SELECT count(*) 
  FROM evanston311
 WHERE date_created = '2018-01-02';
```
 
returns 0, even though there were 49 requests on January 2, 2018.

This is because dates are automatically converted to timestamps when compared to a timestamp. The time fields are all set to zero:

```sql
SELECT '2018-01-02'::timestamp;
```

```sql
2018-01-02 00:00:00
```
 
When working with both timestamps and dates, you'll need to keep this in mind.

### Date arithmetic
You can subtract dates or timestamps from each other.

You can add time to dates or timestamps using intervals. An interval is specified with a number of units and the name of a datetime field. For example:

* `'3 days'::interval`
* `'6 months'::interval`
* `'1 month 2 years'::interval`
* `'1 hour 30 minutes'::interval`

Practice date arithmetic with the Evanston 311 data and `now()`.

### Completion time by category
The `evanston311` data includes a `date_created` timestamp from when each request was created and a `date_completed` timestamp for when it was completed. The difference between these tells us how long a request was open.

Which `category` of Evanston 311 requests takes the longest to complete?

### Date parts
The `date_part()` function is useful when you want to aggregate data by a unit of time across multiple larger units of time. For example, aggregating data by month across different years, or aggregating by hour across different days.

Recall that you use `date_part()` as:

```sql
SELECT date_part('field', timestamp);
```

In this exercise, you'll use `date_part()` to gain insights about when Evanston 311 requests are submitted and completed.

### Variation by day of week
Does the time required to complete a request vary by the day of the week on which the request was created?

We can get the name of the day of the week by converting a timestamp to character data:

```sql
to_char(date_created, 'day')
```

But character names for the days of the week sort in alphabetical, not chronological, order. To get the chronological order of days of the week with an integer value for each day, we can use:

```sql
EXTRACT(DOW FROM date_created)
```

DOW stands for "day of week."

### Date truncation
Unlike `date_part()` or `EXTRACT()`, `date_trunc()` keeps date/time units larger than the field you specify as part of the date. So instead of just extracting one component of a timestamp, `date_trunc()` returns the specified unit and all larger ones as well.

Recall the syntax:

```sql
date_trunc('field', timestamp)
```

Using `date_trunc()`, find the average number of Evanston 311 requests created per day for each month of the data. Ignore days with no requests when taking the average.

### Find missing dates
The `generate_series()` function can be useful for identifying missing dates.

Recall:

```sql
generate_series(from, to, interval)
```

where `from` and `to` are dates or timestamps, and interval can be specified as a string with a number and a unit of time, such as `'1 month'`.

Are there any days in the Evanston 311 data where no requests were created?

### Custom aggregation periods
Find the median number of Evanston 311 requests per day in each six month period from 2016-01-01 to 2018-06-30. Build the query following the three steps below.

Recall that to aggregate data by non-standard date/time intervals, such as six months, you can use `generate_series()` to create bins with lower and upper bounds of time, and then summarize observations that fall in each bin.

Remember: you can access the slides with an example of this type of query using the PDF icon link in the upper right corner of the screen.

### Monthly average with missing dates
Find the average number of Evanston 311 requests created per day for each month of the data.

This time, do not ignore dates with no requests.

### Longest gap
What is the longest time between Evanston 311 requests being submitted?

Recall the syntax for `lead()` and `lag()`:

```sql
lag(column_to_adjust) OVER (ORDER BY ordering_column)
lead(column_to_adjust) OVER (ORDER BY ordering_column)
```
### Rats!
Requests in category "Rodents- Rats" average over 64 days to resolve. Why?

Investigate in 4 steps:

1. Why is the average so high? Check the distribution of completion times. Hint: `date_trunc()` can be used on intervals.

2. See how excluding outliers influences average completion times.

3. Do requests made in busy months take longer to complete? Check the correlation between the average completion time and requests per month.

4. Compare the number of requests created per month to the number completed.

Remember: the time to resolve, or completion time, is `date_completed - date_created`.