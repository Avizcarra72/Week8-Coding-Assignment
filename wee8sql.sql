SELECT COUNT(e.emp_no) as "Number of Employees", t.title FROM employees e
INNER JOIN titles t ON e.emp_no = t.emp_no WHERE e.birth_date = '1965-01-01'
GROUP BY t.title;

SELECT AVG(s.salary) as "Average Salary", t.title FROM salaries s
INNER JOIN titles t ON s.emp_no = t.emp_no
GROUP BY t.title;



SELECT COUNT(s.salary) as "Salary Spent", de.dept_name FROM salaries s 
INNER JOIN dept_emp d ON d.emp_no = s.emp_no
INNER JOIN departments de on de.dept_no = d.dept_no 
WHERE de.dept_name = 'marketing' 
AND d.from_date >= '1990-01-01'
AND d.to_date <= '1992-12-31'
GROUP BY de.dept_name;