-- ================================================
-- SOLUTIONS TO PRACTICE EXERCISES
-- ================================================
-- These are the solutions to the practice exercises
-- Try to solve them yourself first before looking here!

-- ================================================
-- BASIC QUERIES SOLUTIONS
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

-- Exercise 3.1: Names starting with letter
SELECT * FROM customers WHERE first_name LIKE 'J%';

-- Exercise 3.2: Names ending with letter
SELECT * FROM customers WHERE last_name LIKE '%son';

-- Exercise 3.3: Names containing pattern
SELECT * FROM customers WHERE first_name LIKE '%an%';

-- Exercise 3.4: Email domains
SELECT * FROM customers WHERE email LIKE '%gmail.com';

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
-- JOIN QUERIES SOLUTIONS
-- ================================================

-- Exercise 1.1: Customer Orders
SELECT 
    c.customer_name, 
    o.order_id, 
    o.order_date
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id;

-- Exercise 1.2: Order Details with Product Names
SELECT 
    od.order_id, 
    p.product_name, 
    od.quantity, 
    od.unit_price
FROM order_details AS od
JOIN products AS p ON od.product_id = p.product_id;

-- Exercise 1.3: Complete Order Information
SELECT 
    c.customer_name, 
    o.order_id, 
    o.order_date, 
    p.product_name, 
    od.quantity
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
JOIN products AS p ON od.product_id = p.product_id;

-- Exercise 2.1: Customer Order Count
SELECT 
    c.customer_name, 
    c.city, 
    COUNT(o.order_id) AS total_orders
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
ORDER BY total_orders DESC;

-- Exercise 2.2: Product Sales Summary
SELECT 
    p.product_name, 
    p.category, 
    SUM(od.quantity) AS total_quantity_sold,
    SUM(od.quantity * od.unit_price) AS total_revenue
FROM products AS p
JOIN order_details AS od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name, p.category
ORDER BY total_revenue DESC;

-- Exercise 2.3: Orders by Country
SELECT 
    c.country, 
    COUNT(o.order_id) AS order_count,
    SUM(od.quantity * od.unit_price) AS total_revenue
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.country
ORDER BY total_revenue DESC;

-- Exercise 3.1: Order Totals
SELECT 
    o.order_id, 
    c.customer_name, 
    o.order_date, 
    SUM(od.quantity * od.unit_price) AS subtotal
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY o.order_id, c.customer_name, o.order_date
ORDER BY subtotal DESC;

-- Exercise 3.2: Order Totals with Discounts
SELECT 
    o.order_id, 
    c.customer_name, 
    SUM(od.quantity * od.unit_price) AS subtotal,
    ROUND(SUM(od.quantity * od.unit_price) * (o.voucher_percent / 100), 2) AS discount_amount,
    o.shipping_cost,
    ROUND(SUM(od.quantity * od.unit_price) * (1 - o.voucher_percent / 100) + o.shipping_cost, 2) AS final_total
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY o.order_id, c.customer_name, o.voucher_percent, o.shipping_cost
ORDER BY final_total DESC;

-- Exercise 3.3: Customer Lifetime Value
SELECT 
    c.customer_name, 
    c.city, 
    c.country, 
    ROUND(SUM(od.quantity * od.unit_price * (1 - o.voucher_percent / 100)) + SUM(o.shipping_cost), 2) AS total_spent,
    COUNT(DISTINCT o.order_id) AS order_count
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name, c.city, c.country
ORDER BY total_spent DESC;

-- Exercise 4.1: High-Value Orders
SELECT 
    c.customer_name, 
    o.order_id, 
    o.order_date, 
    SUM(od.quantity * od.unit_price) AS subtotal
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.customer_name, o.order_id, o.order_date
HAVING SUM(od.quantity * od.unit_price) > 500
ORDER BY subtotal DESC;

-- Exercise 4.2: Electronics Orders
SELECT DISTINCT
    c.customer_name, 
    o.order_date, 
    p.product_name, 
    od.quantity
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
JOIN products AS p ON od.product_id = p.product_id
WHERE p.category = 'Electronics'
ORDER BY o.order_date, c.customer_name;

