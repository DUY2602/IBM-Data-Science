-- Query to test if the tables can link to each other
SELECT * FROM Employees
WHERE department in (
						SELECT dept_name FROM Departments
					);

-- Query the department that has employee whose salary is higher than 70000                    
SELECT * FROM Departments
WHERE dept_name IN (
					select department from Employees 
					where salary > 7000
                    );

-- Get the projects carried by employees
SELECT e.name, e.department, e.salary,
		p.project_name
FROM Employees e
JOIN Projects p on e.id = p.emp_id
		