-- CREATE DATABASE trysql;
-- USE trysql;

-- CREATE TABLE users (
-- id INT AUTO_INCREMENT PRIMARY KEY,
-- name VARCHAR(100) NOT NULL,
-- email VARCHAR(100) UNIQUE NOT NULL,
-- gender ENUM('Male', 'Female', 'Other'),
-- dob DATE,
-- salary DECIMAL(10,2),
-- created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

-- INSERT INTO users (name, email, gender, dob, salary) VALUES
-- ('Aarav', 'aarav@example.com', 'Male', '1995-05-14', 65000.00),
-- ('Ananya', 'ananya@example.com', 'Female', '1990-11-23', 72000.00),
-- ('Raj', 'raj@example.com', 'Male', '1988-02-17', 58000.00),
-- ('Sneha', 'sneha@example.com', 'Female', '2000-08-09', 50000.00),
-- ('Farhan', 'farhan@example.com', 'Male', '1993-12-30', 61000.00),
-- ('Priyanka', 'priyanka@example.com', 'Female', '1985-07-12', 84000.00),
-- ('Aisha', 'aisha@example.com', 'Female', '1997-03-25', 56000.00),
-- ('Aditya', 'aditya@example.com', 'Male', '1992-06-17', 69000.00),
-- ('Meera', 'meera@example.com', 'Female', '1989-09-05', 77000.00),
-- ('Ishaan', 'ishaan@example.com', 'Male', '2001-10-02', 45000.00),
-- ('Tanvi', 'tanvi@example.com', 'Female', '1994-04-18', 62000.00),
-- ('Rohan', 'rohan@example.com', 'Male', '1986-12-01', 75000.00),
-- ('Zoya', 'zoya@example.com', 'Female', '1998-01-15', 54000.00),
-- ('Karan', 'karan@example.com', 'Male', '1990-08-22', 68000.00),
-- ('Nikita', 'nikita@example.com', 'Female', '1987-03-10', 71000.00),
-- ('Manav', 'manav@example.com', 'Male', '1996-11-29', 61000.00),
-- ('Divya', 'divya@example.com', 'Female', '1991-02-28', 57000.00),
-- ('Harshit', 'harshit@example.com', 'Male', '1993-09-09', 65000.00),
-- ('Ritika', 'ritika@example.com', 'Female', '1999-05-05', 52000.00),
-- ('Imran', 'imran@example.com', 'Male', '1995-07-30', 63000.00),
-- ('Juhi', 'juhi@example.com', 'Female', '1992-10-14', 59000.00),
-- ('Tushar', 'tushar@example.com', 'Male', '1990-01-08', 73000.00),
-- ('Lata', 'lata@example.com', 'Female', '1984-11-11', 78000.00),
-- ('Yash', 'yash@example.com', 'Male', '1997-06-06', 64000.00),
-- ('Fatima', 'fatima@example.com', 'Female', '1993-03-03', 55000.00);

-- SELECT * FROM users;

-- ALTER TABLE users
-- ADD CONSTRAINT unique_name
-- UNIQUE (name);
-- DESCRIBE users;

-- ALTER TABLE users
-- ADD CONSTRAINT chk_dob
-- CHECK (dob > '1980-01-10');

-- CREATE TABLE addresses (
--  id INT AUTO_INCREMENT PRIMARY KEY,
--  user_id INT,
--  street VARCHAR(255),
--  city VARCHAR(100),
--  state VARCHAR(100),
--  pincode VARCHAR(10),
--  
--  FOREIGN KEY (user_id)
--  REFERENCES users(id)
-- );

-- INSERT INTO addresses
-- (user_id, street, city, state, pincode)
-- VALUES
-- (1, '12 MG Road', 'Nagpur', 'Maharashtra', '440001'),
-- (2, '45 Civil Lines', 'Amravati', 'Maharashtra', '444601'),
-- (3, '78 FC Road', 'Pune', 'Maharashtra', '411004'),
-- (4, '21 Baner Road', 'Pune', 'Maharashtra', '411045'),
-- (5, '15 Marine Drive', 'Mumbai', 'Maharashtra', '400001'),
-- (6, '32 Andheri Road', 'Mumbai', 'Maharashtra', '400053'),
-- (7, '18 Connaught Place', 'Delhi', 'Delhi', '110001'),
-- (8, '56 Koramangala Road', 'Bangalore', 'Karnataka', '560034'),
-- (9, '29 Koregaon Park', 'Pune', 'Maharashtra', '411001'),
-- (10, '41 Banjara Hills', 'Hyderabad', 'Telangana', '500034'),
-- (11, '67 MG Road', 'Bangalore', 'Karnataka', '560001'),
-- (12, '23 Saket Road', 'Delhi', 'Delhi', '110017'),
-- (13, '14 Park Street', 'Kolkata', 'West Bengal', '700016'),
-- (14, '88 Powai Road', 'Mumbai', 'Maharashtra', '400076'),
-- (15, '37 Viman Nagar', 'Pune', 'Maharashtra', '411014'),
-- (16, '52 Dharampeth', 'Nagpur', 'Maharashtra', '440010'),
-- (17, '19 Gomti Nagar', 'Lucknow', 'Uttar Pradesh', '226010'),
-- (18, '73 Civil Lines', 'Jaipur', 'Rajasthan', '302006'),
-- (19, '26 Kalyani Nagar', 'Pune', 'Maharashtra', '411006'),
-- (20, '64 Bandra West', 'Mumbai', 'Maharashtra', '400050'),
-- (21, '11 Shivaji Nagar', 'Pune', 'Maharashtra', '411005'),
-- (22, '35 Indiranagar', 'Bangalore', 'Karnataka', '560038'),
-- (23, '48 Alkapuri', 'Vadodara', 'Gujarat', '390007'),
-- (24, '17 Wardha Road', 'Nagpur', 'Maharashtra', '440012'),
-- (25, '62 Vashi Road', 'Navi Mumbai', 'Maharashtra', '400703');

-- SELECT users.name, addresses.city 
-- FROM users
-- INNER JOIN addresses
-- ON users.id = addresses.user_id;

-- SELECT users.name, addresses.city
-- FROM users
-- LEFT JOIN addresses
-- ON users.id = addresses.user_id;

-- CREATE TABLE admin_users (
--  id INT PRIMARY KEY,
--  name VARCHAR(100),
--  email VARCHAR(100),
--  gender ENUM('Male', 'Female', 'Other'),
--  date_of_birth DATE,
--  salary INT
-- );

-- INSERT INTO admin_users
-- (id, name, email, gender, date_of_birth, salary)
-- VALUES
-- (101, 'Anil Kumar', 'anil@example.com',
-- 'Male', '1985-04-12', 60000),
-- (102, 'Pooja Sharma', 'pooja@example.com',
-- 'Female', '1992-09-20', 58000),
-- (103, 'Rakesh Yadav', 'rakesh@example.com',
-- 'Male', '1989-11-05', 54000),
-- (104, 'Fatima Begum', 'fatima@example.com',
-- 'Female', '1990-06-30', 62000);

-- SELECT name FROM users
-- UNION ALL
-- SELECT name from admin_users;

-- SELECT * FROM users;
-- SELECT name, email, salary FROM users;

-- SELECT * FROM users
-- WHERE salary > 60000;

-- SELECT * FROM users
-- WHERE gender = 'Female' AND salary > 60000;

-- SELECT * FROM users
-- WHERE salary BETWEEN 55000 AND 70000;

-- UPDATE addresses
-- SET city = NULL 
-- WHERE id = 14;
-- SELECT * FROM addresses; 

-- SELECT users.name, addresses.city
-- FROM users
-- JOIN addresses
-- ON userS.id = addresses.user_id
-- WHERE addresses.city IS NULL;

-- SELECT * FROM users
-- WHERE name LIKE 'A%';

-- SELECT * FROM users
-- WHERE name LIKE '%a';

-- SELECT * FROM users
-- WHERE name LIKE '%ya%';

-- SELECT * FROM users
-- WHERE gender IN ('Male', 'Female');

-- SELECT * FROM users
-- WHERE gender = 'Female' AND salary >= 60000
-- ORDER BY salary DESC
-- LIMIT 3;

-- UPDATE users
-- SET salary = salary + 5000
-- WHERE salary < 60000;
-- SELECT * FROM users;

-- UPDATE users
-- SET salary = 55000
-- WHERE name = 'Ishaan';
-- SELECT * FROM users;

-- SELECT * FROM users
-- WHERE id = 25;

-- DELETE FROM users
-- WHERE id = 25;
-- SELECT * FROM users;

-- SELECT  addresses.user_id, users.name, users.email, addresses.street, addresses.city, addresses.state
-- FROM users
-- JOIN addresses
-- ON users.id = addresses.user_id; 

-- SELECT  addresses.user_id, users.name, users.email, addresses.street, addresses.city, addresses.state
-- FROM users
-- LEFT JOIN addresses
-- ON users.id = addresses.user_id; 

-- DESCRIBE users;
-- ALTER TABLE users
-- MODIFY COLUMN name VARCHAR(50) NOT NULL;

-- ALTER TABLE users
-- DROP INDEX unique_name;

-- SHOW CREATE TABLE users;
-- DESCRIBE users;

-- SHOW INDEX FROM users;

-- SELECT COUNT(*) FROM users;

-- SELECT COUNT(*) FROM users
-- WHERE gender = 'Female';

-- SELECT MIN(salary) AS min_salary,
-- MAX(salary) AS max_salary
-- FROM users;

-- SELECT SUM(salary) AS total_payoff
-- FROM users;

-- SELECT AVG(salary) AS avg_salary
-- FROM users;

-- SELECT gender, AVG(salary) as avg_salary
-- FROM users
-- GROUP BY gender;

-- SELECT name, LENGTH(name) as len_name
-- FROM users

-- SELECT name,
-- UPPER(name) as uppercase_name
-- FROM users;

-- SELECT name,
-- LOWER(name) as lowercase_name
-- FROM users;

-- SELECT id, name,
-- UPPER(name) as uppercase,
-- LOWER(name) as lowercase,
-- LENGTH(name) as name_length
-- FROM users;

-- SELECT id, 
-- CONCAT(name,'<',email,'>') AS user_contact
-- FROM users;

-- SELECT NOW();

-- SELECT name,
-- DAYNAME(dob) as birth_day,
-- DAY(dob) as birth_date,
-- MONTH(dob) as birth_month,
-- YEAR(dob) as birth_year
-- FROM users; 

-- SELECT name,
-- DATEDIFF(CURDATE(), dob) AS days_lived
-- FROM users;

-- SELECT name,
-- TIMESTAMPDIFF(YEAR, dob, CURDATE())
-- AS age
-- FROM users;

-- SELECT salary,
-- ROUND(salary) AS rounded,
-- FLOOR(salary) AS floored,
-- CEIL(salary) AS ceiled
-- FROM users;

-- SELECT id,
-- MOD(id, 2) AS remainder
-- FROM users;

-- SELECT name, gender,
-- IF(gender = 'Female', 'Yes', 'No')
-- AS is_female
-- FROM users;

-- SET AUTOCOMMIT = 0;
-- DELETE FROM users
-- WHERE id = 6;

-- SELECT COUNT(*) AS total_users
-- FROM users;

-- SELECT COUNT(*) AS total_females
-- FROM users
-- WHERE gender = 'Female';

-- SELECT SUM(salary) AS total_salary
-- FROM users;

-- SELECT AVG(salary) as avg_salary
-- FROM users;

-- SELECT MIN(salary) as min_salary
-- FROM users; 

-- SELECT MAX(salary) as max_salary
-- FROM users;

-- SELECT MAX(salary) as maximum_salary,
-- MIN(salary) as minimum_salary
-- FROM users;

-- SELECT SUM(salary) as salary_females
-- FROM users
-- WHERE gender = 'Female';

-- SELECT AVG(salary) as avg_salary_males
-- FROM users
-- WHERE gender = 'Male';

-- SELECT gender,
-- AVG(salary)
-- FROM users
-- GROUP BY gender;

-- SELECT gender,
-- COUNT(*) AS user_count
-- FROM users
-- GROUP BY gender;

-- SELECT gender,
-- SUM(salary)
-- FROM users
-- GROUP BY gender;

-- SELECT gender,
-- MIN(salary)
-- FROM users
-- GROUP BY gender;

-- SELECT gender,
-- MAX(salary)
-- FROM users
-- GROUP BY gender;

-- SELECT gender,
-- AVG(salary) AS avg_salary
-- FROM users
-- GROUP BY gender
-- ORDER BY avg_salary DESC;

-- SELECT salary, 
-- COUNT(*) as users_count
-- FROM users
-- GROUP BY salary;

-- SELECT gender,
-- COUNT(*) as user_count
-- FROM users
-- GROUP BY gender
-- HAVING user_count > 5;

-- SELECT gender,
-- AVG(salary) as avg_salary
-- FROM users
-- GROUP BY gender
-- HAVING avg_salary > 65000;

-- SELECT salary, 
-- COUNT(*) AS user_count 
-- FROM users
-- GROUP BY salary
-- HAVING user_count > 1;

-- SELECT gender,
-- COUNT(*) AS user_count, 
-- AVG(salary) AS avg_salary
-- FROM users
-- GROUP BY gender
-- HAVING user_count > 5 AND  avg_salary > 60000;

-- SELECT name, 
-- LENGTH(name) as name_length
-- FROM users;

-- SELECT name, 
-- UPPER(name) as upper_case
-- FROM users;

-- SELECT name, 
-- LOWER(name) as lower_case
-- FROM users;

-- SELECT name,
-- CONCAT(name, ' <',email,'>') as user_contact
-- FROM users;

-- SELECT name, 
-- UPPER(name) as upper_case,
-- LOWER(name) as lower_case, 
-- LENGTH(name) as name_length
-- FROM users;

-- SELECT name,
-- YEAR(dob) as birth_year,
-- MONTH(dob) as birth_month,
-- DAY(dob) as birth_date,
-- DAYNAME(dob) as birth_day,
-- DATEDIFF(CURDATE(), dob) as number_days,
-- timestampdiff(YEAR, dob, CURDATE()) as age
-- FROM users;

-- SELECT name,
-- ROUND(salary, -3) as round,
-- FLOOR(salary/1000)*1000 as floor,
-- MOD(salary, 10000) as mod_sal
-- FROM users;

-- SELECT name, salary,
-- IF(salary > 70000, 'HIGH', 'LOW') as amount
-- FROM users;

-- SELECT name, 
-- IF (salary >= 60000, 'Eligible', 'Not Eligible') as eligibility
-- FROM users;

-- SELECT name, salary,
-- IF(salary > (SELECT AVG(salary) FROM users), 'Above AVG', 'Below AVG') as level
-- FROM users;

-- SELECT COUNT(*) AS total_users,
--        SUM(salary) AS total_salary,
--        AVG(salary) AS average_salary,
--        MIN(salary) AS minimum_salary,
--        MAX(salary) AS maximum_salary
-- FROM users;

-- SHOW CREATE TABLE addresses;

-- SELECT users.name, addresses.city
-- FROM users
-- INNER JOIN addresses
-- ON users.id = addresses.user_id;

-- SELECT id, name FROM users
-- UNION
-- SELECT id, name FROM admin_users;

-- SELECT name,
-- 'User' AS role
-- FROM users
-- UNION
-- SELECT name,
-- 'Admin' AS role
-- FROM admin_users;

-- SELECT name FROM users
-- UNION
-- SELECT name FROM admin_users
-- ORDER BY name;