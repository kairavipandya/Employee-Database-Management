-- Departments Table
CREATE TABLE departments
(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Employees Table
CREATE TABLE employees
(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    job_title_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (job_title_id) REFERENCES job_titles(job_title_id)
);

-- Salaries Table
CREATE TABLE salaries
(
    salary_id INT PRIMARY KEY,
    employee_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- Job Titles Table
CREATE TABLE job_titles
(
    job_title_id INT PRIMARY KEY,
    job_title VARCHAR(100)
);
