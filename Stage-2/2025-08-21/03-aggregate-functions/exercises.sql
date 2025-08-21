-- ================================================
-- LESSON 3: AGGREGATE FUNCTIONS - PRACTICE EXERCISES
-- ================================================
-- Run setup.sql first to create the customers and products tables!

-- ================================================
-- SECTION 1: BASIC AGGREGATE FUNCTIONS
-- ================================================

-- Exercise 1.1: Count total customers
-- TODO: Write a query to count all customers

-- Exercise 1.2: Count total products
-- TODO: Write a query to count all products

-- Exercise 1.3: Average product price
-- TODO: Write a query to find the average price of all products

-- Exercise 1.4: Most expensive and cheapest products
-- TODO: Write a query to find MIN and MAX product prices

-- Exercise 1.5: Total inventory value
-- TODO: Write a query to calculate SUM(price * stock_quantity) for all products

-- ================================================
-- SECTION 2: GROUP BY EXERCISES
-- ================================================

-- Exercise 2.1: Count customers by gender
-- TODO: Group customers by gender and count each group

-- Exercise 2.2: Count customers by city
-- TODO: Group customers by city and count each group

-- Exercise 2.3: Product statistics by category
-- TODO: Group products by category and show:
-- - COUNT of products
-- - AVG price
-- - MIN and MAX prices
-- - SUM of stock quantities

-- Exercise 2.4: Customer age analysis by city
-- TODO: Group by city and calculate average age
-- Hint: Use YEAR(CURDATE()) - YEAR(date_of_birth) for age

-- ================================================
-- SECTION 3: HAVING CLAUSE EXERCISES
-- ================================================

-- Exercise 3.1: Cities with more than 2 customers
-- TODO: Find cities that have more than 2 customers

-- Exercise 3.2: Product categories with average price over $100
-- TODO: Find categories where average product price > 100

-- Exercise 3.3: High-stock categories
-- TODO: Find categories with total stock quantity > 200

-- ================================================
-- SECTION 4: ADVANCED AGGREGATE EXERCISES
-- ================================================

-- Exercise 4.1: Customer demographics summary
-- TODO: Create age groups and count customers in each:
-- - Under 30: 'Young'
-- - 30-35: 'Adult' 
-- - Over 35: 'Mature'
-- Use CASE WHEN for age grouping

-- Exercise 4.2: Product inventory status
-- TODO: Categorize products by stock level:
-- - Low: stock < 50
-- - Medium: stock 50-100
-- - High: stock > 100
-- Count products in each category

-- Exercise 4.3: Monthly product additions
-- TODO: Group products by month added and count how many were added each month
-- Hint: Use MONTH(date_added)

-- Exercise 4.4: Gender distribution by city
-- TODO: Show for each city: total customers and percentage that are male/female

-- ================================================
-- SECTION 5: COMPLEX CALCULATIONS
-- ================================================

-- Exercise 5.1: Category profitability potential
-- TODO: For each category, calculate:
-- - Number of products
-- - Total potential revenue (sum of price * stock_quantity)
-- - Average price per unit
-- - Category with highest potential revenue

-- Exercise 5.2: Customer age statistics
-- TODO: Calculate overall customer age statistics:
-- - Average age
-- - Youngest customer age
-- - Oldest customer age
-- - Age range (max - min)

-- Exercise 5.3: Inventory analysis
-- TODO: Create a report showing:
-- - Total products in inventory
-- - Total inventory value
-- - Average product value
-- - Most valuable category
-- - Category with most products

-- ================================================
-- SECTION 6: MARKDOWN PRACTICE EXERCISES
-- ================================================
-- These specific exercises are mentioned in the markdown file

-- Exercise 6.1: Birth decade grouping
-- TODO: Group customers by birth decade (1980s, 1990s, etc.)

-- Exercise 6.2: Cities with exactly 2 customers  
-- TODO: Find cities with exactly 2 customers

-- Exercise 6.3: Age groups analysis
-- TODO: Find age groups with more than 3 customers

-- Exercise 6.4: High-age cities
-- TODO: Cities where the average customer age is above 35

-- Exercise 6.5: Expensive categories
-- TODO: Product categories with average price over $100

-- Exercise 6.6: Gender decade analysis
-- TODO: Gender groups born primarily in the 1980s

-- ================================================
-- VERIFICATION QUERIES
-- ================================================
-- Use these to check your work:

-- Basic counts
-- SELECT 'Customers' AS Table_Name, COUNT(*) AS Record_Count FROM customers
-- UNION ALL
-- SELECT 'Products' AS Table_Name, COUNT(*) AS Record_Count FROM products;

-- Quick category overview
-- SELECT 
--     category,
--     COUNT(*) as products,
--     AVG(price) as avg_price,
--     SUM(stock_quantity) as total_stock
-- FROM products 
-- GROUP BY category;