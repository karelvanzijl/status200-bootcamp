# Basic SQL Queries

## Before We Start

To follow along with all examples in this lesson, first run the setup files:

1. **[02-basic-queries/setup.sql](02-basic-queries/setup.sql)** - Creates customers table with 20+ records
2. **[02-basic-queries/setup-products.sql](02-basic-queries/setup-products.sql)** - Creates products table for additional practice

This will give you the sample data needed for all the examples and exercises below.

## Query Structure

SQL queries follow a specific order. Understanding this order helps you write correct queries:

```sql
SELECT [columns]
FROM [table]
WHERE [conditions]
GROUP BY [grouping columns]
HAVING [group conditions]
ORDER BY [sorting columns]
LIMIT [number of rows]
```

## SELECT Statement

The SELECT statement retrieves data from tables.

### Select All Columns

```sql
-- Get everything from customers table
SELECT * FROM customers;
```

### Select Specific Columns

```sql
-- Get only names and cities
SELECT first_name, last_name, city FROM customers;
```

### Column Aliases (AS keyword)

Make your output more readable with aliases:

```sql
-- Rename columns in output
SELECT
    first_name AS 'First Name',
    last_name AS 'Last Name',
    city AS 'Hometown'
FROM customers;
```

### Calculated Columns

```sql
-- Combine columns and calculate age
SELECT
    CONCAT(first_name, ' ', last_name) AS 'Full Name',
    YEAR(CURDATE()) - YEAR(date_of_birth) AS 'Age'
FROM customers;
```

## WHERE Clause - Filtering Data

The WHERE clause filters rows based on conditions.

### Basic Comparisons

```sql
-- Customers from specific city
SELECT * FROM customers WHERE city = 'New York';

-- Customers born after 1985
SELECT * FROM customers WHERE YEAR(date_of_birth) > 1985;

-- Female customers
SELECT * FROM customers WHERE gender = 'F';
```

### Comparison Operators

-   `=`: Equal to
-   `!=` or `<>`: Not equal to
-   `>`: Greater than
-   `<`: Less than
-   `>=`: Greater than or equal to
-   `<=`: Less than or equal to

### IN Operator

Find records matching any value in a list:

```sql
-- Customers from multiple cities
SELECT * FROM customers
WHERE city IN ('New York', 'Los Angeles', 'Chicago');
```

### BETWEEN Operator

Find records within a range:

```sql
-- Customers born between 1985 and 1990
SELECT * FROM customers
WHERE YEAR(date_of_birth) BETWEEN 1985 AND 1990;
```

### LIKE Operator and Wildcards

Search for patterns in text:

-   `%`: Represents zero, one, or multiple characters
-   `_`: Represents exactly one character

```sql
-- Names starting with 'J'
SELECT * FROM customers WHERE first_name LIKE 'J%';

-- Names ending with 'a'
SELECT * FROM customers WHERE first_name LIKE '%a';

-- Names containing 'oh'
SELECT * FROM customers WHERE first_name LIKE '%oh%';

-- Names with exactly 4 letters
SELECT * FROM customers WHERE first_name LIKE '____';
```

### Combining Conditions

#### AND Operator

All conditions must be true:

```sql
-- Male customers from New York
SELECT * FROM customers
WHERE gender = 'M' AND city = 'New York';
```

#### OR Operator

At least one condition must be true:

```sql
-- Customers from New York OR Los Angeles
SELECT * FROM customers
WHERE city = 'New York' OR city = 'Los Angeles';
```

#### Complex Combinations

Use parentheses to group conditions:

```sql
-- Male customers from NY or female customers from LA
SELECT * FROM customers
WHERE (gender = 'M' AND city = 'New York')
   OR (gender = 'F' AND city = 'Los Angeles');
```

## ORDER BY - Sorting Results

Sort your results in ascending (ASC) or descending (DESC) order:

```sql
-- Sort by last name (ascending by default)
SELECT * FROM customers ORDER BY last_name;

-- Sort by age, youngest first
SELECT *, YEAR(CURDATE()) - YEAR(date_of_birth) AS age
FROM customers
ORDER BY age ASC;

-- Sort by city, then by last name
SELECT * FROM customers
ORDER BY city, last_name;

-- Sort by birth year, newest first
SELECT * FROM customers
ORDER BY date_of_birth DESC;
```

## LIMIT - Restricting Number of Results

The LIMIT clause controls how many rows are returned by your query. This is especially useful for large tables or when you only need a few examples.

