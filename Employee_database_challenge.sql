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


