-- ================================================
-- CUSTOMERS TABLE SETUP
-- ================================================
-- This script creates a customers table with sample data
-- Use this for practicing basic SQL queries and functions

-- Create the customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    date_of_birth DATE,
    gender CHAR(1), -- 'M' for Male, 'F' for Female
    email VARCHAR(100)
);

-- Insert sample customers with diverse data
INSERT INTO customers (first_name, last_name, city, date_of_birth, gender, email) VALUES
('John', 'Smith', 'New York', '1985-04-12', 'M', 'john.smith@email.com'),
('Emma', 'Johnson', 'Los Angeles', '1990-06-25', 'F', 'emma.johnson@email.com'),
('Michael', 'Brown', 'Chicago', '1988-09-15', 'M', 'michael.brown@email.com'),
('Olivia', 'Williams', 'Houston', '1992-11-05', 'F', 'olivia.williams@email.com'),
('James', 'Jones', 'Phoenix', '1986-02-19', 'M', 'james.jones@email.com'),
('Sophia', 'Davis', 'Philadelphia', '1983-03-22', 'F', 'sophia.davis@email.com'),
('William', 'Miller', 'San Antonio', '1991-07-13', 'M', 'william.miller@email.com'),
('Isabella', 'Wilson', 'San Diego', '1989-10-30', 'F', 'isabella.wilson@email.com'),
('Alexander', 'Moore', 'Dallas', '1993-01-14', 'M', 'alexander.moore@email.com'),
('Mia', 'Taylor', 'San Jose', '1984-08-27', 'F', 'mia.taylor@email.com'),
('Ethan', 'Anderson', 'Austin', '1987-05-16', 'M', 'ethan.anderson@email.com'),
('Charlotte', 'Thomas', 'Jacksonville', '1990-12-08', 'F', 'charlotte.thomas@email.com'),
('Lucas', 'Jackson', 'Fort Worth', '1985-09-03', 'M', 'lucas.jackson@email.com'),
('Amelia', 'White', 'Columbus', '1988-04-20', 'F', 'amelia.white@email.com'),
('Benjamin', 'Harris', 'Charlotte', '1982-11-11', 'M', 'benjamin.harris@email.com'),
('Harper', 'Martin', 'San Francisco', '1991-06-14', 'F', 'harper.martin@email.com'),
('Mason', 'Thompson', 'Indianapolis', '1987-08-05', 'M', 'mason.thompson@email.com'),
('Evelyn', 'Garcia', 'Seattle', '1989-03-28', 'F', 'evelyn.garcia@email.com'),
('Logan', 'Martinez', 'Denver', '1986-07-22', 'M', 'logan.martinez@email.com'),
('Abigail', 'Robinson', 'Washington', '1992-10-17', 'F', 'abigail.robinson@email.com');

-- Verification queries to test your table
-- Uncomment these to test after creating the table:

-- Check if table was created successfully
-- SELECT COUNT(*) AS 'Total Customers' FROM customers;

-- View all customer data
-- SELECT * FROM customers ORDER BY last_name, first_name;

-- Basic filtering examples
-- SELECT * FROM customers WHERE gender = 'F';
-- SELECT * FROM customers WHERE city LIKE 'San%';
-- SELECT * FROM customers WHERE YEAR(date_of_birth) BETWEEN 1985 AND 1990;

-- Age calculation example
-- SELECT 
--     CONCAT(first_name, ' ', last_name) AS 'Full Name',
--     city,
--     YEAR(CURDATE()) - YEAR(date_of_birth) AS 'Age'
-- FROM customers
-- ORDER BY YEAR(CURDATE()) - YEAR(date_of_birth) DESC;

-- ================================================
-- PRACTICE SUGGESTIONS:
-- ================================================
-- 1. Find all customers from cities starting with 'S'
-- 2. Count customers by gender
-- 3. Find the youngest and oldest customers
-- 4. List customers born in the 1980s
-- 5. Create age groups (Under 30, 30-40, Over 40)
-- 6. Find customers with email domains from gmail.com
-- 7. Sort customers by city and then by age
-- ================================================