-- ================================================
-- LESSON 3: AGGREGATE FUNCTIONS - EXERCISE SOLUTIONS
-- ================================================

-- ================================================
-- SECTION 1: BASIC AGGREGATE FUNCTIONS SOLUTIONS
-- ================================================

-- Exercise 1.1: Count total customers
SELECT COUNT(*) AS total_customers FROM customers;

-- Exercise 1.2: Count total products
SELECT COUNT(*) AS total_products FROM products;

-- Exercise 1.3: Average product price
SELECT ROUND(AVG(price), 2) AS average_price FROM products;

-- Exercise 1.4: Most expensive and cheapest products
SELECT 
    MIN(price) AS cheapest_price,
    MAX(price) AS most_expensive_price
FROM products;

-- Exercise 1.5: Total inventory value
SELECT ROUND(SUM(price * stock_quantity), 2) AS total_inventory_value
FROM products;

-- ================================================
-- SECTION 2: GROUP BY SOLUTIONS
-- ================================================

-- Exercise 2.1: Count customers by gender
SELECT 
    gender, 
    COUNT(*) AS customer_count 
FROM customers 
GROUP BY gender;

-- Exercise 2.2: Count customers by city
SELECT 
    city, 
    COUNT(*) AS customer_count 
FROM customers 
GROUP BY city
ORDER BY customer_count DESC;

-- Exercise 2.3: Product statistics by category
SELECT 
    category,
    COUNT(*) AS product_count,
    ROUND(AVG(price), 2) AS avg_price,
    MIN(price) AS min_price,
    MAX(price) AS max_price,
    SUM(stock_quantity) AS total_stock
FROM products
GROUP BY category
ORDER BY avg_price DESC;

-- Exercise 2.4: Customer age analysis by city
SELECT 
    city,
    COUNT(*) AS customer_count,
    ROUND(AVG(YEAR(CURDATE()) - YEAR(date_of_birth)), 1) AS average_age
FROM customers
GROUP BY city
ORDER BY average_age DESC;

-- ================================================
-- SECTION 3: HAVING CLAUSE SOLUTIONS
-- ================================================

-- Exercise 3.1: Cities with more than 2 customers
SELECT 
    city,
    COUNT(*) AS customer_count
FROM customers
GROUP BY city
HAVING COUNT(*) > 2
ORDER BY customer_count DESC;

-- Exercise 3.2: Product categories with average price over $100
SELECT 
    category,
    COUNT(*) AS product_count,
    ROUND(AVG(price), 2) AS average_price
FROM products
GROUP BY category
HAVING AVG(price) > 100
ORDER BY average_price DESC;

-- Exercise 3.3: High-stock categories
SELECT 
    category,
    SUM(stock_quantity) AS total_stock,
    COUNT(*) AS product_count
FROM products
GROUP BY category
HAVING SUM(stock_quantity) > 200
ORDER BY total_stock DESC;

-- ================================================
-- SECTION 4: ADVANCED AGGREGATE SOLUTIONS
-- ================================================

-- Exercise 4.1: Customer demographics summary
SELECT 
    CASE 
        WHEN YEAR(CURDATE()) - YEAR(date_of_birth) < 30 THEN 'Young'
        WHEN YEAR(CURDATE()) - YEAR(date_of_birth) <= 35 THEN 'Adult'
        ELSE 'Mature'
    END AS age_group,
    COUNT(*) AS customer_count
FROM customers
GROUP BY age_group
ORDER BY customer_count DESC;

-- Exercise 4.2: Product inventory status
SELECT 
    CASE 
        WHEN stock_quantity < 50 THEN 'Low'
        WHEN stock_quantity <= 100 THEN 'Medium'
        ELSE 'High'
    END AS stock_level,
    COUNT(*) AS product_count
FROM products
GROUP BY stock_level
ORDER BY product_count DESC;

-- Exercise 4.3: Monthly product additions
SELECT 
    MONTH(date_added) AS month_added,
    MONTHNAME(date_added) AS month_name,
    COUNT(*) AS products_added
FROM products
GROUP BY MONTH(date_added), MONTHNAME(date_added)
ORDER BY month_added;

