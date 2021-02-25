--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT s.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM salaries AS s
JOIN employees AS e ON
s.emp_no=e.emp_no

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN DATE('01/01/1986') AND DATE('12/31/1986')
ORDER BY hire_date;

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no
FROM dept_mgr as dm
JOIN departments as d ON
dm.dept_no=d.dept_no

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de ON
e.emp_no=de.emp_no
JOIN departments as d ON
de.dept_no=d.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM employees as e
WHERE e.first_name = 'Hercules' AND SUBSTRING(e.last_name,1,1) = 'B';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de ON
e.emp_no=de.emp_no
JOIN departments as d ON
de.dept_no=d.dept_no
WHERE de.dept_no = 'd007';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de ON
e.emp_no=de.emp_no
JOIN departments as d ON
de.dept_no=d.dept_no
WHERE de.dept_no = 'd005' OR de.dept_no = 'd007';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) as "lname_count"
FROM employees
GROUP BY last_name
ORDER BY "lname_count" DESC;