USE Intermediate_SQL;

-- LENGTH to get the length of a string
SELECT id, name, LENGTH(name)
FROM Employees
ORDER BY LENGTH(name) DESC;


-- UCASE to transform all characters in the string to uppercase
SELECT id, name, UCASE(name) as name_to_uppercase
FROM Employees;


-- LCASE to transform all characters in the string to lowercase
SELECT id, name, LCASE(name) as name_to_lowercase
FROM Employees;


-- CONCAT to concat the strings
SELECT id, name, department, CONCAT(name, ' ', department) as concat_name_department
FROM Employees;