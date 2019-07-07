-- Count the number of tags with each type
SELECT type, count(type) AS count
FROM tag_type
 -- To get the count for each type, what do you need to do?
GROUP BY type
 -- Order the results with the most common
 -- tag types listed first
ORDER BY count DESC;