### Basic LIMIT

```sql
-- Get only the first 5 customers
SELECT * FROM customers LIMIT 5;

-- Get the top 3 oldest customers
SELECT *, YEAR(CURDATE()) - YEAR(date_of_birth) AS age
FROM customers
ORDER BY date_of_birth ASC
LIMIT 3;
```

### LIMIT with OFFSET

Skip some rows and then limit the results:

```sql
-- Skip first 10 customers, then show next 5
SELECT * FROM customers LIMIT 5 OFFSET 10;

-- Alternative syntax (MySQL specific)
SELECT * FROM customers LIMIT 10, 5;
```

### Practical LIMIT Examples

```sql
-- Top 10 youngest customers
SELECT 
    CONCAT(first_name, ' ', last_name) AS 'Name',
    YEAR(CURDATE()) - YEAR(date_of_birth) AS 'Age'
FROM customers
ORDER BY date_of_birth DESC
LIMIT 10;

-- Sample of customers for testing
SELECT first_name, last_name, city FROM customers LIMIT 3;

-- Most recent products added
SELECT product_name, date_added FROM products
ORDER BY date_added DESC
LIMIT 5;
```

## Date Functions

Working with dates is common in SQL:

```sql
-- Current date
SELECT CURDATE();

-- Extract year from date
SELECT YEAR(date_of_birth) FROM customers;

-- Extract month and day
SELECT MONTH(date_of_birth), DAY(date_of_birth) FROM customers;

-- Customers born in August
SELECT * FROM customers WHERE MONTH(date_of_birth) = 8;

-- Date arithmetic
SELECT * FROM customers
WHERE date_of_birth > DATE_SUB(CURDATE(), INTERVAL 30 YEAR);
```

## String Functions

Manipulate text data:

```sql
-- Concatenate strings
SELECT CONCAT(first_name, ' lives in ', city) AS description
FROM customers;

-- Convert to uppercase/lowercase
SELECT UPPER(first_name), LOWER(last_name) FROM customers;

-- Get substring
SELECT SUBSTRING(first_name, 1, 3) AS first_three_letters
FROM customers;
```

## Practice Examples

### Example 1: Customer Analysis

```sql
-- Find all female customers from cities starting with 'N'
-- born in the 1980s, sorted by birth year
SELECT
    CONCAT(first_name, ' ', last_name) AS 'Customer Name',
    city AS 'City',
    YEAR(date_of_birth) AS 'Birth Year'
FROM customers
WHERE gender = 'F'
    AND city LIKE 'N%'
    AND YEAR(date_of_birth) BETWEEN 1980 AND 1989
ORDER BY date_of_birth;
```

### Example 2: Customer Demographics

```sql
-- Get customer information with age calculation
-- for customers under 40, ordered by age
SELECT
    first_name AS 'First Name',
    last_name AS 'Last Name',
    city AS 'City',
    YEAR(CURDATE()) - YEAR(date_of_birth) AS 'Age'
FROM customers
WHERE YEAR(CURDATE()) - YEAR(date_of_birth) < 40
ORDER BY YEAR(CURDATE()) - YEAR(date_of_birth) DESC;
```

## Common Mistakes to Avoid

1. **Missing quotes around text values**: Use `'New York'` not `New York`
2. **Wrong date format**: Use `'1985-04-12'` not `'04/12/1985'`
3. **Case sensitivity**: Some databases are case-sensitive for data values
4. **Forgetting WHERE clause**: This retrieves ALL records
5. **Mixing up AND/OR logic**: Use parentheses to clarify complex conditions

## Practice Exercises

Try these queries with the customers table:

1. Find all customers whose first name starts with 'A' or 'E'
2. Get customers born in December of any year
3. Find customers from cities ending with 'ton' or 'land'
4. List all male customers over 35 years old, sorted by city
5. Create a report showing "John from New York is 40 years old" format
6. Show only the 3 oldest customers with their ages
7. Get a sample of 5 customers from Chicago for testing
8. Find the top 10 most expensive products

## Partice Yourself Exercises

Follow the instructions for the remaining exercises as outlined in the file:

-   **[02-basic-queries/exercises.sql](02-basic-queries/exercises.sql)**: 50+ practice exercises from beginner to advanced
-   **[02-basic-queries/solutions.sql](02-basic-queries/solutions.sql)**: Complete solutions with explanations

## Next Steps

Ready to learn about calculations and data analysis? Continue to [Aggregate Functions](03-aggregate-functions.md).
