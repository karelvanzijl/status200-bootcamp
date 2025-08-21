-- ================================================
-- LESSON 1: DATABASE BASICS - PRACTICE EXERCISES
-- ================================================
-- Run setup.sql first to create the customers table!

-- ================================================
-- EXERCISE 1: CREATE YOUR PRODUCTS TABLE
-- ================================================
-- Create a simple products table with the following columns:
-- - product_id (auto-increment primary key)
-- - product_name (up to 100 characters)
-- - price (decimal with 2 decimal places)
-- - category (up to 50 characters)

-- TODO: Write your CREATE TABLE statement here


-- ================================================
-- EXERCISE 2: INSERT PRODUCT DATA
-- ================================================
-- Insert 3 products of your choice into the products table

-- TODO: Write your INSERT statements here


-- ================================================
-- EXERCISE 3: BASIC SELECT QUERIES
-- ================================================
-- 1. Retrieve all products
-- TODO: Write SELECT * query here


-- 2. Retrieve products where price is greater than 50
-- TODO: Write SELECT with WHERE clause here


-- ================================================
-- EXERCISE 4: EXPERIMENT WITH CUSTOMERS TABLE
-- ================================================
-- Using the customers table created in setup.sql:

-- 1. Show all customers
-- TODO: Write your query here


-- 2. Show only customer names (first and last)
-- TODO: Write your query here


-- 3. Show customers from a specific city
-- TODO: Write your query here


-- ================================================
-- EXERCISE 5: ADDITIONAL PRACTICE
-- ================================================
-- More practice with basic database concepts from lesson 1

-- 5.1: Show all products in the Electronics category
-- TODO: Write a query to find all products where category = 'Electronics'


-- 5.2: Show customers from Chicago
-- TODO: Write a query to find all customers where city = 'Chicago' 


-- 5.3: Show only product names and prices
-- TODO: Write a query to select just product_name and price columns from products


-- 5.4: Show customers born after 1985
-- TODO: Write a query to find customers where date_of_birth > '1985-12-31'


-- ================================================
-- VERIFICATION QUERIES
-- ================================================
-- These queries will help you check if your tables were created correctly

-- Check if products table exists and has data
-- SELECT COUNT(*) AS 'Total Products' FROM products;

-- Show structure of products table
-- DESCRIBE products;