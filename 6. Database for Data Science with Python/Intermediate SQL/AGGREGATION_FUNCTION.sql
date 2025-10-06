USE Intermediate_SQL;

-- SUM to get total salary of employees in each department, order from highest to lowest 
SELECT department, SUM(salary) as total_salary
FROM Employees
GROUP BY department
ORDER BY SUM(salary) DESC;


-- MAX to get the maximum salary of each department
SELECT department, MAX(salary)
FROM Employees
GROUP BY department;


-- MIN to get the minimum salary of each department
SELECT department, MIN(salary)
FROM Employees
GROUP BY department;


-- AVG to get the average salary of each department
SELECT department, AVG(salary)
FROM Employees
GROUP BY department;


-- ROUND to reduce number of decimal
SELECT department, ROUND(AVG(salary), 1)
FROM Employees
GROUP BY department;