select * from dept_emp
select * from dept_manager
select * from departments
select * from employees
select * from titles
select * from salary

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, 
employees.last_name, 
employees.first_name, 
employees.sex, 
salary.salary 
from employees
join salary on employees.emp_no = salary.emp_no;


-- List first name, last name, and hire date for employees who were hired in 1986.
select employees.last_name, 
employees.first_name,
employees.hire_date
FROM employees
WHERE hire_date >= '1986-01-01'
AND hire_date < '1987-01-01';
;


-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT a.emp_no, a.last_name, a.first_name, b.dept_name
FROM
	(select employees.emp_no, last_name, first_name, dept_no
	from employees
	JOIN dept_manager
	ON dept_manager.emp_no = employees.emp_no) AS a
JOIN departments as b
on a.dept_no = b.dept_no



-- List the department of each employee with the following information: employee number, last name, 
--first name, and department name.

SELECT a.emp_no, a.last_name, a.first_name, b.dept_name, b.dept_no
FROM
	(select employees.emp_no, last_name, first_name, dept_no
	from employees
	JOIN dept_emp
	ON dept_emp.emp_no = employees.emp_no) AS a
JOIN departments as b
on a.dept_no = b.dept_no


-- List first name, last name, and sex for employees whose first name
-- is "Hercules" and last names begin with "B."
select employees.last_name, 
employees.first_name,
employees.sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name like 'B%'
;

-- List all employees in the Sales department, including their employee number, last name, 
--first name, and department name.
SELECT a.emp_no, a.last_name, a.first_name, b.dept_name
FROM
	(SELECT employees.emp_no, last_name, first_name,dept_no
	FROM employees
	INNER JOIN dept_emp
	ON dept_emp.emp_no = employees.emp_no) AS a
INNER JOIN departments AS b
ON a.dept_no = b.dept_no
WHERE dept_name = 'Sales'
ORDER BY emp_no;

-- List all employees in the Sales and Development departments, including their employee number, last name, 
-- first name, and department name.
SELECT a.emp_no, a.last_name, a.first_name, b.dept_name
FROM
	(SELECT employees.emp_no, last_name, first_name,dept_no
	FROM employees
	INNER JOIN dept_emp
	ON dept_emp.emp_no = employees.emp_no) AS a
INNER JOIN departments AS b
ON a.dept_no = b.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development'
ORDER BY dept_name;

-- In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.

SELECT last_name, 
COUNT(last_name) AS "count_ln"
FROM employees
GROUP BY last_name
ORDER BY "count_ln" DESC;

