use getting_started_with_sql;

-- LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
SELECT name, type, designed_by
FROM Languages
WHERE designed_by like 'B%';			-- Select records where designed_by starts with B


-- The BETWEEN operator selects values within a given range. 
-- The values can be numbers, text, or dates.
SELECT name, type, first_appeared
FROM Languages
WHERE first_appeared BETWEEN 1990 AND 2010;		-- Select records which first_appeared in between 1990 and 2010


-- ORDER BY keyword is used to sort the result-set in ascending or descending order. 
-- The default is ascending.
SELECT name, type, first_appeared
FROM Languages
ORDER BY first_appeared DESC;                 --  Order the records by first_appeared from newest


-- GROUP BY clause is used in collaboration with the SELECT statement to arrange data with identical values into groups.
SELECT type, COUNT(*)
FROM Languages
GROUP BY type;			-- Count the records of each type


-- HAVING clause is used in conjunction with GROUP BY clause in collaboration with the SELECT statement.
-- To filter the data as per the given condition and then group as per identical values of a specified parameter.
SELECT type, name, first_appeared as established_year
FROM Languages
GROUP BY type, name, first_appeared
HAVING first_appeared > 2000