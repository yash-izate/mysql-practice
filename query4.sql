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

SELECT * FROM users;
SELECT name, email, salary FROM users;

