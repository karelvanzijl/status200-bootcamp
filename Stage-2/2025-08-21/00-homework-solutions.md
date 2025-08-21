# Database Homework Solutions

Solution for the database homework assignment, which includes creating a `customers` table and executing various SQL queries.

**[Homework Assignment can be found here.](../2025-08-20/05-database_homework.md)**

## Tip

Use [SQLFiddle](http://sqlfiddle.com/) to practice the SQL commands provided below. SQLFiddle is a great tool for testing SQL queries without needing to set up a local database. You can create a schema, run your SQL commands, and see the results immediately.

Alternatively, you can use a local MySQL server setup with tools like MySQL Workbench, DBeaver, TablePlus or any other SQL editor to run the SQL commands provided below. Make sure you have a MySQL database set up and running in this case.

---

## Create the customers table

```sql
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    department VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL,
    gender CHAR(1) NOT NULL
);
```

#### Insert data into the customers table

If you haven't inserted any data yet, you can use the following SQL commands to add some sample data:

```sql
INSERT INTO customers (first_name, last_name, email, city, age, salary, department, hire_date, gender) VALUES
('John', 'Smith', 'john@company.com', 'New York', 28, 55000.00, 'Sales', '2022-03-15', 'M'),
('Emma', 'Johnson', 'emma@company.com', 'Boston', 32, 72000.00, 'Marketing', '2021-07-20', 'F'),
('Michael', 'Brown', 'michael@company.com', 'Chicago', 25, 48000.00, 'IT', '2023-01-10', 'M'),
('Sarah', 'Davis', 'sarah@company.com', 'New York', 29, 65000.00, 'HR', '2022-09-05', 'F'),
('David', 'Wilson', 'david@company.com', 'Boston', 35, 78000.00, 'Sales', '2020-11-12', 'M'),
('Lisa', 'Miller', 'lisa@company.com', 'Miami', 27, 52000.00, 'Marketing', '2022-05-18', 'F'),
('James', 'Garcia', 'james@company.com', 'Chicago', 31, 69000.00, 'IT', '2021-12-03', 'M'),
('Anna', 'Martinez', 'anna@company.com', 'Miami', 26, 58000.00, 'HR', '2023-02-14', 'F'),
('Robert', 'Lopez', 'robert@company.com', 'New York', 33, 75000.00, 'Sales', '2021-04-22', 'M'),
('Maria', 'Anderson', 'maria@company.com', 'Boston', 30, 63000.00, 'Marketing', '2022-08-30', 'F'),
('Kevin', 'Taylor', 'kevin@company.com', 'Chicago', 24, 45000.00, 'IT', '2023-06-01', 'M'),
('Jessica', 'Thomas', 'jessica@company.com', 'Miami', 28, 56000.00, 'HR', '2022-10-15', 'F');
```

---

## SELECT Queries (15 Total)

**1.** Show all customers:

```sql
SELECT * FROM customers;
```

**2.** Show only female customers:

```sql
SELECT * FROM customers WHERE gender = 'F';
```

**3.** Show customers older than 30:

```sql
SELECT * FROM customers WHERE age > 30;
```

**4.** Show customers from New York:

```sql
SELECT * FROM customers WHERE city = 'New York';
```

**5.** Show customers in Sales department:

```sql
SELECT * FROM customers WHERE department = 'Sales';
```

**6.** Show customers with salary greater than $60,000:

```sql
SELECT * FROM customers WHERE salary > 60000;
```

**7.** Show customers hired after 2022-01-01:

```sql
SELECT * FROM customers WHERE hire_date > '2022-01-01';
```

**8.** Show customers aged between 25 and 30:

```sql
SELECT * FROM customers WHERE age BETWEEN 25 AND 30;
```

**9.** Show customers whose first name starts with 'J':

```sql
SELECT * FROM customers WHERE first_name LIKE 'J%';
```

**10.** Show the oldest customer (highest age):

```sql
SELECT * FROM customers ORDER BY age DESC LIMIT 1;
```

**11.** Show the youngest customer (lowest age):

```sql
SELECT * FROM customers ORDER BY age ASC LIMIT 1;
```

**12.** Count how many customers are in each department:

```sql
SELECT department, COUNT(*) FROM customers GROUP BY department;
```

**13.** Show the average salary by department:

```sql
SELECT department, AVG(salary) FROM customers GROUP BY department;
```

**14.** Show the highest salary in each city:

```sql
SELECT city, MAX(salary) FROM customers GROUP BY city;
```

**15.** Count how many male and female customers:

```sql
SELECT gender, COUNT(*) FROM customers GROUP BY gender;
```
