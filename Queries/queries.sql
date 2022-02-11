-- -- Creating tables for PH-EmployeeDB
-- CREATE TABLE departments (
-- 	dept_no VARCHAR(4) NOT NULL,
-- 	dept_name VARCHAR (40) NOT NULL,
-- 	PRIMARY KEY (dept_no),
-- 	UNIQUE (dept_name)
-- );

-- create table employees( 
-- emp_no int not null,
-- birth_date date not null,
-- first_name varchar not null,
-- last_name varchar not null,
-- gender varchar not null,
-- hire_date date not null,
-- primary key (emp_no)
-- );

-- CREATE TABLE dept_manager (
-- dept_no VARCHAR(4) NOT NULL,
--     emp_no INT NOT NULL,
--     from_date DATE NOT NULL,
--     to_date DATE NOT NULL,
-- FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
-- FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
--     PRIMARY KEY (emp_no, dept_no)
-- );

-- CREATE TABLE salaries (
--   emp_no INT NOT NULL,
--   salary INT NOT NULL,
--   from_date DATE NOT NULL,
--   to_date DATE NOT NULL,
--   FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
--   PRIMARY KEY (emp_no)
-- );

-- CREATE TABLE dept_emp (
--   emp_no INT NOT NULL,
--   dept_no varchar NOT NULL,
--   from_date DATE NOT NULL,
--   to_date DATE NOT NULL,
--   FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
-- 	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
--   PRIMARY KEY (emp_no, dept_no)
-- );

-- CREATE TABLE titles (
--   emp_no INT NOT NULL,
--   title varchar NOT NULL,
--   from_date DATE NOT NULL,
--   to_date DATE NOT NULL,
--   FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
--   PRIMARY KEY (emp_no)
-- );

-- drop table titles;

-- CREATE TABLE titles (
--   emp_no INT NOT NULL,
--   title varchar NOT NULL,
--   from_date DATE NOT NULL,
--   to_date DATE NOT NULL,
--   FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
-- );

-- select * from titles

-- select first_name, last_name
-- from employees
-- where birth_date between '1952-01-01' and '1955-12-31'

-- select first_name, last_name
-- from employees
-- where birth_date between '1952-01-01' and '1952-12-31'

-- -- Retirement eligibility
-- SELECT first_name, last_name
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- -- Number of employees retiring
-- SELECT COUNT(first_name)
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- SELECT first_name, last_name
-- INTO retirement_info
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- select * from retirement_info;