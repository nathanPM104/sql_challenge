CREATE TABLE departments (
    dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
)

CREATE TABLE dept_emp (
	emp_no INT NOT NULL, 
	dept_no VARCHAR NOT NULL
-- 	FOREIGN KEY(emp_no) REFERENCES employees(emp_no), 
-- 	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
	
)

CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL, 
	emp_no INT NOT NULL 
-- 	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
	
)

CREATE TABLE employees (
	emp_no INT PRIMARY KEY, 
	emp_title VARCHAR, 
	birth_date VARCHAR,
	first_name VARCHAR, 
	last_name VARCHAR, 
	sex VARCHAR, 
	hire_date VARCHAR
)

CREATE TABLE salary(
	emp_no INT, 
	salary INT, 
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no) 

)

CREATE TABLE titles(
	title_id VARCHAR, 
	title VARCHAR
)

drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists departments;
drop table if exists employees;
drop table if exists titles;
drop table if exists salaries;