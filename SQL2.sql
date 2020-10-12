SELECT COUNT(*) AS "Employees Number", t.title
FROM employees e 
INNER JOIN titles t ON t.emp_no = e.emp_no
WHERE birth_date > '1965-01-01'
group by t.title;

SELECT AVG(s.salary) AS "Average Salary", t.title
FROM salaries s 
INNER JOIN titles t ON s.emp_no = t.emp_no
GROUP BY t.title;

SELECT SUM(s.salary) AS "Expenses per year", d.dept_name AS "Departement Name"
FROM salaries s 
INNER JOIN dept_emp de ON s.emp_no = de.emp_no
INNER JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Marketing'
AND year(s.from_date) <= 1992 AND year(s.to_date) >= 1990

