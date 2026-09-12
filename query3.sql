-- CREATE DATABASE companysql;
-- USE companysql;

-- CREATE TABLE employees (
-- id INT AUTO_INCREMENT PRIMARY KEY,
-- name VARCHAR(100) NOT NULL,
-- email VARCHAR(100) UNIQUE NOT NULL,
-- gender ENUM('Male','Female', 'Other'),
-- dob DATE,
-- department VARCHAR(50),
-- city VARCHAR(50),
-- salary DECIMAL(10,2),
-- created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

-- DESCRIBE employees;

-- INSERT INTO employees (name, email,gender, dob, department, city, salary)
-- VALUES
-- ('James', 'james@company.com', 'Male', '2003-07-10', 'IT', 'Nagpur', 45000),
-- ('Emily', 'emily@company.com', 'Female', '2004-03-16', 'HR', 'Amravati', 52000),
-- ('Robert', 'robert@company.com', 'Male', '2001-11-25', 'Finance', 'Mumbai', 68000),
-- ('Sarah', 'sarah@company.com', 'Female', '1999-06-18', 'IT', 'Pune', 75000),
-- ('David', 'david@company.com', 'Male', '2002-02-12', 'Sales', 'Delhi', 58000),
-- ('Alice', 'alice@company.com', 'Female', '1998-09-30', 'Finance', 'Mumbai', 82000),
-- ('John', 'john@company.com', 'Male', '2000-12-05', 'IT', 'Bangalore', 61000),
-- ('Sophia', 'sophia@company.com', 'Female', '2003-04-22', 'HR', 'Pune', 49000),
-- ('Michael', 'michael@company.com', 'Male', NULL, 'IT', 'Hyderabad', 55000);

-- SELECT * FROM employees;
-- SELECT name, email, department FROM employees;

-- SELECT * FROM employees
-- WHERE gender = 'Female';

-- SELECT * FROM employees
-- WHERE salary > 60000;

-- SELECT * FROM employees
-- WHERE salary <= 50000;

-- SELECT * FROM employees
-- WHERE salary BETWEEN 50000 AND 70000 ;

-- SELECT * FROM employees
-- WHERE department = 'IT' OR department = 'Finance';

-- SELECT * FROM employees
-- WHERE department IN ('IT', 'Finance');

-- SELECT * FROM employees
-- WHERE gender = 'Female' AND salary > 50000;

-- SELECT * FROM employees
-- WHERE gender = 'Female' OR gender = 'Male';

-- SELECT * FROM employees
-- WHERE dob IS NULL;

-- SELECT * FROM employees
-- WHERE dob IS NOT NULL;

-- SELECT * FROM employees
-- WHERE name LIKE 'S%';

-- SELECT * FROM employees
-- WHERE name LIKE '%a';

-- SELECT * FROM employees
-- WHERE name LIKE '%li%';

-- SELECT * FROM employees
-- ORDER BY salary ASC;

-- SELECT * FROM employees
-- ORDER BY salary DESC;

-- SELECT * FROM employees
-- ORDER BY name ASC;

-- SELECT * FROM employees
-- ORDER BY salary ASC
-- LIMIT 3;

-- SELECT * FROM employees
-- LIMIT 3 OFFSET 3;

-- UPDATE employees
-- SET salary = salary + 10000
-- WHERE id = 1;

-- UPDATE employees
-- SET city = 'Mumbai'
-- WHERE id = 5;

-- UPDATE employees
-- SET department = 'IT', salary = 72000
-- WHERE id = 3;

-- SELECT * FROM employees
-- WHERE id = 8;

-- DELETE FROM employees
-- WHERE id = 8;

-- DELETE FROM employees
-- WHERE department = 'HR';

-- UPDATE employees
-- SET email = 'james@company.com'
-- WHERE id = 3;

-- SELECT name, department, salary
-- FROM employees
-- WHERE salary >= 50000
--   AND gender = 'Female'
-- ORDER BY salary DESC
-- LIMIT 3;

-- SELECT * FROM employees;  