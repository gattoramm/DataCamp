## What's in the database?
Start exploring a database by identifying the tables and the foreign keys that link them. Look for missing values, count the number of observations, and join tables to understand how they're related. Learn about coalescing and casting data along the way.

### Count missing values
Which column of `fortune500` has the most missing values? To find out, you'll need to check each column individually, although here we'll check just three.

Course Note: While you're unlikely to encounter this issue during this exercise, note that if you run a query that takes more than a few seconds to execute, your session may expire or you may be disconnected from the server. You will not have this issue with any of the exercise solutions, so if your session expires or disconnects, there's an error with your query.

### Join tables
Part of exploring a database is figuring out how tables relate to each other. The `company` and `fortune500` tables don't have a formal relationship between them in the database, but this doesn't prevent you from joining them.

To join the tables, you need to find a column that they have in common where the values are consistent across the tables. Remember: just because two tables have a column with the same name, it doesn't mean those columns necessarily contain compatible data. If you find more than one pair of columns with similar data, you may need to try joining with each in turn to see if you get the same number of results.

Reference the [entity relationship diagram](https://github.com/gattoramm/DataCamp/blob/master/Skill/SQL/SQL%20Fundamentals/4%20SQL%20for%20Exploratory%20Data%20Analysis/erdiagram.png) if needed.

### Read an entity relationship diagram
The information you need is sometimes split across multiple tables in the database.

What is the most common `stackoverflow` `tag_type`? What companies have a `tag` of that `type`?

To generate a list of such companies, you'll need to join three tables together.

Reference the [entity relationship diagram](https://github.com/gattoramm/DataCamp/blob/master/Skill/SQL/SQL%20Fundamentals/4%20SQL%20for%20Exploratory%20Data%20Analysis/erdiagram.png) as needed when determining which columns to use when joining tables.

### Coalesce
The `coalesce()` function can be useful for specifying a default or backup value when a column contains `NULL` values.

`coalesce()` checks arguments in order and returns the first non-`NULL` value, if one exists.

* `coalesce(NULL, 1, 2)` = 1
* `coalesce(NULL, NULL)` = `NULL`
* `coalesce(2, 3, NULL)` = 2

In the `fortune500` data, `industry` contains some missing values. Use `coalesce()` to use the value of `sector` as the industry when `industry` is `NULL`. Then find the most common industry.

### Coalesce with a self-join
You previously joined the `company` and `fortune500` tables to find out which companies are in both tables. Now, also include companies from `company` that are subsidiaries of Fortune 500 companies as well.

To include subsidiaries, you will need to join `company` to itself to associate a subsidiary with its parent company's information. To do this self-join, use two different aliases for `company`.

`coalesce` will help you combine the two `ticker` columns in the result of the self-join to join to `fortune500`.

### Effects of casting
When you cast data from one type to another, information can be lost or changed. See how the casting changes values and practice casting data using the CAST() function and the :: syntax.
```sql
SELECT CAST(value AS new_type);
SELECT value::new_type;
```

### Summarize the distribution of numeric values
Was 2017 a good or bad year for revenue of Fortune 500 companies? Examine how revenue changed from 2016 to 2017 by first looking at the distribution of `revenues_change` and then counting companies whose revenue increased.


