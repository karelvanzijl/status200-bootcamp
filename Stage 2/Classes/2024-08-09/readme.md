# SQL Queries

## Files

-   [queries-examples.sql](queries-examples.sql): example queries used in morning session
-   [queries-tasks.sql](queries-tasks.sql): queries from tasks (see below) giving during class. It includes the create table and insert test data queries needed for the tasks.

## Tasks

1. A list of products (name, price, description) that have been sold after July 15th 2024 and have a remaining stock of at least 50
2. The total value of all products in stock
3. The product categories with a stock over 600
4. All cameras (product name) sold between now and a month ago
5. All products added to the stock before 28-07-2024 and have a price between 299.99 and 499.99

## Theory

**SELECT**
The SELECT statement is used to specify the columns you want to retrieve from the database. This is where you define the data you want to display as a result.

**FROM**
The FROM clause indicates the table (or tables) from which to retrieve the data. If you're querying multiple tables, you can join them in this section.

**WHERE**
The WHERE clause is used to filter the rows that are fetched from the database table(s). This clause is applied before any grouping occurs.

**GROUP BY**
The GROUP BY clause is used to group rows that have the same values in specified columns into aggregated data, such as sums or averages. This is often used with aggregate functions like SUM(), COUNT(), MAX(), MIN(), etc.

Example: If you're grouping by a department column, all rows with the same department value will be grouped together.

**HAVING**
The HAVING clause is similar to the WHERE clause, but it's used to filter the results after the grouping has been done. It applies filters to the aggregated data that you get after using the GROUP BY clause.

Example: If you've grouped data by department and calculated the total sales per department, you might use HAVING to filter out departments with total sales below a certain threshold.

**ORDER BY**
he ORDER BY clause is used to sort the rows in the result set by one or more columns. You can specify the sort direction as either ascending (ASC, which is the default) or descending (DESC).

### Example Query

```
SELECT gender, COUNT(*) as number_of_customers
FROM customers
WHERE YEAR(date_of_birth) > 1995
GROUP BY gender
HAVING number_of_customers < 3;
ORDER BY number_of_customers DESC
```

### Explanation:

-   `SELECT gender, COUNT(*) as number_of_customers`: Retrieves the gender and counts the number of customers for each gender.
-   `FROM customers`: Data is taken from the customers table.
-   `WHERE YEAR(date_of_birth) > 1995`: Filters to include only customers born after 1995.
-   `GROUP BY gender`: Groups the data by gender.
-   `HAVING number_of_customers < 3`: Only returns gender groups with fewer than 3 customers.
-   `ORDER BY number_of_customers DESC`: Sorts the resulting groups by the number_of_customers in descending order, meaning the gender group with the highest number of customers (among those with fewer than 3) will appear first.

### What This Query Does:

-   It first filters out customers born before 1995.
-   Then, it groups the remaining customers by gender.
-   After that, it counts the number of customers in each gender group.
-   It then returns only those gender groups where the number of customers is less than 3.
-   Finally, it sorts the resulting gender groups by the number of customers in descending order, displaying the gender group with the highest count (among those with fewer than 3) at the top.
