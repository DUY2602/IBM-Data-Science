-- 1. Tạo database
CREATE DATABASE advanced_sql;
USE advanced_sql;

-- 2. Bảng departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL
);

-- 3. Bảng employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100),
    gender ENUM('M','F'),
    hire_date DATE,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- 4. Bảng projects
CREATE TABLE projects (
    proj_id INT PRIMARY KEY AUTO_INCREMENT,
    proj_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(10,2)
);

-- 5. Bảng assignments (nhiều-nhiều employees ↔ projects)
CREATE TABLE assignments (
    emp_id INT,
    proj_id INT,
    hours_per_week INT,
    PRIMARY KEY (emp_id, proj_id),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY (proj_id) REFERENCES projects(proj_id)
);

-- 6. Bảng salaries
CREATE TABLE salaries (
    emp_id INT PRIMARY KEY,
    base_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

-- Thêm departments
INSERT INTO departments (dept_name) VALUES 
('HR'), ('Engineering'), ('Sales'), ('Marketing');

-- Thêm employees
INSERT INTO employees (emp_name, gender, hire_date, dept_id) VALUES
('Alice Johnson', 'F', '2018-05-10', 2),
('Bob Smith', 'M', '2020-01-15', 1),
('Charlie Brown', 'M', '2017-03-22', 3),
('Diana Prince', 'F', '2019-07-11', 2),
('Ethan Hunt', 'M', '2021-11-30', 4);

-- Thêm projects
INSERT INTO projects (proj_name, start_date, end_date, budget) VALUES
('AI System', '2023-01-01', '2023-12-31', 500000),
('Website Revamp', '2024-03-01', '2024-09-30', 200000),
('Sales Expansion', '2023-06-15', '2024-06-15', 300000);

-- Thêm assignments
INSERT INTO assignments VALUES
(1,1,40),(2,2,30),(3,3,20),(4,1,35),(5,2,25);

-- Thêm salaries
INSERT INTO salaries VALUES
(1, 80000, 5000),
(2, 60000, 3000),
(3, 70000, 4000),
(4, 90000, 8000),
(5, 50000, 2000);

