-- ================================================
-- JOIN QUERIES PRACTICE EXERCISES
-- ================================================
-- Complete these exercises using the e-commerce database
-- Run setup-ecommerce.sql first!

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

-- Exercise 4.4: Recent Orders
-- TODO: Find orders placed in August 2024, with customer and total info
-- Columns: customer_name, city, order_date, order_total

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
-- Columns: country, customer_count, total_revenue, average_order_value

-- Exercise 5.4: Product Categories by Revenue
-- TODO: Find product categories with total revenue over $1000
-- Columns: category, product_count, total_revenue, average_price

-- ================================================
-- SECTION 6: MULTIPLE JOINS WITH SUPPLIERS
-- ================================================

-- Exercise 6.1: Product Supplier Information
-- TODO: Show products with their supplier details
-- Columns: product_name, category, unit_price, supplier_name, supplier_country

-- Exercise 6.2: Supplier Performance
-- TODO: Calculate total sales value by supplier
-- Columns: supplier_name, supplier_country, products_supplied, total_sales_value

-- Exercise 6.3: International Supply Chain
-- TODO: Find orders where the supplier country differs from customer country
-- Columns: customer_name, customer_country, product_name, supplier_name, supplier_country

-- ================================================
-- SECTION 7: ORDER STATUS ANALYSIS
-- ================================================

-- Exercise 7.1: Order Status Summary
-- TODO: Count orders by status
-- Columns: order_status, order_count, total_value

-- Exercise 7.2: Processing Orders Details
-- TODO: Show details of orders with 'Processing' status
-- Columns: order_id, customer_name, order_date, products_in_order, order_total

-- Exercise 7.3: Delivered Orders by Country
-- TODO: Analyze delivered orders by customer country
-- Columns: country, delivered_orders, total_delivered_value

-- ================================================
-- SECTION 8: DATE-BASED ANALYSIS
-- ================================================

-- Exercise 8.1: Daily Sales Report
-- TODO: Show total sales by order date
-- Columns: order_date, orders_count, total_revenue

-- Exercise 8.2: Customer Acquisition by Month
-- TODO: Show new customers by month (date_joined)
-- Columns: join_month, new_customers, first_orders_value

-- Exercise 8.3: Product Launch Performance
-- TODO: Show how products perform based on their launch date
-- Columns: product_name, date_added, days_since_launch, total_orders, total_revenue

-- ================================================
-- SECTION 9: COMPLEX BUSINESS QUERIES
-- ================================================

-- Exercise 9.1: Customer Segmentation
-- TODO: Categorize customers based on spending:
-- - 'VIP': total spent > $2000
-- - 'Regular': total spent $500-$2000  
-- - 'New': total spent < $500
-- Columns: customer_name, total_spent, order_count, customer_segment

-- Exercise 9.2: Product Profitability Analysis
-- TODO: Analyze which products generate most revenue per stock unit
-- Columns: product_name, category, stock_quantity, total_revenue, revenue_per_unit

-- Exercise 9.3: Seasonal Trends
-- TODO: Compare sales between first half and second half of August
-- Columns: period, order_count, total_revenue, average_order_value

-- ================================================
-- SECTION 10: ADVANCED CHALLENGES
-- ================================================

-- Challenge 10.1: Complete Customer Profile
-- TODO: Create a comprehensive customer report including:
-- - Customer details (name, city, country)
-- - Account info (date joined, active status)
-- - Order history (total orders, first order date, last order date)
-- - Spending (total spent, average order value)
-- - Favorite category (most frequently ordered category)

-- Challenge 10.2: Supplier Efficiency Report
-- TODO: Analyze supplier performance including:
-- - Supplier details
-- - Product portfolio (categories, price ranges)
-- - Sales performance (total revenue, average product price)
-- - Geographic reach (how many countries their products sell to)

-- Challenge 10.3: Monthly Business Dashboard
-- TODO: Create a monthly summary for August 2024:
-- - Total orders and revenue
-- - New vs returning customers
-- - Top 3 products by revenue
-- - Top 3 countries by order count
-- - Order status breakdown
-- - Average order value trend

-- Challenge 10.4: Inventory and Sales Correlation
-- TODO: Analyze relationship between stock levels and sales:
-- - Products with high stock but low sales
-- - Products with low stock but high demand
-- - Optimal stock levels by category
-- - Supplier restocking recommendations

-- ================================================
-- SECTION 11: LEFT JOIN EXERCISES
-- ================================================

-- Exercise 11.1: All Customers Report
-- TODO: Show all customers, including those who haven't placed orders
-- Columns: customer_name, city, country, order_count (0 if no orders)

-- Exercise 11.2: Product Inventory Report  
-- TODO: Show all products, including those never ordered
-- Columns: product_name, category, stock_quantity, times_ordered (0 if never ordered)

-- Exercise 11.3: Supplier Coverage
-- TODO: Show all suppliers, including those with no current sales
-- Columns: supplier_name, country, products_supplied, total_revenue (0 if no sales)

-- ================================================
-- HELPFUL HINTS:
-- ================================================
-- - Always use table aliases: customers AS c, orders AS o
-- - When calculating totals: SUM(quantity * unit_price)
-- - For discounts: subtotal * (voucher_percent / 100)
-- - For percentages: ROUND(value * 100.0 / total, 2)
-- - Use DISTINCT when counting unique items
-- - DATE functions: YEAR(), MONTH(), DATE()
-- - String functions: CONCAT(), UPPER(), LOWER()

-- ================================================
-- SECTION 12: MARKDOWN PRACTICE EXERCISES
-- ================================================
-- These specific exercises are mentioned in the markdown file

-- Basic JOINs
-- Exercise 12.1: List all orders with customer names and cities
-- TODO: Join orders and customers tables

-- Exercise 12.2: Show all products that have been ordered, with order dates
-- TODO: Join products, order_details, and orders tables

-- Exercise 12.3: Find customers who have placed orders, with their total order count
-- TODO: Count orders per customer

-- Intermediate Analysis
-- Exercise 12.4: Calculate the total revenue generated by each customer
-- TODO: Sum order values per customer

-- Exercise 12.5: Find the most expensive single order line (quantity × price)
-- TODO: Calculate line totals and find maximum

-- Exercise 12.6: List products that have never been ordered (hint: use LEFT JOIN)
-- TODO: Use LEFT JOIN to find products with no orders

-- Advanced Queries
-- Exercise 12.7: Find customers who have ordered products worth more than $500 in total
-- TODO: Sum customer order values and filter

-- Exercise 12.8: Calculate monthly sales totals
-- TODO: Group orders by month and sum revenue

-- Exercise 12.9: Find the average order value per country
-- TODO: Group by country and calculate average

-- Exercise 12.10: Identify customers who have ordered the same product multiple times
-- TODO: Find repeat product purchases

-- Business Intelligence
-- Exercise 12.11: Create a report showing each customer's favorite product
-- TODO: Find most frequently ordered product per customer

-- Exercise 12.12: Find products that are popular in specific countries
-- TODO: Analyze product popularity by geography

-- Exercise 12.13: Calculate customer lifetime value (total amount spent per customer)
-- TODO: Sum all customer spending including discounts and shipping

-- Exercise 12.14: Identify seasonal trends (if you have enough date range)
-- TODO: Analyze sales patterns over time

-- ================================================