-- Exercise 4.3: International Customers
SELECT 
    c.customer_name, 
    c.country, 
    o.order_id, 
    ROUND(SUM(od.quantity * od.unit_price) * (1 - o.voucher_percent / 100) + o.shipping_cost, 2) AS order_total
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
WHERE c.country != 'USA'
GROUP BY c.customer_name, c.country, o.order_id, o.voucher_percent, o.shipping_cost
ORDER BY order_total DESC;

-- Exercise 5.1: Repeat Customers
SELECT 
    c.customer_name, 
    c.city, 
    COUNT(o.order_id) AS order_count,
    ROUND(SUM(od.quantity * od.unit_price * (1 - o.voucher_percent / 100)) + SUM(o.shipping_cost), 2) AS total_spent
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING COUNT(o.order_id) > 2
ORDER BY order_count DESC;

-- Exercise 5.2: Popular Products
SELECT 
    p.product_name, 
    p.category, 
    COUNT(DISTINCT od.order_id) AS times_ordered,
    SUM(od.quantity) AS total_quantity_sold
FROM products AS p
JOIN order_details AS od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name, p.category
HAVING COUNT(DISTINCT od.order_id) >= 3
ORDER BY times_ordered DESC;

-- Exercise 6.1: Product Supplier Information
SELECT 
    p.product_name, 
    p.category, 
    p.unit_price, 
    s.supplier_name, 
    s.country AS supplier_country
FROM products AS p
JOIN suppliers AS s ON p.supplier_id = s.supplier_id
ORDER BY p.category, p.product_name;

-- Exercise 6.2: Supplier Performance
SELECT 
    s.supplier_name, 
    s.country AS supplier_country, 
    COUNT(p.product_id) AS products_supplied,
    COALESCE(SUM(od.quantity * od.unit_price), 0) AS total_sales_value
FROM suppliers AS s
LEFT JOIN products AS p ON s.supplier_id = p.supplier_id
LEFT JOIN order_details AS od ON p.product_id = od.product_id
GROUP BY s.supplier_id, s.supplier_name, s.country
ORDER BY total_sales_value DESC;

-- Exercise 11.1: All Customers Report
SELECT 
    c.customer_name, 
    c.city, 
    c.country, 
    COUNT(o.order_id) AS order_count
FROM customers AS c
LEFT JOIN orders AS o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city, c.country
ORDER BY order_count DESC;

-- ================================================
-- CHALLENGE SOLUTIONS
-- ================================================

-- Challenge 10.1: Complete Customer Profile
SELECT 
    c.customer_name,
    c.city,
    c.country,
    c.date_joined,
    c.is_active,
    COUNT(o.order_id) AS total_orders,
    MIN(o.order_date) AS first_order_date,
    MAX(o.order_date) AS last_order_date,
    COALESCE(ROUND(SUM(od.quantity * od.unit_price * (1 - o.voucher_percent / 100)) + SUM(o.shipping_cost), 2), 0) AS total_spent,
    COALESCE(ROUND(AVG(od.quantity * od.unit_price * (1 - o.voucher_percent / 100) + o.shipping_cost), 2), 0) AS average_order_value
FROM customers AS c
LEFT JOIN orders AS o ON c.customer_id = o.customer_id
LEFT JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name, c.city, c.country, c.date_joined, c.is_active
ORDER BY total_spent DESC;

-- Challenge: Customer Segmentation
SELECT 
    c.customer_name,
    COALESCE(ROUND(SUM(od.quantity * od.unit_price * (1 - o.voucher_percent / 100)) + SUM(o.shipping_cost), 2), 0) AS total_spent,
    COUNT(o.order_id) AS order_count,
    CASE 
        WHEN COALESCE(SUM(od.quantity * od.unit_price * (1 - o.voucher_percent / 100)) + SUM(o.shipping_cost), 0) > 2000 THEN 'VIP'
        WHEN COALESCE(SUM(od.quantity * od.unit_price * (1 - o.voucher_percent / 100)) + SUM(o.shipping_cost), 0) >= 500 THEN 'Regular'
        ELSE 'New'
    END AS customer_segment
FROM customers AS c
LEFT JOIN orders AS o ON c.customer_id = o.customer_id
LEFT JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spent DESC;

