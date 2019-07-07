## Exploring categorical data and unstructured text
Text, or character, data can get messy, but you'll learn how to deal with inconsistencies in case, spacing, and delimiters. Learn how to use a temporary table to recode messy categorical data to standardized values you can count and aggregate. Extract new variables from unstructured text as you explore help requests submitted to the city of Evanston, IL.

### Count the categories
In this chapter, we'll be working mostly with the Evanston 311 data in table `evanston311`. This is data on help requests submitted to the city of Evanston, IL.

This data has several character columns. Start by examining the most frequent values in some of these columns to get familiar with the common categories.

### Trimming
Some of the `street` values in `evanston311` include house numbers with `#` or `/` in them. In addition, some street values end in a `.`.

Remove the house numbers, extra punctuation, and any spaces from the beginning and end of the `street` values as a first attempt at cleaning up the values.

### Exploring unstructured text
The `description` column of `evanston311` has the details of the inquiry, while the `category` column groups inquiries into different types. How well does the `category` capture what's in the `description`?

`LIKE` and `ILIKE` queries will help you find relevant descriptions and categories. Remember that with `LIKE` queries, you can include a `%` on each side of a word to find columns that contain the word. For example:

```sql
SELECT category
FROM evanston311
WHERE category LIKE '%Taxi%';
 ```
 
`%` matches 0 or more characters.

Building up the query through the steps below, find inquires that mention trash or garbage in the description without trash or garbage being in the category. What are the most frequent categories for such inquiries?

### Concatenate strings
House number (`house_num`) and `street` are in two separate columns in `evanston311`. Concatenate them together with `concat()` with a space in between the values.

### Split strings on a delimiter
The street suffix is the part of the street name that gives the type of street, such as Avenue, Road, or Street. In the Evanston 311 data, sometimes the `street` suffix is the full word, while other times it is the abbreviation.

Extract just the first word of each `street` value to find the most common streets regardless of the suffix.

To do this, use

```sql
split_part(string_to_split, delimiter, part_number)
```

### Shorten long strings
The `description` column of `evanston311` can be very long. You can get the length of a string with the `length()` function.

For displaying or quickly reviewing the data, you might want to only display the first few characters. You can use the `left()` function to get a specified number of characters at the start of each value.

To indicate that more data is available, concatenate `'...'` to the end of any shortened `description`. To do this, you can use a `CASE WHEN` statement to add `'...'` only when the string length is greater than 50.

Select the first 50 characters of `description` when description starts with `"I ..."`.

### Create an "other" category with CASE WHEN
There are over 100 zip codes in the Evanston 311 data, but there are only 3 major zip codes in the city. If we want to summarize requests by zip code, it would be useful to group all of the low frequency zip codes together in an "other" category.

Remember, `CASE WHEN` statements have the following structure:

```sql
CASE WHEN condition THEN value 
     ELSE value 
     END 
```

### Group and recode values
There are almost 150 distinct values of `evanston311.category`. But some of these categories are similar, with the form "Main Category - Details". We can get a better sense of what requests are common if we aggregate by the main category.

To do this, create a temporary table `recode` mapping distinct `category` values to new, `standardized` values. Make the `standardized` values the part of the category before a dash (`'-'`). Extract this value with the `split_part()` function:

```sql
split_part(string text, delimiter text, field int)
```

You'll also need to do some additional cleanup of a few cases that don't fit this pattern.

Then the `evanston311` table can be joined to `recode` to group requests by the new `standardized` category values.

### Create a table with indicator variables
Determine whether medium and high priority requests in the `evanston311` data are more likely to contain requesters' contact information: an email address or phone number.

* Emails contain an @.
* Phone numbers have the pattern of three characters, dash, three characters, dash, four characters. For example: 555-555-1212.

Use `LIKE` to match these patterns. Remember`%` matches any number of characters (even 0), and`_` matches a single character. You may need to experiment to find the right pattern!

Create and store indicator variables for email and phone in a temporary table. `LIKE` produces True or False as a result, but casting a boolean (True or False) as an `integer` converts True to 1 and False to 0. This makes the values easier to summarize later.