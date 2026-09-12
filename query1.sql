-- CREATE DATABASE startersql;

-- USE startersql;

-- CREATE TABLE users (
--  id INT AUTO_INCREMENT PRIMARY KEY,
--  name VARCHAR(100) NOT NULL,
--  email VARCHAR(100) UNIQUE NOT NULL,
--  gender ENUM('Male', 'Female', 'Other'),
--  date_of_birth DATE,
--  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- SELECT * FROM users;
-- SELECT name, email FROM users;

-- RENAME TABLE users TO customers;
-- RENAME TABLE customers TO users;

-- ALTER TABLE users
-- ADD COLUMN is_active BOOLEAN DEFAULT TRUE;
-- SELECT * FROM users;   

-- ALTER TABLE users
-- DROP COLUMN is_active;
-- SELECT * FROM users; 

-- ALTER TABLE users
-- MODIFY COLUMN name VARCHAR(150) NOT NULL;
-- SELECT * FROM users;

-- ALTER TABLE users
-- MODIFY COLUMN email VARCHAR(100) UNIQUE NOT NULL FIRST;
-- SELECT * FROM users;

-- ALTER TABLE users
-- MODIFY COLUMN email VARCHAR(100) UNIQUE NOT NULL After id;
-- SELECT * FROM users;

-- ALTER TABLE users
-- ADD COLUMN phone VARCHAR(10),
-- ADD COLUMN city VARCHAR(100);
-- SELECT * FROM users;

-- ALTER TABLE users
-- RENAME COLUMN phone TO contact;
-- SELECT * FROM users;

-- ALTER TABLE users
-- MODIFY COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP AFTER city;
-- SELECT * FROM users;

-- INSERT INTO users VALUES
-- (1, 'james@gmail.com', 'James', 'Male', '2003-07-10', '7845878895', 'Nagpur', DEFAULT), 
-- (2, 'emily@gmail.com', 'Emily', 'Female', '2004-03-16', '7511278895', 'Amravati', DEFAULT);
-- SELECT * FROM users;

-- DELETE FROM users
-- WHERE id IN (1,2);
-- SELECT * FROM users;

-- INSERT INTO users
-- (id, email, name, gender, date_of_birth, contact, city, created_at)
-- VALUES
-- (1, 'james@gmail.com', 'James', 'Male', '2003-07-10',
--  '7845878895', 'Nagpur', DEFAULT),
-- (2, 'emily@gmail.com', 'Emily', 'Female', '2004-03-16',
--  '7511278895', 'Amravati', DEFAULT);
-- SELECT * FROM users;

-- INSERT INTO users (email,name,gender,date_of_birth,contact, city,created_at)
-- VALUES
-- ('dora@gmail.com', 'Doraemon', 'Male', '1990-08-25', '9100020088', 'Pune', DEFAULT);
-- SELECT * FROM users;

-- INSERT INTO users
-- (email, name, gender, date_of_birth, contact, city)
-- VALUES
-- ('alice@gmail.com', 'Alice', 'Female', '2002-01-15', '9876543210', 'Delhi'),
-- ('robert@gmail.com', 'Robert', 'Male', '2001-09-22', '9876543211', 'Bangalore');
-- SELECT * FROM users;