-- ================================================
-- AGGREGATE FUNCTION PRACTICE SOLUTIONS
-- ================================================

-- Count customers by gender
SELECT 
    gender, 
    COUNT(*) AS customer_count 
FROM customers 
GROUP BY gender;

-- Average age by city
SELECT 
    city, 
    ROUND(AVG(YEAR(CURDATE()) - YEAR(date_of_birth)), 1) AS average_age,
    COUNT(*) AS customer_count
FROM customers 
GROUP BY city 
HAVING COUNT(*) > 1
ORDER BY average_age DESC;

-- Product category analysis
SELECT 
    category,
    COUNT(*) AS product_count,
    ROUND(AVG(price), 2) AS average_price,
    MIN(price) AS cheapest,
    MAX(price) AS most_expensive,
    SUM(stock_quantity) AS total_stock
FROM products
WHERE is_active = TRUE
GROUP BY category
ORDER BY average_price DESC;

-- ================================================
-- BUSINESS INTELLIGENCE QUERIES
-- ================================================

-- Monthly sales summary for August 2024
SELECT 
    COUNT(DISTINCT o.order_id) AS total_orders,
    COUNT(DISTINCT o.customer_id) AS unique_customers,
    ROUND(SUM(od.quantity * od.unit_price), 2) AS gross_revenue,
    ROUND(SUM(od.quantity * od.unit_price * (o.voucher_percent / 100)), 2) AS total_discounts,
    ROUND(SUM(o.shipping_cost), 2) AS total_shipping,
    ROUND(SUM(od.quantity * od.unit_price * (1 - o.voucher_percent / 100) + o.shipping_cost), 2) AS net_revenue,
    ROUND(AVG(od.quantity * od.unit_price * (1 - o.voucher_percent / 100) + o.shipping_cost), 2) AS avg_order_value
FROM orders AS o
JOIN order_details AS od ON o.order_id = od.order_id
WHERE YEAR(o.order_date) = 2024 AND MONTH(o.order_date) = 8;

-- Top 5 products by revenue
SELECT 
    p.product_name,
    p.category,
    SUM(od.quantity) AS total_quantity,
    ROUND(SUM(od.quantity * od.unit_price), 2) AS total_revenue
FROM products AS p
JOIN order_details AS od ON p.product_id = od.product_id
JOIN orders AS o ON od.order_id = o.order_id
WHERE YEAR(o.order_date) = 2024 AND MONTH(o.order_date) = 8
GROUP BY p.product_id, p.product_name, p.category
ORDER BY total_revenue DESC
LIMIT 5;

-- ================================================
-- NOTES FOR STUDENTS:
-- ================================================
-- 1. Always test your queries step by step
-- 2. Use LIMIT when testing to avoid large result sets
-- 3. Check for NULL values when using LEFT JOINs
-- 4. Use meaningful table aliases (c for customers, o for orders)
-- 5. Comment your complex queries to explain the logic
-- 6. Use ROUND() for monetary calculations
-- 7. Consider using COALESCE() for NULL handling in calculations

-- ================================================
-- SECTION 12: MARKDOWN PRACTICE EXERCISES SOLUTIONS
-- ================================================

-- Exercise 12.1: List all orders with customer names and cities
SELECT 
    o.order_id,
    c.customer_name,
    c.city,
    o.order_date
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
ORDER BY o.order_date DESC;

-- Exercise 12.2: Show all products that have been ordered, with order dates
SELECT DISTINCT
    p.product_name,
    o.order_date,
    od.quantity
FROM products AS p
JOIN order_details AS od ON p.product_id = od.product_id
JOIN orders AS o ON od.order_id = o.order_id
ORDER BY o.order_date DESC, p.product_name;

-- Exercise 12.3: Find customers who have placed orders, with their total order count
SELECT 
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_orders DESC;

-- Exercise 12.4: Calculate the total revenue generated by each customer
SELECT 
    c.customer_name,
    ROUND(SUM(od.quantity * od.unit_price * (1 - o.voucher_percent / 100) + o.shipping_cost), 2) AS total_revenue
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_revenue DESC;

-- Exercise 12.5: Find the most expensive single order line (quantity × price)
SELECT 
    c.customer_name,
    p.product_name,
    od.quantity,
    od.unit_price,
    (od.quantity * od.unit_price) AS line_total
