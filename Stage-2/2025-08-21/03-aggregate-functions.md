# Aggregate Functions and Data Analysis

## Before We Start

To follow along with all examples in this lesson, first run the setup file:
**[03-aggregate-functions/setup.sql](03-aggregate-functions/setup.sql)**

This creates both customers and products tables with data specifically designed for aggregate function practice.

Aggregate functions perform calculations on groups of rows and return a single result. They're essential for data analysis and reporting.

## Common Aggregate Functions

### COUNT() - Counting Records

```sql
-- Count total customers
SELECT COUNT(*) AS 'Total Customers' FROM customers;

-- Count customers with specific condition
SELECT COUNT(*) AS 'Customers from New York'
FROM customers WHERE city = 'New York';

-- Count non-null values in a column
SELECT COUNT(city) AS 'Customers with City Info' FROM customers;
```

### SUM() - Adding Numbers

```sql
-- Total value of all products (assuming products table with price column)
SELECT SUM(price) AS 'Total Inventory Value' FROM products;

-- Sum with conditions
SELECT SUM(price) AS 'Electronics Total'
FROM products WHERE category = 'Electronics';
```

### AVG() - Average Values

```sql
-- Average product price
SELECT AVG(price) AS 'Average Price' FROM products;

-- Average age of customers
SELECT AVG(YEAR(CURDATE()) - YEAR(date_of_birth)) AS 'Average Age'
FROM customers;
```

### MIN() and MAX() - Extreme Values

```sql
-- Oldest and youngest customers
SELECT
    MIN(date_of_birth) AS 'Oldest Customer Birthday',
    MAX(date_of_birth) AS 'Youngest Customer Birthday'
FROM customers;

-- Cheapest and most expensive products
SELECT
    MIN(price) AS 'Cheapest Product',
    MAX(price) AS 'Most Expensive Product'
FROM products;
```

## GROUP BY - Grouping Data

GROUP BY groups rows with the same values and applies aggregate functions to each group.

### Basic Grouping

```sql
-- Count customers by gender
SELECT
    gender,
    COUNT(*) AS 'Number of Customers'
FROM customers
GROUP BY gender;
```

### Multiple Column Grouping

```sql
-- Count customers by city and gender
SELECT
    city,
    gender,
    COUNT(*) AS 'Customer Count'
FROM customers
GROUP BY city, gender
ORDER BY city, gender;
```

### Grouping with Calculations

```sql
-- Average age by city
SELECT
    city,
    AVG(YEAR(CURDATE()) - YEAR(date_of_birth)) AS 'Average Age'
FROM customers
GROUP BY city
ORDER BY AVG(YEAR(CURDATE()) - YEAR(date_of_birth)) DESC;
```

## HAVING - Filtering Groups

HAVING filters groups after GROUP BY is applied. Use WHERE for row filtering, HAVING for group filtering.

### Basic HAVING Examples

```sql
-- Cities with more than 2 customers
SELECT
    city,
    COUNT(*) AS 'Customer Count'
FROM customers
GROUP BY city
HAVING COUNT(*) > 2;
```

### Complex HAVING Conditions

```sql
-- Gender groups with average age over 30
SELECT
    gender,
    COUNT(*) AS 'Number of Customers',
    AVG(YEAR(CURDATE()) - YEAR(date_of_birth)) AS 'Average Age'
FROM customers
GROUP BY gender
HAVING AVG(YEAR(CURDATE()) - YEAR(date_of_birth)) > 30;
```

## Complete Query Example

Here's a comprehensive example showing the full SQL query structure:

```sql
SELECT
    gender,
    COUNT(*) AS 'Number of Customers',
    AVG(YEAR(CURDATE()) - YEAR(date_of_birth)) AS 'Average Age',
    MIN(YEAR(date_of_birth)) AS 'Oldest Birth Year',
    MAX(YEAR(date_of_birth)) AS 'Youngest Birth Year'
FROM customers
WHERE city IN ('New York', 'Los Angeles', 'Chicago')
GROUP BY gender
HAVING COUNT(*) > 1
ORDER BY AVG(YEAR(CURDATE()) - YEAR(date_of_birth)) DESC;
```

### Query Execution Order:

1. **FROM**: Get data from customers table
2. **WHERE**: Filter to specific cities
3. **GROUP BY**: Group remaining rows by gender
4. **SELECT**: Calculate aggregates for each group
5. **HAVING**: Filter groups with more than 1 customer
6. **ORDER BY**: Sort results by average age

