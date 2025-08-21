-- ================================================
-- LESSON 3: AGGREGATE FUNCTIONS - SETUP FILE
-- ================================================
-- This file creates both customers and products tables for aggregate practice

-- Create the customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    date_of_birth DATE,
    gender CHAR(1), -- 'M' for Male, 'F' for Female
    email VARCHAR(100)
);

-- Insert sample customers with diverse data for aggregation
INSERT INTO customers (first_name, last_name, city, date_of_birth, gender, email) VALUES
('John', 'Smith', 'New York', '1985-04-12', 'M', 'john.smith@email.com'),
('Emma', 'Johnson', 'Los Angeles', '1990-06-25', 'F', 'emma.johnson@email.com'),
('Michael', 'Brown', 'Chicago', '1988-09-15', 'M', 'michael.brown@email.com'),
('Olivia', 'Williams', 'Houston', '1992-11-05', 'F', 'olivia.williams@email.com'),
('James', 'Jones', 'Phoenix', '1986-02-19', 'M', 'james.jones@email.com'),
('Sophia', 'Davis', 'Philadelphia', '1983-03-22', 'F', 'sophia.davis@email.com'),
('William', 'Miller', 'San Antonio', '1991-07-13', 'M', 'william.miller@email.com'),
('Isabella', 'Wilson', 'San Diego', '1989-10-30', 'F', 'isabella.wilson@email.com'),
('Alexander', 'Moore', 'Dallas', '1993-01-14', 'M', 'alexander.moore@email.com'),
('Mia', 'Taylor', 'San Jose', '1984-08-27', 'F', 'mia.taylor@email.com'),
('Ethan', 'Anderson', 'Austin', '1987-05-16', 'M', 'ethan.anderson@email.com'),
('Charlotte', 'Thomas', 'New York', '1990-12-08', 'F', 'charlotte.thomas@email.com'),
('Lucas', 'Jackson', 'Los Angeles', '1985-09-03', 'M', 'lucas.jackson@email.com'),
('Amelia', 'White', 'Chicago', '1988-04-20', 'F', 'amelia.white@email.com'),
('Benjamin', 'Harris', 'New York', '1982-11-11', 'M', 'benjamin.harris@email.com');

-- Create the products table for additional aggregation practice
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT DEFAULT 0,
    date_added DATE
);

-- Insert products across different categories
INSERT INTO products (product_name, category, price, stock_quantity, date_added) VALUES
('iPhone 15 Pro', 'Electronics', 1199.99, 45, '2024-07-15'),
('MacBook Pro', 'Electronics', 1999.99, 23, '2024-07-10'),
('AirPods Pro', 'Electronics', 249.99, 203, '2024-07-16'),
('Gaming Mouse', 'Electronics', 79.99, 156, '2024-07-20'),
('Yoga Mat', 'Sports', 39.99, 234, '2024-07-21'),
('Dumbbells', 'Sports', 99.99, 45, '2024-07-15'),
('Running Shoes', 'Sports', 149.99, 75, '2024-07-24'),
('Coffee Maker', 'Home', 159.99, 65, '2024-07-12'),
('Blender', 'Home', 99.99, 87, '2024-07-19'),
('Air Fryer', 'Home', 179.99, 30, '2024-07-18'),
('Leather Jacket', 'Fashion', 199.99, 56, '2024-07-14'),
('Dress Watch', 'Fashion', 299.99, 34, '2024-07-16'),
('Skincare Set', 'Beauty', 149.99, 89, '2024-07-18'),
('Hair Dryer', 'Beauty', 79.99, 98, '2024-07-16');

-- Verification queries
SELECT COUNT(*) AS 'Total Customers' FROM customers;
SELECT COUNT(*) AS 'Total Products' FROM products;
SELECT 'Setup completed successfully!' AS Status;