-- Count the number of tags with each type
SELECT type, count(type) AS count
FROM tag_type
 -- To get the count for each type, what do you need to do?
GROUP BY type
 -- Order the results with the most common
 -- tag types listed first
ORDER BY count DESC;

-- Select the 3 columns desired
SELECT name, tag_type.tag, tag_type.type
FROM company
  	   -- Join to the tag_company table
       INNER JOIN tag_company 
       ON company.id = tag_company.company_id
       -- Join to the tag_type table
       INNER JOIN tag_type
       ON tag_company.tag = tag_type.tag
  -- Filter to most common type
WHERE type='cloud';