## Real-World Examples

### Sales Analysis (Products Table)

```sql
-- Product category analysis
SELECT
    category,
    COUNT(*) AS 'Number of Products',
    AVG(price) AS 'Average Price',
    SUM(price) AS 'Total Category Value',
    MIN(price) AS 'Cheapest Item',
    MAX(price) AS 'Most Expensive Item'
FROM products
GROUP BY category
HAVING COUNT(*) >= 3
ORDER BY SUM(price) DESC;
```

### Customer Demographics

```sql
-- Age group analysis
SELECT
    CASE
        WHEN YEAR(CURDATE()) - YEAR(date_of_birth) < 25 THEN 'Under 25'
        WHEN YEAR(CURDATE()) - YEAR(date_of_birth) < 35 THEN '25-34'
        WHEN YEAR(CURDATE()) - YEAR(date_of_birth) < 50 THEN '35-49'
        ELSE '50+'
    END AS 'Age Group',
    COUNT(*) AS 'Customer Count',
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customers), 1) AS 'Percentage'
FROM customers
GROUP BY
    CASE
        WHEN YEAR(CURDATE()) - YEAR(date_of_birth) < 25 THEN 'Under 25'
        WHEN YEAR(CURDATE()) - YEAR(date_of_birth) < 35 THEN '25-34'
        WHEN YEAR(CURDATE()) - YEAR(date_of_birth) < 50 THEN '35-49'
        ELSE '50+'
    END
ORDER BY MIN(YEAR(CURDATE()) - YEAR(date_of_birth));
```

## Mathematical Functions

### ROUND() - Rounding Numbers

```sql
-- Round average price to 2 decimal places
SELECT
    category,
    ROUND(AVG(price), 2) AS 'Average Price'
FROM products
GROUP BY category;
```

### CONCAT() with Aggregates

```sql
-- Create descriptive summaries
SELECT
    CONCAT(city, ' has ', COUNT(*), ' customers') AS 'City Summary'
FROM customers
GROUP BY city
ORDER BY COUNT(*) DESC;
```

## Common Patterns and Tips

### 1. Finding Duplicates

```sql
-- Find cities with multiple customers
SELECT
    city,
    COUNT(*) AS 'Customer Count'
FROM customers
GROUP BY city
HAVING COUNT(*) > 1;
```

### 2. Percentage Calculations

```sql
-- Gender distribution as percentages
SELECT
    gender,
    COUNT(*) AS 'Count',
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customers), 1) AS 'Percentage'
FROM customers
GROUP BY gender;
```

### 3. Top N Analysis

```sql
-- Top 3 cities by customer count
SELECT
    city,
    COUNT(*) AS 'Customer Count'
FROM customers
GROUP BY city
ORDER BY COUNT(*) DESC
LIMIT 3;
```

## Practice Exercises

Using the customers and products tables:

1. **Basic Aggregates**:

    - Count total customers
    - Find the average customer age
    - Find the oldest and youngest customer birth years

2. **Grouping Practice**:

    - Count customers by city
    - Calculate average age by gender
    - Group customers by birth decade (1980s, 1990s, etc.)

3. **Advanced Analysis**:

    - Find cities with exactly 2 customers
    - Calculate product category statistics (count, avg price, total value)
    - Find age groups with more than 3 customers

4. **Complex Queries**:
    - Cities where the average customer age is above 35
    - Product categories with average price over $100
    - Gender groups born primarily in the 1980s

## Partice Yourself Exercises

Follow the instructions for the remaining exercises as outlined in the file:

-   **[03-aggregate-functions/exercises.sql](03-aggregate-functions/exercises.sql)**: Progressive exercises from basic COUNT to complex analytics
-   **[03-aggregate-functions/solutions.sql](03-aggregate-functions/solutions.sql)**: Complete solutions with business insights

## Common Mistakes

1. **Using aggregate functions without GROUP BY**: `SELECT city, COUNT(*) FROM customers` (missing GROUP BY city)
2. **Using column names not in GROUP BY**: All selected columns must be in GROUP BY or be aggregate functions
3. **Confusing WHERE vs HAVING**: Use WHERE to filter rows, HAVING to filter groups
4. **Forgetting ORDER BY**: Results might appear in random order

## Next Steps

Ready to learn how to combine data from multiple tables? Continue to [Database Relationships](04-database-relationships.md).
