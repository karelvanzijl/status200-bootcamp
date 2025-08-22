# Database Relationships and JOINs

## Before We Start

To follow along with all examples in this lesson, first run the setup file:
**[01-database-relationships/setup.sql](01-database-relationships/setup.sql)**

This creates a complete e-commerce database with customers, products, orders, suppliers, and order details tables - all properly related with foreign keys. The setup takes a bit longer as it creates realistic sample data for complex relationship practice.

Real-world applications rarely use just one table. Database relationships allow us to connect related information across multiple tables, avoiding data duplication and maintaining data integrity.

**The setup creates these related tables:**

-   **customers**: Customer information with geographic data
-   **products**: Product catalog with suppliers and categories
-   **orders**: Order transactions with discounts and shipping
-   **order_details**: Individual items within orders
-   **suppliers**: Product supplier information

## Understanding Keys

### Primary Key (PK)

A Primary Key uniquely identifies each record in a table:

-   Must be unique for every row
-   Cannot be NULL (empty)
-   Usually an auto-incrementing number

```sql
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,  -- This is the Primary Key
    customer_name VARCHAR(100),
    city VARCHAR(100)
);
```

### Foreign Key (FK)

A Foreign Key creates a link between two tables by referencing the Primary Key of another table:

```sql
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    customer_id INT,                           -- This is a Foreign Key
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
```

## Database Relationship Example

The following examples are included in the [setup file](./01-database-relationships/setup.sql) and demonstrate a simple e-commerce database with the following tables:

### 1. Customers Table

```sql
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    city VARCHAR(100),
    country VARCHAR(100),
    date_joined DATE,
    is_active BOOLEAN DEFAULT TRUE
);
```

### 2. Supplier Table

```sql
CREATE TABLE suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    contact_person VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    country VARCHAR(50)
);
```

### 3. Products Table

```sql
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_id INT,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    unit_price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT DEFAULT 0,
    date_added DATE,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);
```

### 4. Orders Table

```sql
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    voucher_percent DECIMAL(5, 2) DEFAULT 0,
    shipping_cost DECIMAL(8, 2) DEFAULT 0,
    order_status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
```

### 5. Order Details Table

```sql
CREATE TABLE order_details (
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
```

## Understanding the Relationships

What did we just create? Here's a quick overview of the relationships:

<img src="./01-database-relationships/diagram.svg">
<br><br>

_Customer - Order relationships:_

-   **Customers** can place multiple **Orders** (1-to-many relationship).
-   **Orders** can have multiple **Order Details** (1-to-many relationship).

_Product - Supplier relationships:_

-   **Products** can be supplied by **Suppliers** (many-to-1 relationship).
-   **Suppliers** can provide multiple **Products** (1-to-many relationship).

_Order - Product relationships:_

-   **Order Details** link **Orders** to **Products** (many-to-many relationship).
-   **Products** can be part of multiple **Order Details** (1-to-many relationship).

## JOIN Operations

JOINs combine rows from multiple tables based on related columns.

_It is like we creating a new table on-the-fly that contains only the rows where there is a match between the two tables._

> In this "on-the-fly" table we can perform _`SELECT`, `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`_ and _`LIMIT`_ operations, just like we do with a single table.

### JOIN (INNER JOIN)

Returns only rows that have matching values in both tables:

```sql
-- Get all columns from orders and customers
SELECT *
FROM orders
JOIN customers AS c ON orders.customer_id = customers.customer_id;
```

**Using Table Aliases**

The above query can be simplified using aliases for better readability:

```sql
-- Same query with aliases
SELECT *
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id;
```

#### Try it out and lets see what's happening here!

The `JOIN` combines the `orders` and `customers` tables where the `customer_id` matches.

An "on-the-fly" table is created that contains only the rows where there is a match between the two tables. This new table contains all columns of all orders and customers that have matching `customer_id`:

-   `order_id` from `orders`
-   `customer_id` from `orders`
-   `order_date` from `orders`
-   `voucher_percent` from `orders`
-   `shipping_cost` from `orders`
-   `order_status` from `orders`
-   `customer_id` from `customers`
-   `customer_name` from `customers`
-   `email` from `customers`
-   `city` from `customers`
-   `country` from `customers`
-   `date_joined` from `customers`
-   `is_active` from `customers`

#### Important to remember!

As mentioned earlier, we can perform _`SELECT`, `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`_ and _`LIMIT`_ operations on this on-the-fly table just like we do with a single table.

**BUT!** when we use `JOIN` and want to **select specific columns**, we need to **specify which table each column comes from**, especially if they have the same name in both tables.

For example:

```sql
-- Same query with aliases
SELECT
    o.order_id,
    c.customer_name,
    o.order_date
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id;
```

We're telling SQL to select:

-   `order_id` from the `orders` table (aliased as `o`)
-   `customer_name` from the `customers` table (aliased as `c`)
-   `order_date` from the `orders` table (aliased as `o`)

### Multiple Table JOINs

You can join more than two tables in a single query. This is useful for retrieving related data from multiple sources.

In the end it still creates an "on-the-fly" table that contains only the rows where there is a match between all tables.

Join more than two tables:

```sql
-- Get order details with customer and product information
SELECT
    c.customer_name,
    p.product_name,
    od.quantity,
    od.unit_price,
    o.order_date
FROM order_details AS od
JOIN orders AS o ON od.order_id = o.order_id
JOIN customers AS c ON o.customer_id = c.customer_id
JOIN products AS p ON od.product_id = p.product_id;
```

The `FROM` and `JOIN` part of this query creates an "on-the-fly" table that combines the `order_details`, `orders`, `customers`, and `products` tables.

_It only includes rows where there is a match across all four tables based on the specified join conditions._

