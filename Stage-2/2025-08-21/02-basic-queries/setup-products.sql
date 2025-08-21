-- ================================================
-- PRODUCTS TABLE SETUP
-- ================================================
-- This script creates a products table with sample data
-- Use this for practicing queries with different data types and categories

-- Create the products table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT DEFAULT 0,
    description TEXT,
    date_added DATE,
    is_active BOOLEAN DEFAULT TRUE
);

-- Insert sample products across various categories
INSERT INTO products (product_name, category, price, stock_quantity, description, date_added, is_active) VALUES
-- Electronics
('iPhone 15 Pro', 'Electronics', 1199.99, 45, '256GB, Titanium Blue, A17 Pro chip', '2024-07-15', TRUE),
('Samsung Galaxy S24', 'Electronics', 999.99, 62, '256GB, Phantom Black, AI-powered camera', '2024-07-18', TRUE),
('MacBook Pro 14"', 'Electronics', 1999.99, 23, 'M3 chip, 512GB SSD, Space Gray', '2024-07-10', TRUE),
('Dell XPS 13', 'Electronics', 1299.99, 34, '13.4" display, Intel i7, 16GB RAM', '2024-07-12', TRUE),
('iPad Air', 'Electronics', 599.99, 78, '10.9" Liquid Retina display, M1 chip', '2024-07-20', TRUE),
('Sony WH-1000XM5', 'Electronics', 399.99, 156, 'Wireless noise-cancelling headphones', '2024-07-08', TRUE),
('AirPods Pro', 'Electronics', 249.99, 203, 'Active noise cancellation, USB-C', '2024-07-16', TRUE),
('Nintendo Switch', 'Electronics', 299.99, 89, 'OLED model with 64GB storage', '2024-07-14', TRUE),

-- Home & Garden
('Dyson V15 Vacuum', 'Home & Garden', 749.99, 28, 'Cordless stick vacuum with laser detection', '2024-07-22', TRUE),
('Instant Pot Duo', 'Home & Garden', 99.99, 145, '7-in-1 electric pressure cooker, 6 quart', '2024-07-25', TRUE),
('Philips Air Fryer', 'Home & Garden', 129.99, 87, '4.1L capacity, rapid air technology', '2024-07-19', TRUE),
('Robot Vacuum', 'Home & Garden', 399.99, 42, 'Smart mapping, app control, auto-empty', '2024-07-11', TRUE),
('Standing Desk', 'Home & Garden', 299.99, 67, 'Height adjustable, 48" x 24" bamboo top', '2024-07-13', TRUE),
('Air Purifier', 'Home & Garden', 199.99, 54, 'HEPA filter, covers 900 sq ft', '2024-07-17', TRUE),

-- Sports & Fitness
('Peloton Bike+', 'Sports & Fitness', 2495.00, 12, 'Interactive fitness bike with HD touchscreen', '2024-07-09', TRUE),
('Yoga Mat Premium', 'Sports & Fitness', 79.99, 234, '6mm thick, non-slip, eco-friendly material', '2024-07-21', TRUE),
('Dumbbells Set', 'Sports & Fitness', 299.99, 45, 'Adjustable weight, 5-50 lbs per dumbbell', '2024-07-15', TRUE),
('Treadmill Pro', 'Sports & Fitness', 1299.99, 18, 'Folding design, 3.0 HP motor, 15% incline', '2024-07-07', TRUE),
('Resistance Bands', 'Sports & Fitness', 29.99, 156, 'Set of 5 bands with different resistance levels', '2024-07-23', TRUE),
('Protein Powder', 'Sports & Fitness', 49.99, 234, 'Whey protein isolate, chocolate flavor, 2lbs', '2024-07-26', TRUE),

-- Fashion
('Levi''s 501 Jeans', 'Fashion', 89.99, 187, 'Classic straight fit, dark wash, 100% cotton', '2024-07-12', TRUE),
('Nike Air Max', 'Fashion', 129.99, 145, 'Running shoes, mesh upper, air cushioning', '2024-07-18', TRUE),
('Wool Sweater', 'Fashion', 79.99, 98, '100% merino wool, crew neck, available in 5 colors', '2024-07-20', TRUE),
('Leather Jacket', 'Fashion', 199.99, 56, 'Genuine leather, motorcycle style, black', '2024-07-14', TRUE),
('Dress Watch', 'Fashion', 299.99, 34, 'Stainless steel, automatic movement, water resistant', '2024-07-16', TRUE),

-- Books & Media
('Programming Book', 'Books & Media', 59.99, 89, 'Complete guide to modern web development', '2024-07-22', TRUE),
('Kindle Paperwhite', 'Books & Media', 149.99, 67, '6.8" display, waterproof, adjustable light', '2024-07-11', TRUE),
('Bluetooth Speaker', 'Books & Media', 89.99, 123, 'Portable, 360-degree sound, 12-hour battery', '2024-07-19', TRUE),
('Vinyl Record Player', 'Books & Media', 199.99, 28, 'Belt-drive turntable, USB output, built-in preamp', '2024-07-13', TRUE),
('Gaming Headset', 'Books & Media', 79.99, 156, 'Surround sound, noise-cancelling mic, RGB lighting', '2024-07-17', TRUE),

-- Beauty & Personal Care
('Electric Toothbrush', 'Beauty & Personal Care', 89.99, 178, 'Sonic technology, 3 cleaning modes, 2-week battery', '2024-07-15', TRUE),
('Hair Straightener', 'Beauty & Personal Care', 59.99, 134, 'Ceramic plates, temperature control, fast heating', '2024-07-21', TRUE),
('Skincare Set', 'Beauty & Personal Care', 149.99, 89, '5-piece anti-aging set with vitamin C serum', '2024-07-18', TRUE),
('Electric Razor', 'Beauty & Personal Care', 199.99, 67, 'Wet/dry shaving, 5-blade system, cordless', '2024-07-24', TRUE),
('Hair Dryer', 'Beauty & Personal Care', 79.99, 98, 'Ionic technology, 3 heat settings, lightweight', '2024-07-16', TRUE),

-- Discontinued/Low stock items for variety
('Old Model Phone', 'Electronics', 299.99, 3, 'Previous generation smartphone, limited stock', '2024-06-01', FALSE),
('Seasonal Item', 'Sports & Fitness', 19.99, 0, 'Summer sports accessory, out of stock', '2024-06-15', TRUE);

-- Verification queries to test your table
-- Uncomment these to test after creating the table:

-- Check if table was created successfully
-- SELECT COUNT(*) AS 'Total Products' FROM products;

-- View all products
-- SELECT * FROM products ORDER BY category, product_name;

-- Basic filtering examples
-- SELECT * FROM products WHERE price > 100;
-- SELECT * FROM products WHERE category = 'Electronics';
-- SELECT * FROM products WHERE stock_quantity < 50;

-- Category analysis
-- SELECT 
--     category,
--     COUNT(*) AS 'Product Count',
--     AVG(price) AS 'Average Price',
--     MIN(price) AS 'Cheapest',
--     MAX(price) AS 'Most Expensive'
-- FROM products
-- WHERE is_active = TRUE
-- GROUP BY category
-- ORDER BY AVG(price) DESC;

-- ================================================
-- PRACTICE SUGGESTIONS:
-- ================================================
-- 1. Find products under $50
-- 2. List products by category with average prices
-- 3. Find out-of-stock items (stock_quantity = 0)
-- 4. Calculate total inventory value per category
-- 5. Find products added in the last 30 days
-- 6. List top 5 most expensive products
-- 7. Find products with low stock (less than 30 units)
-- 8. Count active vs inactive products
-- ================================================