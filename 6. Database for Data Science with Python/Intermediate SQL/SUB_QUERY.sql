USE Intermediate_SQL;

-- SUB_QUERY: Query in quéry
-- Query the employees that have the salary higher than average salary of all employees
SELECT * FROM Employees
WHERE salary > (
				SELECT AVG(salary) 
                FROM Employees
                );
                
-- Query the employee that has the highest salary
SELECT * FROM Employees
WHERE hire_date = (
					SELECT MAX(hire_date)
                    FROM Employees
                    );
                    
-- Query the department where all employees are hired from 2020
SELECT department FROM Employees
WHERE department IN (
					SELECT department
                    FROM Employees
                    GROUP BY department
                    HAVING MIN(YEAR(hire_date)) >= 2020
                    )
GROUP BY department;