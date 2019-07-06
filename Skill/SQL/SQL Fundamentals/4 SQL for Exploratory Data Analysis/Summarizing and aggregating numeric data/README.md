## Summarizing and aggregating numeric data
You'll build on functions like min and max to summarize numeric data in new ways. Add average, variance, correlation, and percentile functions to your toolkit, and learn how to truncate and round numeric values too. Build complex queries and save your results by creating temporary tables.

### Division
Compute the average revenue per employee for Fortune 500 companies by sector.

### Explore with division
In exploring a new database, it can be unclear what the data means and how columns are related to each other.

What information does the `unanswered_pct` column in the `stackoverflow` table contain? Is it the percent of questions with the tag that are unanswered, or is it the percent of all unanswered questions on the site with the tag?

Divide `unanswered_count` by `question_count` and compare it to `unanswered_pct` to explore.

### Summarize numeric columns
Summarize the profit column in the fortune500 table using the functions you've learned.

You can access the course slides for reference using the PDF icon in the upper right corner of the screen.

### Summarize group statistics
Sometimes you want to understand how a value varies across groups. For example, how does the maximum value per group vary across groups?

To find out, first summarize by group, and then compute summary statistics of the group results. One way to do this is to compute group values in a subquery, and then summarize the results of the subquery.

For this exercise, what is the standard deviation across tags in the maximum number of Stack Overflow questions per day? What about the mean, min, and max of the maximums as well?

### Truncate
Use `trunc()` to examine the distributions of attributes of the Fortune 500 companies.

Remember that `trunc()` truncates numbers by replacing lower place value digits with zeros:
```sql
trunc(value_to_truncate, places_to_truncate)
```
Negative values for `places_to_truncate` indicate digits to the left of the decimal to replace, while positive values indicate digits to the right of the decimal to keep.

### Generate series
Summarize the distribution of the number of questions with the tag "dropbox" on Stack Overflow per day by binning the data.

Recall:
```sql
generate_series(from, to, step)
```
You can reference the slides using the PDF icon in the upper right corner of the screen.

### Correlation
What's the relationship between a company's revenue and its other financial attributes? Compute the correlation between revenues and other financial variables with the `corr()` function.

### Mean and Median
Compute the mean (`avg()`) and median assets of Fortune 500 companies by sector.

Use the `percentile_disc()` function to compute the median:
```sql
percentile_disc(0.5) 
WITHIN GROUP (ORDER BY column_name)
```

### Create a temp table
Find the Fortune 500 companies that have profits in the top 20% for their sector (compared to other Fortune 500 companies).

To do this, first, find the 80th percentile of profit for each sector with
```sql
percentile_disc(fraction) 
WITHIN GROUP (ORDER BY sort_expression)
```
and save the results in a temporary table.

Then join `fortune500` to the temporary table to select companies with profits greater than the 80th percentile cut-off.

### Create a temp table to simplify a query
The Stack Overflow data contains daily question counts through 2018-09-25 for all tags, but each tag has a different starting date in the data.

Find out how many questions had each tag on the first date for which data for the tag is available, as well as how many questions had the tag on the last day. Also, compute the difference between these two values.

To do this, first compute the minimum date for each tag. Then use the minimum dates to select the `question_count` on both the first and last day.

To select the `question_count` for both the first and last day, join the table of minimum dates to two different copies of the `stackoverflow` table: one for each column - first day and last day - aliased with different names.

### Insert into a temp table
While you can join the results of multiple similar queries together with `UNION`, sometimes it's easier to break a query down into steps. You can do this by creating a temporary table and inserting rows into it.

Compute the correlations between each pair of `profits`, `profits_change`, and `revenues_change` from the Fortune 500 data.

The resulting temporary table should have the following structure:

| measure         | profits | profits_change | revenues_change |
| :-------------- | :-      | :---           | :---            |
| profits         | 1.00    | #              | #               |
| profits_change  | #       | 1.00           | #               |
| revenues_change | #       | #              | 1.00            |

Recall the round() function to make the results more readable:
```sql
round(column_name::numeric, decimal_places)
```