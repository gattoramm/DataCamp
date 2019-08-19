## SELECTion Box
Hit the ground running by learning the basics of SELECT statements to retrieve data from one or more columns. You'll also learn how to apply filters to both numeric and text data, and sort the results.

### Simple selections
It's time to begin writing your own queries! In this first coding exercise, you will use `SELECT` statements to retrieve columns from a database table. You'll be working with the `eurovision` table, which contains data relating to individual country performance at the [Eurovision Song Contest](https://en.wikipedia.org/wiki/Eurovision_Song_Contest) from 1998 to 2012.

After selecting columns, you'll also practice renaming columns, and limiting the number of rows returned.

### More selections
Now that you've practiced how to select one column at a time, it's time to practice selecting more than one column. You'll continue working with the `eurovision` table.

### Order by
In this exercise, you'll practice the use of `ORDER BY` using the `grid` dataset. It's loaded and waiting for you! It contains a subset of wider publicly available information on US power outages.

Some of the main columns include:

* `description`: The reason/ cause of the outage.
* `nerc_region`: The North American Electricity Reliability Corporation was formed to ensure the reliability of the grid and comprises several regional entities).
* `demand_loss_mw`: How much energy was not transmitted/consumed during the outage.

### Where
You won't usually want to retrieve every row in your database. You'll have specific information you need in order to answer questions from your boss or colleagues.

The `WHERE` clause is essential for selecting, updating (and deleting!) data from your tables. You'll continue working with the grid dataset for this exercise.

### Where again
When filtering strings, you need to wrap your value in 'single quotes', as you did in the previous exercise. You don't need to do this for numeric values, but you DO need to use single quotes for date columns.

In this course, dates are always represented in the `YYYY-MM-DD` format (Year-Month-Day), which is the default in Microsoft SQL Server.

### Working with NULL values
A NULL value could mean 'zero' - if something doesn't happen, it can't be logged in a table. However, NULL can also mean 'unknown' or 'missing'. So consider if it is appropriate to replace them in your results. NULL values provide feedback on data quality. If you have NULL values, and you didn't expect to have any, then you have an issue with either how data is captured or how it's entered in the database.

In this exercise, you'll practice filtering for NULL values, excluding them from results, and replacing them with alternative values.

### Exploring classic rock songs
It's time to rock and roll! In this set of exercises, you'll use the `songlist` table, which contains songs featured on the playlists of 25 classic rock radio stations.

First, let's get familiar with the data.

### Exploring classic rock songs - AND/OR
Having familiarized yourself with the `songlist` table, you'll now extend your `WHERE` clause from the previous exercise.

### Using parentheses in your queries
You can use parentheses to make the intention of your code clearer. This becomes very important when using AND and OR clauses, to ensure your queries return the exact subsets you need.