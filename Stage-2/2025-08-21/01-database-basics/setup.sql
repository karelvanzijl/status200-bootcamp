-- ================================================
-- LESSON 1: DATABASE BASICS - SETUP FILE
-- ================================================
-- This file creates the basic customers table for lesson 1 exercises

-- Create the customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    date_of_birth DATE,
    gender CHAR(1) -- 'M' for Male, 'F' for Female
);

-- Insert sample customers for basic practice
INSERT INTO customers (first_name, last_name, city, date_of_birth, gender) VALUES
('John', 'Smith', 'New York', '1985-04-12', 'M'),
('Emma', 'Johnson', 'Los Angeles', '1990-06-25', 'F'),
('Michael', 'Brown', 'Chicago', '1988-09-15', 'M'),
('Olivia', 'Williams', 'Houston', '1992-11-05', 'F'),
('James', 'Jones', 'Phoenix', '1986-02-19', 'M');

-- Verification - check if table was created correctly
SELECT COUNT(*) AS 'Total Customers' FROM customers;

-- Show all data
SELECT * FROM customers ORDER BY last_name, first_name;