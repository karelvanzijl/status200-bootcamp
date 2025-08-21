-- ================================================
-- LESSON 2: BASIC QUERIES - EXERCISE SOLUTIONS
-- ================================================
-- These solutions only use concepts covered in lesson 2:
-- SELECT, WHERE, ORDER BY, basic functions, no JOINs

-- ================================================
-- SECTION 1: BASIC SELECT STATEMENTS SOLUTIONS
-- ================================================

-- Exercise 1.1: Select all customers
SELECT * FROM customers;

-- Exercise 1.2: Select specific columns
SELECT first_name, last_name, city FROM customers;

-- Exercise 1.3: Select with aliases
SELECT 
    first_name AS 'First Name', 
    last_name AS 'Last Name'
FROM customers;

-- ================================================
-- SECTION 2: FILTERING WITH WHERE SOLUTIONS
-- ================================================

-- Exercise 2.1: Filter by city
SELECT * FROM customers WHERE city = 'Chicago';

-- Exercise 2.2: Filter by gender
SELECT * FROM customers WHERE gender = 'F';

-- Exercise 2.3: Filter by birth year
SELECT * FROM customers WHERE YEAR(date_of_birth) > 1990;

-- Exercise 2.4: Multiple conditions with AND
SELECT * FROM customers WHERE gender = 'M' AND city = 'New York';

-- Exercise 2.5: Multiple conditions with OR
SELECT * FROM customers WHERE city = 'Los Angeles' OR city = 'Houston';

-- Exercise 2.6: Using IN operator
SELECT * FROM customers WHERE city IN ('New York', 'Chicago', 'San Francisco');

-- Exercise 2.7: Using BETWEEN
SELECT * FROM customers WHERE YEAR(date_of_birth) BETWEEN 1985 AND 1990;

-- ================================================
-- SECTION 3: PATTERN MATCHING WITH LIKE SOLUTIONS
-- ================================================

-- Exercise 3.1: Names starting with letter
SELECT * FROM customers WHERE first_name LIKE 'J%';

-- Exercise 3.2: Names ending with letter
SELECT * FROM customers WHERE last_name LIKE '%son';

-- Exercise 3.3: Names containing pattern
SELECT * FROM customers WHERE first_name LIKE '%an%';

-- Exercise 3.4: Email domains
SELECT * FROM customers WHERE email LIKE '%gmail.com';

-- ================================================
-- SECTION 4: SORTING WITH ORDER BY SOLUTIONS
-- ================================================

-- Exercise 4.1: Sort by last name
SELECT * FROM customers ORDER BY last_name;

-- Exercise 4.2: Sort by age (calculated)
SELECT *, YEAR(CURDATE()) - YEAR(date_of_birth) AS age 
FROM customers 
ORDER BY age ASC;

-- Exercise 4.3: Multi-column sorting
SELECT * FROM customers ORDER BY city, last_name;

-- Exercise 4.4: Descending order
SELECT * FROM customers ORDER BY date_of_birth DESC;

-- ================================================
-- SECTION 5: CALCULATED COLUMNS SOLUTIONS
-- ================================================

-- Exercise 5.1: Full name concatenation
SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name' FROM customers;

-- Exercise 5.2: Age calculation
SELECT 
    first_name, 
    last_name, 
    YEAR(CURDATE()) - YEAR(date_of_birth) AS age 
FROM customers;

-- Exercise 5.3: Descriptive text
SELECT CONCAT(
    first_name, ' from ', city, ' is ', 
    YEAR(CURDATE()) - YEAR(date_of_birth), ' years old'
) AS description FROM customers;

-- Exercise 5.4: Email username extraction
SELECT 
    first_name, 
    last_name, 
    email,
    SUBSTRING_INDEX(email, '@', 1) AS username 
FROM customers;

-- ================================================
-- SECTION 6: PRODUCTS TABLE PRACTICE SOLUTIONS
-- ================================================

-- Exercise 6.1: Expensive products
SELECT * FROM products WHERE price > 500;

-- Exercise 6.2: Category filtering
SELECT * FROM products WHERE category = 'Electronics';

-- Exercise 6.3: Low stock alert
SELECT * FROM products WHERE stock_quantity < 50;

-- Exercise 6.4: Price range
SELECT * FROM products WHERE price BETWEEN 100 AND 300;

-- Exercise 6.5: Recent additions
SELECT * FROM products WHERE YEAR(date_added) = 2024 AND MONTH(date_added) = 7;

-- Exercise 6.6: Product search
SELECT * FROM products WHERE product_name LIKE '%Pro%';

-- ================================================
-- SECTION 7: DATE FUNCTIONS SOLUTIONS
-- ================================================

-- Exercise 7.1: Birthday month
SELECT * FROM customers WHERE MONTH(date_of_birth) = 8;

-- Exercise 7.2: Age groups
SELECT 
    first_name, 
    last_name, 
    YEAR(CURDATE()) - YEAR(date_of_birth) AS age,
    CASE 
        WHEN YEAR(CURDATE()) - YEAR(date_of_birth) < 30 THEN 'Young'
        WHEN YEAR(CURDATE()) - YEAR(date_of_birth) <= 40 THEN 'Middle'
        ELSE 'Mature'
    END AS age_group
