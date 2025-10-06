USE Intermediate_SQL;

-- DAY to get the day part
SELECT name, DAY(hire_date) FROM Employees;

-- MONTH to get the month part
SELECT name, MONTH(hire_date) FROM Employees;

-- YEAR to get the year part 
SELECT name, YEAR(hire_date) FROM Employees;

-- DATE_ADD to add up the date
SELECT hire_date, DATE_ADD(hire_date, INTERVAL 5 DAY) as add_5_days FROM Employees;

-- DATE_SUB to subtract the date
SELECT hire_date, DATE_SUB(hire_date, INTERVAL 5 DAY) as subtract_5_days FROM Employees;

-- DATEDIFF to get the date difference between 2 dates
SELECT hire_date, DATEDIFF(CURRENT_DATE, hire_date) FROM Employees;

-- FROM_DAYS to get the YYYY-MM-DD format of the amount of days
SELECT DATEDIFF(CURRENT_DATE, hire_date), FROM_DAYS(DATEDIFF(CURRENT_DATE, hire_date)) FROM Employees;