-- Exercise 4.4: Gender distribution by city
SELECT 
    city,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN gender = 'M' THEN 1 ELSE 0 END) AS male_customers,
    SUM(CASE WHEN gender = 'F' THEN 1 ELSE 0 END) AS female_customers,
    ROUND(SUM(CASE WHEN gender = 'M' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS male_percentage,
    ROUND(SUM(CASE WHEN gender = 'F' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS female_percentage
FROM customers
GROUP BY city
ORDER BY total_customers DESC;

-- ================================================
-- SECTION 5: COMPLEX CALCULATIONS SOLUTIONS
-- ================================================

-- Exercise 5.1: Category profitability potential
SELECT 
    category,
    COUNT(*) AS product_count,
    ROUND(SUM(price * stock_quantity), 2) AS potential_revenue,
    ROUND(AVG(price), 2) AS avg_price_per_unit
FROM products
GROUP BY category
ORDER BY potential_revenue DESC;

-- Exercise 5.2: Customer age statistics
SELECT 
    ROUND(AVG(YEAR(CURDATE()) - YEAR(date_of_birth)), 1) AS average_age,
    MIN(YEAR(CURDATE()) - YEAR(date_of_birth)) AS youngest_age,
    MAX(YEAR(CURDATE()) - YEAR(date_of_birth)) AS oldest_age,
    MAX(YEAR(CURDATE()) - YEAR(date_of_birth)) - MIN(YEAR(CURDATE()) - YEAR(date_of_birth)) AS age_range
FROM customers;

-- Exercise 5.3: Inventory analysis
SELECT 
    COUNT(*) AS total_products,
    ROUND(SUM(price * stock_quantity), 2) AS total_inventory_value,
    ROUND(AVG(price * stock_quantity), 2) AS avg_product_value,
    (SELECT category FROM products GROUP BY category ORDER BY SUM(price * stock_quantity) DESC LIMIT 1) AS most_valuable_category,
    (SELECT category FROM products GROUP BY category ORDER BY COUNT(*) DESC LIMIT 1) AS category_with_most_products
FROM products;

-- ================================================
-- BONUS: COMPREHENSIVE SUMMARY REPORT
-- ================================================
SELECT 
    'CUSTOMER SUMMARY' AS report_section,
    '' AS detail_1,
    '' AS detail_2,
    '' AS detail_3
UNION ALL
SELECT 
    'Total Customers',
    CAST(COUNT(*) AS CHAR),
    '',
    ''
FROM customers
UNION ALL
SELECT 
    'Average Age',
    CAST(ROUND(AVG(YEAR(CURDATE()) - YEAR(date_of_birth)), 1) AS CHAR),
    'years',
    ''
FROM customers
UNION ALL
SELECT 
    'Cities Represented',
    CAST(COUNT(DISTINCT city) AS CHAR),
    '',
    ''
FROM customers
UNION ALL
SELECT 
    'PRODUCT SUMMARY',
    '',
    '',
    ''
UNION ALL
SELECT 
    'Total Products',
    CAST(COUNT(*) AS CHAR),
    '',
    ''
FROM products
UNION ALL
SELECT 
    'Product Categories',
    CAST(COUNT(DISTINCT category) AS CHAR),
    '',
    ''
FROM products
UNION ALL
SELECT 
    'Total Inventory Value',
    CONCAT('$', CAST(ROUND(SUM(price * stock_quantity), 2) AS CHAR)),
    '',
    ''
FROM products;

-- ================================================
-- SECTION 6: MARKDOWN PRACTICE EXERCISES SOLUTIONS
-- ================================================

-- Exercise 6.1: Birth decade grouping
SELECT 
    CONCAT(FLOOR(YEAR(date_of_birth) / 10) * 10, 's') AS birth_decade,
    COUNT(*) AS customer_count
FROM customers
GROUP BY birth_decade
ORDER BY birth_decade;

-- Exercise 6.2: Cities with exactly 2 customers
SELECT 
    city,
    COUNT(*) AS customer_count
FROM customers
GROUP BY city
HAVING COUNT(*) = 2;

-- Exercise 6.3: Age groups analysis
SELECT 
    CASE 
        WHEN YEAR(CURDATE()) - YEAR(date_of_birth) < 30 THEN 'Under 30'
        WHEN YEAR(CURDATE()) - YEAR(date_of_birth) < 40 THEN '30-39'
        WHEN YEAR(CURDATE()) - YEAR(date_of_birth) < 50 THEN '40-49'
        ELSE '50+'
    END AS age_group,
    COUNT(*) AS customer_count
FROM customers
GROUP BY age_group
HAVING COUNT(*) > 3
ORDER BY customer_count DESC;

-- Exercise 6.4: High-age cities
SELECT 
    city,
    ROUND(AVG(YEAR(CURDATE()) - YEAR(date_of_birth)), 1) AS average_age,
    COUNT(*) AS customer_count
FROM customers
GROUP BY city
HAVING AVG(YEAR(CURDATE()) - YEAR(date_of_birth)) > 35
ORDER BY average_age DESC;

-- Exercise 6.5: Expensive categories
SELECT 
    category,
    COUNT(*) AS product_count,
    ROUND(AVG(price), 2) AS average_price
FROM products
GROUP BY category
HAVING AVG(price) > 100
ORDER BY average_price DESC;

-- Exercise 6.6: Gender decade analysis
SELECT 
    gender,
    CONCAT(FLOOR(YEAR(date_of_birth) / 10) * 10, 's') AS birth_decade,
    COUNT(*) AS customer_count
FROM customers
WHERE YEAR(date_of_birth) BETWEEN 1980 AND 1989
GROUP BY gender, birth_decade
ORDER BY customer_count DESC;