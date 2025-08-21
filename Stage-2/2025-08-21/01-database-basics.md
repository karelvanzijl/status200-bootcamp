# Database Basics

## What is a Database?

A database is a structured collection of data that is stored and organized in a way that allows for efficient retrieval, management, and updating. Think of it as a digital filing system.

## Before We Start

To follow along with the examples in this lesson, run the setup file:
**[01-database-basics/setup.sql](01-database-basics/setup.sql)**

This creates a basic customers table that we'll use for the examples below.

## What is SQL?

SQL (Structured Query Language) is the standard language for managing and manipulating relational databases. It allows you to:

-   **Create** tables and databases
-   **Insert** data into tables
-   **Retrieve** data with specific conditions
-   **Update** existing data
-   **Delete** unwanted data
-   **Analyze** data with calculations and grouping

## Database Structure

### Tables

A table is like a spreadsheet with rows and columns:

-   **Rows** (Records): Each row represents a single entity (e.g., one customer, one product)
-   **Columns** (Fields): Each column represents an attribute (e.g., name, price, date)

### Data Types

Common SQL data types:

-   `INT`: Whole numbers (1, 42, -5)
-   `VARCHAR(n)`: Text with maximum length n ("John", "Product Name")
-   `DATE`: Dates in YYYY-MM-DD format (2025-08-21)
-   `DECIMAL(m,n)`: Numbers with decimals (999.99, 25.50)
-   `CHAR(n)`: Fixed-length text ('M', 'F')

## Creating Your First Table

```sql
-- Create a simple customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50),
    date_of_birth DATE,
    gender CHAR(1)
);
```

### Key Components Explained:

-   `AUTO_INCREMENT`: Automatically generates unique numbers for each new record
-   `PRIMARY KEY`: Uniquely identifies each row in the table
-   `VARCHAR(50)`: Variable-length text up to 50 characters
-   `CHAR(1)`: Fixed-length text of exactly 1 character

## Inserting Data

```sql
-- Add customers to the table
INSERT INTO customers (first_name, last_name, city, date_of_birth, gender) VALUES
('John', 'Smith', 'New York', '1985-04-12', 'M'),
('Emma', 'Johnson', 'Los Angeles', '1990-06-25', 'F'),
('Michael', 'Brown', 'Chicago', '1988-09-15', 'M');
```

### Important Notes:

-   We don't specify `customer_id` because it's auto-generated
-   Text values must be in quotes ('John', 'New York')
-   Dates must be in YYYY-MM-DD format
-   The order of values must match the order of columns

## Basic Data Retrieval

```sql
-- Get all customers
SELECT * FROM customers;

-- Get specific columns
SELECT first_name, last_name FROM customers;

-- Get customers from a specific city
SELECT * FROM customers WHERE city = 'New York';
```

## Why Use Databases?

1. **Organization**: Keep data structured and easy to find
2. **Efficiency**: Quickly search through millions of records
3. **Integrity**: Ensure data follows rules (e.g., unique IDs)
4. **Security**: Control who can access what data
5. **Relationships**: Connect related information across multiple tables

## Practice Exercise

Create a simple `products` table with the following columns:

-   `product_id` (auto-increment primary key)
-   `product_name` (up to 100 characters)
-   `price` (decimal with 2 decimal places)
-   `category` (up to 50 characters)

Insert 3 products of your choice and then retrieve all products where the price is greater than 50.

## Partice Yourself Exercises

Follow the instructions for the remaining exercises as outlined in the file:

-   **[01-database-basics/exercises.sql](01-database-basics/exercises.sql)**: Practice exercises with TODO items
-   **[01-database-basics/solutions.sql](01-database-basics/solutions.sql)**: Solutions to all exercises

## Next Steps

Now that you understand the basics, let's move on to [Basic Queries](02-basic-queries.md) where we'll learn more sophisticated ways to retrieve and filter data.
