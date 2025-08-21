-- ================================================
-- COMPLETE E-COMMERCE DATABASE SETUP
-- ================================================
-- This script creates a full e-commerce database with relationships
-- Use this for practicing JOINs and complex queries

-- ================================================
-- 1. CUSTOMERS TABLE
-- ================================================
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    city VARCHAR(100),
    country VARCHAR(100),
    date_joined DATE,
    is_active BOOLEAN DEFAULT TRUE
);

INSERT INTO customers (customer_name, email, city, country, date_joined, is_active) VALUES
('Alice Johnson', 'alice.johnson@email.com', 'New York', 'USA', '2024-01-15', TRUE),
('Bob Smith', 'bob.smith@email.com', 'Los Angeles', 'USA', '2024-02-03', TRUE),
('Carlos Gonzalez', 'carlos.gonzalez@email.com', 'Mexico City', 'Mexico', '2024-01-28', TRUE),
('Diana Prince', 'diana.prince@email.com', 'London', 'UK', '2024-03-12', TRUE),
('Eva Green', 'eva.green@email.com', 'Paris', 'France', '2024-02-20', TRUE),
('Frank Castle', 'frank.castle@email.com', 'Berlin', 'Germany', '2024-03-05', TRUE),
('Grace Kelly', 'grace.kelly@email.com', 'Rome', 'Italy', '2024-01-22', TRUE),
('Hank Schrader', 'hank.schrader@email.com', 'Madrid', 'Spain', '2024-02-14', TRUE),
('Irene Adler', 'irene.adler@email.com', 'Amsterdam', 'Netherlands', '2024-03-08', TRUE),
('Jack Reacher', 'jack.reacher@email.com', 'Sydney', 'Australia', '2024-01-30', TRUE),
('Katherine Heigl', 'katherine.heigl@email.com', 'Toronto', 'Canada', '2024-02-25', TRUE),
('Leo Messi', 'leo.messi@email.com', 'Buenos Aires', 'Argentina', '2024-03-01', TRUE),
('Mia Farrow', 'mia.farrow@email.com', 'Rio de Janeiro', 'Brazil', '2024-01-18', TRUE),
('Nina Simone', 'nina.simone@email.com', 'Johannesburg', 'South Africa', '2024-02-10', TRUE),
('Oscar Wilde', 'oscar.wilde@email.com', 'Dublin', 'Ireland', '2024-03-15', TRUE),
('Paul Atreides', 'paul.atreides@email.com', 'Vienna', 'Austria', '2024-02-28', TRUE),
('Quinn Fabray', 'quinn.fabray@email.com', 'Brussels', 'Belgium', '2024-01-25', TRUE),
('Ralph Fiennes', 'ralph.fiennes@email.com', 'Zurich', 'Switzerland', '2024-03-10', TRUE),
('Sandra Bullock', 'sandra.bullock@email.com', 'Singapore', 'Singapore', '2024-02-08', TRUE),
('Tom Hardy', 'tom.hardy@email.com', 'Hong Kong', 'China', '2024-01-12', TRUE);

-- ================================================
-- 2. PRODUCTS TABLE
-- ================================================
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    unit_price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT DEFAULT 0,
    supplier_id INT,
    date_added DATE
);

INSERT INTO products (product_name, category, unit_price, stock_quantity, supplier_id, date_added) VALUES
('MacBook Pro', 'Electronics', 1999.99, 25, 1, '2024-01-05'),
('iPhone 15', 'Electronics', 999.99, 50, 1, '2024-01-10'),
('AirPods Pro', 'Electronics', 249.99, 100, 1, '2024-01-15'),
('Gaming Mouse', 'Electronics', 79.99, 150, 2, '2024-01-20'),
('Mechanical Keyboard', 'Electronics', 129.99, 80, 2, '2024-01-25'),
('4K Monitor', 'Electronics', 399.99, 40, 2, '2024-02-01'),
('Wireless Charger', 'Electronics', 49.99, 200, 3, '2024-02-05'),
('Bluetooth Speaker', 'Electronics', 89.99, 75, 3, '2024-02-10'),
('Smartwatch', 'Electronics', 299.99, 60, 1, '2024-02-15'),
('Tablet', 'Electronics', 549.99, 35, 1, '2024-02-20'),
('Coffee Maker', 'Home', 159.99, 45, 4, '2024-01-08'),
('Blender', 'Home', 99.99, 65, 4, '2024-01-12'),
('Air Fryer', 'Home', 179.99, 30, 4, '2024-01-18'),
('Vacuum Cleaner', 'Home', 249.99, 25, 4, '2024-01-22'),
('Smart Thermostat', 'Home', 199.99, 40, 5, '2024-01-28'),
('LED Light Bulbs', 'Home', 24.99, 300, 5, '2024-02-02'),
('Yoga Mat', 'Sports', 39.99, 120, 6, '2024-01-14'),
('Dumbbells', 'Sports', 89.99, 50, 6, '2024-01-19'),
('Running Shoes', 'Sports', 149.99, 75, 7, '2024-01-24'),
('Protein Powder', 'Sports', 59.99, 100, 6, '2024-02-08');

-- ================================================
-- 3. SUPPLIERS TABLE
-- ================================================
CREATE TABLE suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    contact_person VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    country VARCHAR(50)
);

