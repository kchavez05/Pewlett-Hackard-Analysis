---- Create retirement titles table
-- select e.emp_no, e.first_name, e.last_name,
-- 	t.title, t.from_date, t.to_date
-- into retirement_titles
-- from employees as e
-- inner join titles as t
-- on (e.emp_no = t.emp_no)
-- where (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- order by e.emp_no;

-- -- Use Dictinct with Orderby to remove duplicate rows
-- SELECT DISTINCT ON (emp_no) first_name, last_name, title
-- INTO unique_titles
-- FROM retirement_titles
-- WHERE (to_date = '9999-01-01')
-- ORDER BY emp_no, to_date DESC;

-- -- Retrieve the number of employees by their most recent job title who are about to retire
-- SELECT COUNT(title) count, title
-- into retiring_titles
-- FROM unique_titles
-- group by title
-- order by count desc;

-- --Create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.
-- select distinct on (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
-- 		de.from_date, de.to_date,
-- 		t.title
-- into mentorship_eligibility
-- from employees as e
-- inner join dept_emp as de
-- on (e.emp_no=de.emp_no)
-- inner join titles as t
-- on (e.emp_no=t.emp_no)
-- where (t.to_date='9999-01-01')
-- and (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
-- order by e.emp_no;
	
