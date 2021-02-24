-- Create Retirement Titles table
SELECT  e.emp_no,
        e.first_name,
        e.last_name,
        ts.title,
		ts.from_date,
		ts.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ts
	ON (e.emp_no = ts.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no ASC;


-- Create Unique Titles table
SELECT DISTINCT ON (rt.emp_no)
	   rt.emp_no,
	   rt.first_name,
	   rt.last_name,
	   rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY rt.emp_no ASC, rt.to_date DESC;

-- Pending retiree count by job title
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY ut.count DESC;