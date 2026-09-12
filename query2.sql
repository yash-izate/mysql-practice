-- CREATE DATABASE IF NOT EXISTS learnsql;
-- USE learnsql;

-- CREATE TABLE users (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     email VARCHAR(100) UNIQUE NOT NULL,
--     gender ENUM('Male', 'Female', 'Other'),
--     date_of_birth DATE,
--     salary DECIMAL(10, 2),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
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
-- SELECT name, date_of_birth, email, salary FROM users;

-- SELECT * FROM users 
-- WHERE gender = 'Female';

-- SELECT id,name, salary, email, date_of_birth FROM users 
-- WHERE gender = 'Male' ORDER BY date_of_birth ASC;

-- SELECT * FROM users
-- WHERE date_of_birth < '1995-09-09' ORDER BY salary DESC;

-- SELECT * FROM users
-- WHERE date_of_birth BETWEEN '1995-09-09' AND '1999-09-09';

-- SELECT * FROM users
-- WHERE gender != 'Male' AND salary >= 65000;

-- SELECT * FROM users
-- WHERE name LIKE 'A%';

-- SELECT * FROM users
-- WHERE name LIKE '%vi%';

-- SELECT * FROM users
-- LIMIT 5;

-- SELECT * FROM users
-- Limit 5 OFFSET 10;

-- SELECT * FROM users
-- Limit 5, 10;

-- SELECT * FROM users
-- ORDER BY created_at DESC
-- LIMIT 10;

-- SELECT * FROM users
-- WHERE salary > 60000
-- ORDER BY created_at DESC
-- LIMIT 5 OFFSET 5;

-- SELECT * FROM users;

-- UPDATE users 
-- SET salary = 45000 where id = 5; 
-- SELECT * FROM users
-- LIMIT 10;

-- UPDATE users
-- SET name = 'Alisa', email = 'alisa@example.com'
-- WHERE id = 2;
-- SELECT * from users;

-- UPDATE users
-- SET salary = 75000
-- WHERE id = 5;
-- SELECT * FROM users;

-- UPDATE users
-- SET name = 'Aisha Khan'
-- WHERE email = 'aisha@example.com';
-- SELECT * FROM users;

-- UPDATE users
-- SET salary = salary + 10000
-- WHERE salary < 60000;
-- SELECT * FROM users;

-- UPDATE users
-- SET gender = 'Other'
-- WHERE name = 'Ishaan';
-- SELECT * FROM users;

-- DELETE FROM users
-- WHERE id = 3;
-- SELECT * FROM users;