FROM customers;

-- Exercise 7.3: Days since added
SELECT 
    product_name, 
    date_added, 
    DATEDIFF(CURDATE(), date_added) AS days_since_added 
FROM products;

-- ================================================
-- SECTION 8: COMBINING CONDITIONS SOLUTIONS
-- ================================================

-- Exercise 8.1: Complex customer filter
SELECT * FROM customers 
WHERE gender = 'F' 
    AND city LIKE 'S%' 
    AND YEAR(CURDATE()) - YEAR(date_of_birth) > 30;

-- Exercise 8.2: Product availability
SELECT * FROM products 
WHERE is_active = TRUE 
    AND category = 'Electronics' 
    AND price < 200 
    AND stock_quantity > 100;

-- Exercise 8.3: Customer demographics
SELECT * FROM customers 
WHERE YEAR(date_of_birth) BETWEEN 1990 AND 1999;

-- ================================================
-- SECTION 9: STRING FUNCTIONS SOLUTIONS
-- ================================================

-- Exercise 9.1: Name formatting
SELECT UPPER(CONCAT(first_name, ' ', last_name)) AS full_name_caps FROM customers;

-- Exercise 9.2: Initial extraction
SELECT 
    CONCAT(SUBSTRING(first_name, 1, 1), '.', SUBSTRING(last_name, 1, 1), '.') AS initials,
    first_name,
    last_name
FROM customers;

-- Exercise 9.3: Product name length
SELECT * FROM products WHERE LENGTH(product_name) > 15;

-- ================================================
-- SECTION 10: CHALLENGE EXERCISES SOLUTIONS
-- ================================================

-- Challenge 10.1: Complex customer report
SELECT 
    CONCAT(first_name, ' ', last_name) AS 'Full Name',
    YEAR(CURDATE()) - YEAR(date_of_birth) AS 'Age',
    SUBSTRING_INDEX(email, '@', -1) AS 'Email Domain',
    city,
    gender
FROM customers
ORDER BY YEAR(CURDATE()) - YEAR(date_of_birth) DESC;

-- Challenge 10.2: Product inventory report
SELECT 
    product_name AS 'Product Name',
    category AS 'Category',
    CONCAT('$', price) AS 'Price',
    CASE 
        WHEN stock_quantity > 100 THEN 'High'
        WHEN stock_quantity >= 50 THEN 'Medium'
        ELSE 'Low'
    END AS 'Stock Level',
    DATEDIFF(CURDATE(), date_added) AS 'Days Since Added'
FROM products
WHERE is_active = TRUE
ORDER BY category, price;

-- Challenge 10.3: Customer segmentation (simplified)
SELECT 
    CONCAT(first_name, ' ', last_name) AS 'Customer Name',
    city,
    email,
    CASE 
        WHEN email LIKE '%premium%' OR city IN ('New York', 'Los Angeles', 'Chicago') THEN 'Premium'
        ELSE 'Regular'
    END AS 'Segment'
FROM customers
ORDER BY city;

-- ================================================
-- ADDITIONAL PRACTICE SOLUTIONS
-- ================================================

-- Customers from major cities
SELECT * FROM customers 
WHERE city IN ('New York', 'Los Angeles', 'Chicago', 'Houston', 'Philadelphia')
ORDER BY city, last_name;

-- Products by price categories
SELECT 
    product_name,
    price,
    CASE 
        WHEN price < 50 THEN 'Budget'
        WHEN price < 200 THEN 'Mid-Range'
        ELSE 'Premium'
    END AS price_category
FROM products
ORDER BY price;

-- Customer name search
SELECT * FROM customers 
WHERE first_name LIKE 'A%' OR first_name LIKE 'E%'
ORDER BY first_name;

-- Seasonal products (added in summer months)
SELECT * FROM products 
WHERE MONTH(date_added) IN (6, 7, 8)
ORDER BY date_added;

-- Customers born in specific decades
SELECT 
    first_name,
    last_name,
    date_of_birth,
    CONCAT(FLOOR(YEAR(date_of_birth) / 10) * 10, 's') AS birth_decade
FROM customers
ORDER BY date_of_birth;

-- ================================================
-- SECTION 11: MARKDOWN PRACTICE EXERCISES SOLUTIONS
-- ================================================

-- Exercise 11.1: Names starting with specific letters
SELECT * FROM customers 
WHERE first_name LIKE 'A%' OR first_name LIKE 'E%'
ORDER BY first_name;

-- Exercise 11.2: Birthday month filtering
SELECT * FROM customers 
WHERE MONTH(date_of_birth) = 12;

-- Exercise 11.3: City name patterns
SELECT * FROM customers 
WHERE city LIKE '%ton' OR city LIKE '%land'
ORDER BY city;

-- Exercise 11.4: Demographics with sorting
SELECT * FROM customers 
WHERE gender = 'M' 
    AND YEAR(CURDATE()) - YEAR(date_of_birth) > 35
ORDER BY city, last_name;

-- Exercise 11.5: Descriptive reporting
SELECT CONCAT(
    first_name, ' from ', city, ' is ', 
    YEAR(CURDATE()) - YEAR(date_of_birth), ' years old'
) AS customer_report
FROM customers
ORDER BY first_name;