INSERT INTO suppliers (supplier_name, contact_person, phone, email, country) VALUES
('Apple Inc', 'Tim Cook', '+1-408-996-1010', 'contact@apple.com', 'USA'),
('Tech Accessories Co', 'John Doe', '+1-555-0123', 'sales@techaccess.com', 'USA'),
('Wireless Solutions', 'Jane Smith', '+44-20-1234567', 'info@wireless.uk', 'UK'),
('Home Essentials', 'Maria Garcia', '+1-555-0456', 'orders@homeessentials.com', 'USA'),
('Smart Home Tech', 'David Lee', '+49-30-12345678', 'contact@smarthome.de', 'Germany'),
('Fitness First', 'Sarah Johnson', '+1-555-0789', 'sales@fitnessfirst.com', 'USA'),
('Sports Pro', 'Michael Chen', '+86-10-12345678', 'info@sportspro.cn', 'China');

-- Add foreign key constraint for products
ALTER TABLE products ADD FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id);

-- ================================================
-- 4. ORDERS TABLE
-- ================================================
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    voucher_percent DECIMAL(5, 2) DEFAULT 0,
    shipping_cost DECIMAL(8, 2) DEFAULT 0,
    order_status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (customer_id, order_date, voucher_percent, shipping_cost, order_status) VALUES
(1, '2024-08-01', 10.00, 15.99, 'Delivered'),
(2, '2024-08-02', 5.00, 12.99, 'Delivered'),
(3, '2024-08-03', 15.00, 18.99, 'Shipped'),
(4, '2024-08-04', 0.00, 25.99, 'Delivered'),
(5, '2024-08-05', 10.00, 15.99, 'Processing'),
(6, '2024-08-06', 5.00, 12.99, 'Delivered'),
(7, '2024-08-07', 20.00, 29.99, 'Shipped'),
(8, '2024-08-08', 0.00, 15.99, 'Delivered'),
(9, '2024-08-09', 10.00, 12.99, 'Processing'),
(10, '2024-08-10', 15.00, 18.99, 'Delivered'),
(11, '2024-08-11', 5.00, 15.99, 'Shipped'),
(12, '2024-08-12', 0.00, 12.99, 'Delivered'),
(13, '2024-08-13', 25.00, 35.99, 'Processing'),
(14, '2024-08-14', 10.00, 15.99, 'Delivered'),
(15, '2024-08-15', 0.00, 12.99, 'Shipped'),
(16, '2024-08-16', 15.00, 18.99, 'Delivered'),
(17, '2024-08-17', 5.00, 15.99, 'Processing'),
(18, '2024-08-18', 20.00, 29.99, 'Delivered'),
(19, '2024-08-19', 0.00, 12.99, 'Shipped'),
(20, '2024-08-20', 10.00, 15.99, 'Processing');

-- ================================================
-- 5. ORDER_DETAILS TABLE
-- ================================================
CREATE TABLE order_details (
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_details (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1999.99),
(1, 3, 2, 249.99),
(2, 4, 1, 79.99),
(2, 5, 1, 129.99),
(3, 2, 2, 999.99),
(3, 7, 3, 49.99),
(4, 6, 1, 399.99),
(4, 8, 1, 89.99),
(5, 9, 1, 299.99),
(5, 10, 1, 549.99),
(6, 11, 1, 159.99),
(6, 12, 2, 99.99),
(7, 13, 1, 179.99),
(7, 14, 1, 249.99),
(8, 15, 1, 199.99),
(8, 16, 5, 24.99),
(9, 17, 2, 39.99),
(9, 18, 1, 89.99),
(10, 19, 1, 149.99),
(10, 20, 3, 59.99),
(11, 1, 1, 1999.99),
(11, 2, 1, 999.99),
(12, 3, 1, 249.99),
(12, 4, 2, 79.99),
(13, 5, 1, 129.99),
(13, 6, 2, 399.99),
(14, 7, 4, 49.99),
(14, 8, 1, 89.99),
(15, 9, 1, 299.99),
(15, 10, 1, 549.99),
(16, 11, 1, 159.99),
(16, 12, 1, 99.99),
(17, 13, 2, 179.99),
(17, 14, 1, 249.99),
(18, 15, 1, 199.99),
(18, 16, 10, 24.99),
(19, 17, 1, 39.99),
(19, 18, 2, 89.99),
(20, 19, 1, 149.99),
(20, 20, 1, 59.99);

-- ================================================
-- VERIFICATION QUERIES
-- ================================================
-- Uncomment these to test your database after setup:

-- Check table creation
-- SELECT 
--     'customers' AS table_name, COUNT(*) AS record_count FROM customers
-- UNION ALL
-- SELECT 
--     'products' AS table_name, COUNT(*) AS record_count FROM products
-- UNION ALL
-- SELECT 
--     'suppliers' AS table_name, COUNT(*) AS record_count FROM suppliers
-- UNION ALL
-- SELECT 
--     'orders' AS table_name, COUNT(*) AS record_count FROM orders
-- UNION ALL
-- SELECT 
--     'order_details' AS table_name, COUNT(*) AS record_count FROM order_details;

-- Sample JOIN query
-- SELECT 
--     c.customer_name,
--     c.city,
--     c.country,
--     COUNT(o.order_id) AS 'Total Orders'
-- FROM customers c
-- LEFT JOIN orders o ON c.customer_id = o.customer_id
-- GROUP BY c.customer_id, c.customer_name, c.city, c.country
-- ORDER BY COUNT(o.order_id) DESC;

-- ================================================
-- PRACTICE QUERY IDEAS:
-- ================================================
-- 1. Total sales by country
-- 2. Most popular products
-- 3. Customer lifetime value
-- 4. Average order value by month
-- 5. Supplier performance analysis
-- 6. Product category profitability
-- 7. Customer acquisition trends
-- 8. Order fulfillment status analysis
-- ================================================