CREATE table Employee (
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	sex varchar NOT NULL,
	hire_date date NOT NULL,
	primary key (emp_no)
	
);

SELECT * FROM Employee

CREATE table Department(
	dept_no INT NOT NULL,
	dept_name varchar NOT NULL,
	primary key (dept_no)
);

SELECT * FROM Department

CREATE table Dept_emp(
	emp_no INT NOT NULL,
	dept_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Department(dept_no)
);

SELECT * FROM Dept_emp

CREATE table Dept_Manager(
	emp_no INT NOT NULL,
	dept_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Department(dept_no)
);

SELECT * FROM Dept_Manager

CREATE table Salaries(
	emp_no INT NOT NULL,
	salaries INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employee(emp_no)
);

SELECT * FROM Salaries

CREATE table Titles(
	title_id INT NOT NULL,
	title INT NOT NULL
);

SELECT * FROM Titles
