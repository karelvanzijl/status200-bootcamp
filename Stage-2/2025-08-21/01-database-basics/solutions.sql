-- ================================================
-- LESSON 1: DATABASE BASICS - EXERCISE SOLUTIONS
-- ================================================

-- ================================================
-- SOLUTION 1: CREATE PRODUCTS TABLE
-- ================================================
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(50) NOT NULL
);

-- ================================================
-- SOLUTION 2: INSERT PRODUCT DATA
-- ================================================
INSERT INTO products (product_name, price, category) VALUES
('Laptop', 999.99, 'Electronics'),
('Coffee Mug', 15.99, 'Home'),
('Running Shoes', 89.99, 'Sports');

-- ================================================
-- SOLUTION 3: BASIC SELECT QUERIES
-- ================================================

-- 1. Retrieve all products
SELECT * FROM products;

-- 2. Retrieve products where price is greater than 50
SELECT * FROM products WHERE price > 50;

-- ================================================
-- SOLUTION 4: CUSTOMERS TABLE QUERIES
-- ================================================

-- 1. Show all customers
SELECT * FROM customers;

-- 2. Show only customer names (first and last)
SELECT first_name, last_name FROM customers;

-- 3. Show customers from New York
SELECT * FROM customers WHERE city = 'New York';

-- ================================================
-- SOLUTION 5: ADDITIONAL PRACTICE
-- ================================================

-- 5.1: Show all products in the Electronics category
SELECT * FROM products WHERE category = 'Electronics';

-- 5.2: Show customers from Chicago  
SELECT * FROM customers WHERE city = 'Chicago';

-- 5.3: Show only product names and prices
SELECT product_name, price FROM products;

-- 5.4: Show customers born after 1985
SELECT * FROM customers WHERE date_of_birth > '1985-12-31';