The `SELECT` statement then retrieves specific columns from this combined "on-the-fly" table:

-   `customer_name` from the `customers` table (aliased as `c`)
-   `product_name` from the `products` table (aliased as `p`)
-   `quantity` from the `order_details` table (aliased as `od`)
-   `unit_price` from the `order_details` table (aliased as `od`)
-   `order_date` from the `orders` table (aliased as `o`)

## Practical JOIN Examples

To illustrate how JOINs can be used in real-world scenarios, here are some practical examples based on our e-commerce database setup.

Try them out in your SQL environment to see how they work with the sample data created in the setup file.

Also try to understand what each query is doing and how it relates to the relationships between the tables.

### Example 1: Customer Order Summary

```sql
-- List all customers and their order count
SELECT
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS 'Number of Orders'
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
ORDER BY COUNT(o.order_id) DESC;
```

### Example 2: Order Value Calculation

```sql
-- Calculate total value for each order
SELECT
    o.order_id,
    c.customer_name,
    o.order_date,
    SUM(od.quantity * od.unit_price) AS 'Order Total',
    o.voucher_percent AS 'Discount %',
    ROUND(SUM(od.quantity * od.unit_price) * (1 - o.voucher_percent / 100), 2) AS 'Final Total'
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY o.order_id, c.customer_name, o.order_date, o.voucher_percent
ORDER BY SUM(od.quantity * od.unit_price) DESC;
```

### Example 3: Product Popularity Analysis

```sql
-- Find most popular products
SELECT
    p.product_name,
    COUNT(od.order_id) AS 'Times Ordered',
    SUM(od.quantity) AS 'Total Quantity Sold',
    AVG(od.unit_price) AS 'Average Selling Price'
FROM products AS p
JOIN order_details AS od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name
HAVING COUNT(od.order_id) >= 2
ORDER BY SUM(od.quantity) DESC;
```

### Example 4: Customer Analysis by Location

```sql
-- Sales analysis by country
SELECT
    c.country,
    COUNT(DISTINCT c.customer_id) AS 'Number of Customers',
    COUNT(o.order_id) AS 'Total Orders',
    ROUND(AVG(od.quantity * od.unit_price), 2) AS 'Average Order Line Value'
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.country
ORDER BY COUNT(o.order_id) DESC;
```

### Example 5: Product Category Performance

```sql
-- Find products over $200 ordered by customers in specific cities
SELECT DISTINCT
    p.product_name,
    p.unit_price,
    c.customer_name,
    c.city
FROM products AS p
JOIN order_details AS od ON p.product_id = od.product_id
JOIN orders AS o ON od.order_id = o.order_id
JOIN customers AS c ON o.customer_id = c.customer_id
WHERE p.unit_price > 200
    AND c.city IN ('Amsterdam', 'Rome', 'Berlin')
ORDER BY p.unit_price DESC;
```

## Best Practices

### 1. Always Use Table Aliases

```sql
-- Good
SELECT c.customer_name, o.order_date
FROM customers AS c
INNER JOIN orders AS o ON c.customer_id = o.customer_id;

-- Avoid (gets confusing with multiple tables)
SELECT customer_name, order_date
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id;
```

### 2. Be Specific with Column Selection

```sql
-- Good - specify exactly what you need
SELECT c.customer_name, o.order_date, od.quantity
FROM customers AS c...

-- Avoid - can return too much data
SELECT *
FROM customers AS c...
```

### 3. Use Meaningful Aliases

```sql
-- Good
SELECT
    c.customer_name AS 'Customer Name',
    COUNT(o.order_id) AS 'Total Orders'
FROM customers AS c...

-- Less clear
SELECT
    c.customer_name AS name,
    COUNT(o.order_id) AS cnt
FROM customers AS c...
```

### 4. LIMIT with JOINs

LIMIT is crucial when working with JOINs as they can return very large result sets. **It's not always necessary**, but you should be aware of your data set size and use LIMIT to avoid an overwhelming amount of results.

```sql
-- Top 5 biggest orders by value
SELECT
    o.order_id,
    c.customer_name,
    SUM(od.quantity * od.unit_price) AS 'Order Total'
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY o.order_id, c.customer_name
ORDER BY SUM(od.quantity * od.unit_price) DESC
LIMIT 5;
```

## Practice Exercises

### Basic JOINs

1. List all orders with customer names and cities
2. Show all products that have been ordered, with order dates
3. Find customers who have placed orders, with their total order count

### Intermediate Analysis

4. Calculate the total revenue generated by each customer
5. Find the most expensive single order line (quantity × price)
6. List products that have never been ordered (hint: use LEFT JOIN)

### Advanced Queries

7. Find customers who have ordered products worth more than $500 in total
8. Calculate monthly sales totals
9. Find the average order value per country
10. Identify customers who have ordered the same product multiple times

### Business Intelligence

11. Create a report showing each customer's favorite product (most frequently ordered)
12. Find products that are popular in specific countries
13. Calculate customer lifetime value (total amount spent per customer)
14. Identify seasonal trends (if you have enough date range in your data)

## Practice Yourself Exercises

Follow the instructions for the remaining exercises as outlined in the file:

-   **[01-database-relationships/exercises.sql](01-database-relationships/exercises.sql)**: Progressive JOIN exercises from basic to business intelligence
-   **[01-database-relationships/solutions.sql](01-database-relationships/solutions.sql)**: Complete solutions with complex business queries

## Common JOIN Mistakes

1. **Missing JOIN condition**: Results in a Cartesian product (every row matched with every row)
2. **Wrong JOIN type**: Using JOIN when you need LEFT JOIN (or vice versa)
3. **Ambiguous column names**: Not specifying which table a column comes from
4. **Forgetting GROUP BY**: When using aggregate functions with JOINs
