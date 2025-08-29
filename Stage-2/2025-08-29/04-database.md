# Database

Some basics to get you started with your Database.

-   [Setting Up](#setting-up)
-   [INSERT Statement](#insert-statement)
-   [SELECT Statement](#select-statement)
-   [UPDATE Statement](#update-statement)
-   [DELETE Statement](#delete-statement)
-   [Exercises and Solutions](#exercises-and-solutions)

---

## Setting Up

<br>

-   Take a piece of paper and draw a simple ERD (Entity-Relationship Diagram) for a small application. For example, a webshop system with entities like `Products`, `Categories`, and `Orders`.

    <br>

    > This will help you visualize the relationships between different entities in your database and better understand how to structure your tables.

    ```
    !!! THIS IS AN EXAMPLE, NOT NECESSARILY WHAT YOU'LL NEED TO BUILD !!!

    +----------------+         +----------------+       +----------------+
    |   categories   |         |    products    |       |     orders     |
    +----------------+         +----------------+       +----------------+
    | category_id PK | <──┐    | product_id PK  |       | order_id PK    |
    | name           |    │    | name           |       | order_date     |
    | description    |    │    | description    |       | total_amount   |
    +----------------+    │    | price          |       +----------------+
                          └──> | category_id FK |
                               +----------------+
    ```

-   Once you have your ERD, you can create the corresponding tables in your MySQL database. Here are the SQL commands to create the tables based on the above ERD:
    <br>

    > Keep in mind that you can **only create a foreign key relationship if the referenced table already exists**. So, create the tables in an order that respects these dependencies.

    ```sql
    CREATE TABLE categories (
        category_id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        description TEXT
    );

    CREATE TABLE products (
        product_id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        description TEXT,
        price DECIMAL(10, 2) NOT NULL,
        category_id INT,
        FOREIGN KEY (category_id) REFERENCES categories(category_id) ON DELETE CASCADE
    );

    -- Other tables like orders can be created similarly
    ```

-   Once your tables are created, you can insert some sample data into them to test your setup. Here are some example SQL commands to insert data into the `Categories` and `Products` tables:
    <br>

    ```sql
    INSERT INTO categories (name, description) VALUES
    ('Electronics', 'Devices and gadgets'),
    ('Books', 'Various genres of books'),
    ('Clothing', 'App and accessories');

    -- Other sample data
    ```

---

## INSERT Statement

The `INSERT` statement is used to add new records to a table in a database. Here's the basic syntax:

> **You must specify the columns you are inserting values into.** This ensures that the values are inserted into the correct columns, especially if the table has many columns or if some columns have default values.

> If you defined an `AUTO_INCREMENT` primary key, you do not need to include it in your `INSERT` statement; the database will automatically generate a unique value for it.

```sql
INSERT INTO [table_name] (
    [column1],
    [column2],
    ...
) VALUES (
    [value1],
    [value2],
    ...
);
```

---

## SELECT Statement

The `SELECT` statement is used to retrieve data from one or more tables in a database. Here's the basic syntax:

> **The order of clauses in a SQL query is important!** They should be used in the order shown below.

> **Use table aliases (short names) when joining one or more tables** to make your queries easier to read and write.

```sql
SELECT [columns]
FROM [table_name]
JOIN [other_table] ON [condition]
WHERE [condition]
GROUP BY [column]
HAVING [condition]
ORDER BY [column] [ASC|DESC]
LIMIT [number];
```

Examples:

-   Depending on your needs and the complexity of your queries, you may not need to use all of these clauses. For example, a simple query to retrieve all products might look like this:

    ```sql
    SELECT * FROM products;
    ```

-   A more complex query that joins multiple tables and filters results might look like this:

    ```sql
    SELECT p.name, p.price, c.name AS category_name
    FROM products p
    JOIN categories c ON p.category_id = c.category_id
    WHERE p.price > 50
    ORDER BY p.price DESC
    LIMIT 10;
    ```

-   When aggregating data, you can use functions like `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()` in conjunction with the `GROUP BY` clause. For example, to get the total number of products in each category:

    ```sql
    SELECT c.name AS category_name, COUNT(p.product_id) AS total_products
    FROM categories c
    LEFT JOIN products p ON c.category_id = p.category_id
    GROUP BY c.category_id;
    ```

---

## UPDATE Statement

The `UPDATE` statement is used to modify existing records in a table. Here's the basic syntax:

> **Always include a `WHERE` clause** to specify which records should be updated. If you omit the `WHERE` clause, all records in the table will be updated.

```sql
UPDATE [table_name]
SET
    [column1] = [value1],
    [column2] = [value2],
    ...
WHERE [condition];
```

Example:

```sql
UPDATE products
SET price = 19.99
WHERE product_id = 1;
```

---

## DELETE Statement

The `DELETE` statement is used to remove records from a table. Here's the basic syntax:

> **Always include a `WHERE` clause** to specify which records should be deleted. If you omit the `WHERE` clause, all records in the table will be deleted.

```sql
DELETE FROM [table_name]
WHERE [condition];
```

Example:

```sql
DELETE FROM products
WHERE product_id = 1;
```

---

## Exercises and Solutions

Look back at the exercises and solutions we covered in class:

-   Basic SQL Querie:
    -   [Exercises](../2025-08-20/05-database_homework.md)
    -   [Solutions](../2025-08-21/00-homework-solutions.md)
-   JOINs:
    -   [Examples](../2025-08-22/01-database-relationships.md#practical-join-examples)
    -   [Exercises](../2025-08-22/01-database-relationships/exercises.sql)
    -   [Solutions](../2025-08-22/01-database-relationships/solutions.sql)
