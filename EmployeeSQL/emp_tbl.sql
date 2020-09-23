-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex,
salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date
from employees
	where hire_date >= '1985-12-31'
	AND hire_date < '1987-01-01';
	
-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.