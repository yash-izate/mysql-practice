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

-- RENAME TABLE users TO customers;
-- RENAME TABLE customers TO users;

-- ALTER TABLE users
-- ADD COLUMN is_active BOOLEAN DEFAULT TRUE;
-- SELECT * FROM user;   

-- ALTER TABLE users
-- DROP COLUMN is_active;
-- SELECT * FROM users; 

-- ALTER TABLE users
-- MODIFY COLUMN name VARCHAR(150);
-- SELECT * FROM users;

-- ALTER TABLE users
-- MODIFY COLUMN email VARCHAR(100) FIRST;
-- SELECT * FROM users;

-- ALTER TABLE users
-- MODIFY COLUMN email VARCHAR(100) After id;
-- SELECT * FROM users;

-- ALTER TABLE users
-- ADD COLUMN phone VARCHAR(10),
-- ADD COLUMN city VARCHAR(100);
-- SELECT * FROM users;

-- ALTER TABLE users
-- RENAME COLUMN phone TO contact;
-- SELECT * FROM users;

-- ALTER TABLE users
-- MODIFY COLUMN created_at TIMESTAMP AFTER city;
-- SELECT * FROM users;


