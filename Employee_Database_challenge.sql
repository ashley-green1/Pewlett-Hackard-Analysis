-- Create retirement_titles table
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