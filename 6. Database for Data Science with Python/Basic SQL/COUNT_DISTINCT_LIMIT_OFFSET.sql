use getting_started_with_sql;

-- Select all the data in table Languages
SELECT * FROM Languages;

-- Count() => Number of records after query
-- Count all the records in the table
SELECT COUNT(*) FROM Languages;    -- Output: 16

-- Count the number of records match the condition
SELECT COUNT(*) FROM Languages		-- Output: 4 (Java, Javascript, Ruby, PHP)
WHERE first_appeared = 1995;

-- Distinct => Get the unique record
SELECT DISTINCT name FROM Languages;

-- Limit => Only get the first N records of the query
SELECT * FROM Languages LIMIT 5;

-- Offset => Get the records after N records
SELECT * FROM Languages LIMIT 5 OFFSET 5