FROM order_details AS od
JOIN orders AS o ON od.order_id = o.order_id
JOIN customers AS c ON o.customer_id = c.customer_id
JOIN products AS p ON od.product_id = p.product_id
ORDER BY line_total DESC
LIMIT 1;

-- Exercise 12.6: List products that have never been ordered
SELECT p.product_name
FROM products AS p
LEFT JOIN order_details AS od ON p.product_id = od.product_id
WHERE od.product_id IS NULL;

-- Exercise 12.7: Find customers who have ordered products worth more than $500 in total
SELECT 
    c.customer_name,
    ROUND(SUM(od.quantity * od.unit_price), 2) AS total_ordered
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name
HAVING SUM(od.quantity * od.unit_price) > 500
ORDER BY total_ordered DESC;

-- Exercise 12.8: Calculate monthly sales totals
SELECT 
    YEAR(o.order_date) AS order_year,
    MONTH(o.order_date) AS order_month,
    MONTHNAME(o.order_date) AS month_name,
    COUNT(o.order_id) AS total_orders,
    ROUND(SUM(od.quantity * od.unit_price), 2) AS total_sales
FROM orders AS o
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY YEAR(o.order_date), MONTH(o.order_date), MONTHNAME(o.order_date)
ORDER BY order_year, order_month;

-- Exercise 12.9: Find the average order value per country
SELECT 
    c.country,
    COUNT(o.order_id) AS total_orders,
    ROUND(AVG(od.quantity * od.unit_price), 2) AS avg_order_value
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.country
ORDER BY avg_order_value DESC;

-- Exercise 12.10: Identify customers who have ordered the same product multiple times
SELECT 
    c.customer_name,
    p.product_name,
    COUNT(od.order_id) AS times_ordered,
    SUM(od.quantity) AS total_quantity
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
JOIN products AS p ON od.product_id = p.product_id
GROUP BY c.customer_id, c.customer_name, p.product_id, p.product_name
HAVING COUNT(od.order_id) > 1
ORDER BY times_ordered DESC;

-- Exercise 12.11: Create a report showing each customer's favorite product
SELECT 
    c.customer_name,
    p.product_name AS favorite_product,
    SUM(od.quantity) AS total_quantity_ordered
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
JOIN products AS p ON od.product_id = p.product_id
GROUP BY c.customer_id, c.customer_name, p.product_id, p.product_name
ORDER BY c.customer_name, total_quantity_ordered DESC;

-- Exercise 12.12: Find products that are popular in specific countries
SELECT 
    c.country,
    p.product_name,
    COUNT(od.order_id) AS times_ordered,
    SUM(od.quantity) AS total_quantity
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
JOIN products AS p ON od.product_id = p.product_id
WHERE c.country IN ('USA', 'UK', 'Germany')
GROUP BY c.country, p.product_id, p.product_name
HAVING COUNT(od.order_id) >= 2
ORDER BY c.country, times_ordered DESC;

-- Exercise 12.13: Calculate customer lifetime value (total amount spent per customer)
SELECT 
    c.customer_name,
    c.country,
    COUNT(o.order_id) AS total_orders,
    ROUND(SUM(od.quantity * od.unit_price * (1 - o.voucher_percent / 100)) + SUM(o.shipping_cost), 2) AS lifetime_value
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name, c.country
ORDER BY lifetime_value DESC;

-- Exercise 12.14: Identify seasonal trends
SELECT 
    QUARTER(o.order_date) AS order_quarter,
    CASE 
        WHEN QUARTER(o.order_date) = 1 THEN 'Q1 (Winter)'
        WHEN QUARTER(o.order_date) = 2 THEN 'Q2 (Spring)'
        WHEN QUARTER(o.order_date) = 3 THEN 'Q3 (Summer)'
        ELSE 'Q4 (Fall)'
    END AS season,
    COUNT(o.order_id) AS total_orders,
    ROUND(SUM(od.quantity * od.unit_price), 2) AS total_sales,
    ROUND(AVG(od.quantity * od.unit_price), 2) AS avg_order_value
FROM orders AS o
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY QUARTER(o.order_date)
ORDER BY order_quarter;

-- ================================================