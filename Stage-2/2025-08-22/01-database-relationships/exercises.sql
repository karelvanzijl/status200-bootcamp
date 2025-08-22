-- ================================================
-- JOIN QUERIES PRACTICE EXERCISES
-- ================================================
-- Complete these exercises using the e-commerce database
-- Run setup.sql first!

-- ================================================
-- SECTION 1: BASIC JOINS
-- ================================================

-- Exercise 1.1: Customer Orders
-- TODO: Show all orders with customer names
-- Columns: customer_name, order_id, order_date

-- Exercise 1.2: Order Details with Product Names
-- TODO: Show order details with product names
-- Columns: order_id, product_name, quantity, unit_price

-- Exercise 1.3: Complete Order Information
-- TODO: Join orders, customers, and order_details to show:
-- customer_name, order_id, order_date, product_name, quantity

-- ================================================
-- SECTION 2: AGGREGATE FUNCTIONS WITH JOINS
-- ================================================

-- Exercise 2.1: Customer Order Count
-- TODO: Count how many orders each customer has placed
-- Columns: customer_name, city, total_orders

-- Exercise 2.2: Product Sales Summary
-- TODO: Show total quantity sold for each product
-- Columns: product_name, category, total_quantity_sold, total_revenue

-- Exercise 2.3: Orders by Country
-- TODO: Count orders and total revenue by country
-- Columns: country, order_count, total_revenue

-- ================================================
-- SECTION 3: CALCULATED COLUMNS IN JOINS
-- ================================================

-- Exercise 3.1: Order Totals
-- TODO: Calculate the subtotal for each order (before discounts)
-- Columns: order_id, customer_name, order_date, subtotal

-- Exercise 3.2: Order Totals with Discounts
-- TODO: Calculate final order total including voucher discounts and shipping
-- Formula: (subtotal - discount) + shipping_cost
-- Columns: order_id, customer_name, subtotal, discount_amount, shipping_cost, final_total

-- Exercise 3.3: Customer Lifetime Value
-- TODO: Calculate total amount spent by each customer
-- Columns: customer_name, city, country, total_spent, order_count

-- ================================================
-- SECTION 4: FILTERING JOINED DATA
-- ================================================

-- Exercise 4.1: High-Value Orders
-- TODO: Find orders with subtotal over $500
-- Columns: customer_name, order_id, order_date, subtotal

-- Exercise 4.2: Electronics Orders
-- TODO: Find all orders containing Electronics products
-- Columns: customer_name, order_date, product_name, quantity

-- Exercise 4.3: International Customers
-- TODO: Find orders from customers outside USA, with order totals
-- Columns: customer_name, country, order_id, order_total

-- ================================================
-- SECTION 5: GROUPING AND HAVING WITH JOINS
-- ================================================

-- Exercise 5.1: Repeat Customers
-- TODO: Find customers who have placed more than 2 orders
-- Columns: customer_name, city, order_count, total_spent

-- Exercise 5.2: Popular Products
-- TODO: Find products that have been ordered at least 3 times
-- Columns: product_name, category, times_ordered, total_quantity_sold

-- Exercise 5.3: High-Spending Countries
-- TODO: Find countries with total customer spending over $3000
-- Columns: country, customer_count, total_revenue

-- ================================================
-- SECTION 6: MULTIPLE JOINS WITH SUPPLIERS
-- ================================================

-- Exercise 6.1: Product Supplier Information
-- TODO: Show products with their supplier details
-- Columns: product_name, category, unit_price, supplier_name, supplier_country

-- Exercise 6.2: Supplier Performance
-- TODO: Calculate total sales value by supplier
-- Columns: supplier_name, supplier_country, products_supplied, total_sales_value

-- ================================================
-- SECTION 7: DATE-BASED ANALYSIS
-- ================================================

-- Exercise 7.1: Daily Sales Report
-- TODO: Show total sales by order date
-- Columns: order_date, orders_count, total_revenue

-- Exercise 7.2: Monthly Sales Report
-- TODO: Show total sales by month for August 2024
-- Columns: order_month, orders_count, total_revenue

-- ================================================
-- HELPFUL HINTS:
-- ================================================
-- - Always use table aliases: customers AS c, orders AS o
-- - When calculating totals: SUM(quantity * unit_price)
-- - For discounts: subtotal * (voucher_percent / 100)
-- - Use DISTINCT when counting unique items
-- - DATE functions: YEAR(), MONTH()
-- - Math functions: ROUND(), SUM(), COUNT(), AVG()

-- ================================================