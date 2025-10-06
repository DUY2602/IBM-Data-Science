CREATE DATABASE IF NOT EXISTS Intermediate_SQL;
USE Intermediate_SQL;

CREATE TABLE Employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO Employees (name, department, salary, hire_date) VALUES
('Alice Johnson', 'IT', 5500.00, '2020-03-15'),
('Bob Smith', 'HR', 4200.00, '2018-07-10'),
('Charlie Brown', 'IT', 6100.00, '2021-11-23'),
('Daisy Ridley', 'Finance', 5000.00, '2019-02-01'),
('Evan Taylor', 'IT', 7200.00, '2022-06-14'),
('Fiona Adams', 'Finance', 4900.00, '2017-09-30');

SELECT * FROM Employees;