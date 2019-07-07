## What's in the database?
Start exploring a database by identifying the tables and the foreign keys that link them. Look for missing values, count the number of observations, and join tables to understand how they're related. Learn about coalescing and casting data along the way.

### Count missing values
Which column of `fortune500` has the most missing values? To find out, you'll need to check each column individually, although here we'll check just three.

Course Note: While you're unlikely to encounter this issue during this exercise, note that if you run a query that takes more than a few seconds to execute, your session may expire or you may be disconnected from the server. You will not have this issue with any of the exercise solutions, so if your session expires or disconnects, there's an error with your query.

### Join tables
Part of exploring a database is figuring out how tables relate to each other. The `company` and `fortune500` tables don't have a formal relationship between them in the database, but this doesn't prevent you from joining them.

To join the tables, you need to find a column that they have in common where the values are consistent across the tables. Remember: just because two tables have a column with the same name, it doesn't mean those columns necessarily contain compatible data. If you find more than one pair of columns with similar data, you may need to try joining with each in turn to see if you get the same number of results.

Reference the entity relationship diagram if needed.















