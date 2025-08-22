-- ================================================
-- JOIN QUERIES PRACTICE EXERCISES - SOLUTIONS
-- ================================================
-- Complete solutions for the e-commerce database exercises
-- Run setup.sql first!

-- ================================================
-- SECTION 1: BASIC JOINS
-- ================================================

-- Exercise 1.1: Customer Orders
-- Show all orders with customer names
SELECT 
    c.customer_name, 
    o.order_id, 
    o.order_date
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
ORDER BY o.order_date DESC;

-- Exercise 1.2: Order Details with Product Names
-- Show order details with product names
SELECT 
    od.order_id, 
    p.product_name, 
    od.quantity, 
    od.unit_price
FROM order_details AS od
JOIN products AS p ON od.product_id = p.product_id
ORDER BY od.order_id;

-- Exercise 1.3: Complete Order Information
-- Join orders, customers, and order_details to show complete info
SELECT 
    c.customer_name, 
    od.order_id, 
    o.order_date, 
    p.product_name, 
    od.quantity
FROM order_details AS od
JOIN orders AS o ON od.order_id = o.order_id
JOIN customers AS c ON o.customer_id = c.customer_id
JOIN products AS p ON od.product_id = p.product_id
ORDER BY od.order_id, p.product_name;

-- ================================================
-- SECTION 2: AGGREGATE FUNCTIONS WITH JOINS
-- ================================================

-- Exercise 2.1: Customer Order Count
-- Count how many orders each customer has placed
SELECT 
    c.customer_name, 
    c.city, 
    COUNT(o.order_id) AS total_orders
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
ORDER BY total_orders DESC;

-- Exercise 2.2: Product Sales Summary
-- Show total quantity sold for each product
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
-- Count orders and total revenue by country
SELECT 
    c.country, 
    COUNT(o.order_id) AS order_count,
    SUM(od.quantity * od.unit_price) AS total_revenue
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.country
ORDER BY total_revenue DESC;

-- ================================================
-- SECTION 3: CALCULATED COLUMNS IN JOINS
-- ================================================

-- Exercise 3.1: Order Totals
-- Calculate the subtotal for each order (before discounts)
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
-- Calculate final order total including voucher discounts and shipping
SELECT 
    o.order_id, 
    c.customer_name,
    SUM(od.quantity * od.unit_price) AS subtotal,
    ROUND(SUM(od.quantity * od.unit_price) * (o.voucher_percent / 100), 2) AS discount_amount,
    o.shipping_cost,
    ROUND((SUM(od.quantity * od.unit_price) - (SUM(od.quantity * od.unit_price) * (o.voucher_percent / 100))) + o.shipping_cost, 2) AS final_total
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY o.order_id, c.customer_name, o.voucher_percent, o.shipping_cost
ORDER BY final_total DESC;

-- Exercise 3.3: Customer Lifetime Value
-- Calculate total amount spent by each customer
SELECT 
    c.customer_name, 
    c.city, 
    c.country,
    ROUND(SUM((od.quantity * od.unit_price) * (1 - o.voucher_percent / 100) + o.shipping_cost), 2) AS total_spent,
    COUNT(o.order_id) AS order_count
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name, c.city, c.country
ORDER BY total_spent DESC;

-- ================================================
-- SECTION 4: FILTERING JOINED DATA
-- ================================================

-- Exercise 4.1: High-Value Orders
-- Find orders with subtotal over $500
SELECT 
    c.customer_name, 
    o.order_id, 
    o.order_date,
    SUM(od.quantity * od.unit_price) AS subtotal
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY o.order_id, c.customer_name, o.order_date
HAVING SUM(od.quantity * od.unit_price) > 500
ORDER BY subtotal DESC;

-- Exercise 4.2: Electronics Orders
-- Find all orders containing Electronics products
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
ORDER BY o.order_date DESC;

-- Exercise 4.3: International Customers
-- Find orders from customers outside USA, with order totals
SELECT 
    c.customer_name, 
    c.country, 
    o.order_id,
    SUM(od.quantity * od.unit_price) AS order_total
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
WHERE c.country != 'USA'
GROUP BY c.customer_name, c.country, o.order_id
ORDER BY order_total DESC;

-- ================================================
-- SECTION 5: GROUPING AND HAVING WITH JOINS
-- ================================================

-- Exercise 5.1: Repeat Customers
-- Find customers who have placed more than 2 orders
SELECT 
    c.customer_name, 
    c.city, 
    COUNT(o.order_id) AS order_count,
    ROUND(SUM((od.quantity * od.unit_price) * (1 - o.voucher_percent / 100) + o.shipping_cost), 2) AS total_spent
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING COUNT(o.order_id) > 2
ORDER BY order_count DESC;

-- Exercise 5.2: Popular Products
-- Find products that have been ordered at least 3 times
SELECT 
    p.product_name, 
    p.category, 
    COUNT(od.order_id) AS times_ordered,
    SUM(od.quantity) AS total_quantity_sold
FROM products AS p
JOIN order_details AS od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name, p.category
HAVING COUNT(od.order_id) >= 3
ORDER BY total_quantity_sold DESC;

-- Exercise 5.3: High-Spending Countries
-- Find countries with total customer spending over $3000
SELECT 
    c.country, 
    COUNT(c.customer_id) AS customer_count,
    SUM((od.quantity * od.unit_price) * (1 - o.voucher_percent / 100) + o.shipping_cost) AS total_revenue
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.country
HAVING SUM((od.quantity * od.unit_price) * (1 - o.voucher_percent / 100) + o.shipping_cost) > 3000
ORDER BY total_revenue DESC;

-- ================================================
-- SECTION 6: MULTIPLE JOINS WITH SUPPLIERS
-- ================================================

-- Exercise 6.1: Product Supplier Information
-- Show products with their supplier details
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
-- Calculate total sales value by supplier
SELECT 
    s.supplier_name, 
    s.country AS supplier_country, 
    COUNT(p.product_id) AS products_supplied,
    SUM(od.quantity * od.unit_price) AS total_sales_value
FROM suppliers AS s
JOIN products AS p ON s.supplier_id = p.supplier_id
JOIN order_details AS od ON p.product_id = od.product_id
GROUP BY s.supplier_id, s.supplier_name, s.country
ORDER BY total_sales_value DESC;

-- ================================================
-- SECTION 7: DATE-BASED ANALYSIS
-- ================================================

-- Exercise 7.1: Daily Sales Report
-- Show total sales by order date
SELECT 
    o.order_date, 
    COUNT(o.order_id) AS orders_count,
    SUM(od.quantity * od.unit_price) AS total_revenue
FROM orders AS o
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY o.order_date
ORDER BY o.order_date DESC;

-- Exercise 7.2: Monthly Sales Report
-- Show total sales by month for August 2024
SELECT 
    YEAR(o.order_date) AS order_year,
    COUNT(o.order_id) AS orders_count,
    SUM(od.quantity * od.unit_price) AS total_revenue
FROM orders AS o
JOIN order_details AS od ON o.order_id = od.order_id
WHERE YEAR(o.order_date) = 2024
GROUP BY YEAR(o.order_date)
ORDER BY order_year DESC;

-- ================================================