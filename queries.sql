-- Retrieve employee details
SELECT *
FROM employees;

-- Calculate average salaries per department
SELECT d.department_name, AVG(s.salary) AS average_salary
FROM departments d
    JOIN employees e ON d.department_id = e.department_id
    JOIN salaries s ON e.employee_id = s.employee_id
GROUP BY d.department_name;

-- Find employees with the highest salaries
SELECT e.employee_name, s.salary
FROM employees e
    JOIN salaries s ON e.employee_id = s.employee_id
WHERE s.salary = (SELECT MAX(salary)
FROM salaries);

-- Find employees with the lowest salaries
SELECT e.employee_name, s.salary
FROM employees e
    JOIN salaries s ON e.employee_id = s.employee_id
WHERE s.salary = (SELECT MIN(salary)
FROM salaries);

-- Identify any anomalies in the data (for example, employees with missing salaries)
SELECT *
FROM employees e
    LEFT JOIN salaries s ON e.employee_id = s.employee_id
WHERE s.salary IS NULL;
