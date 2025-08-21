# Database Homework: SELECT Queries Practice

## Instructions

**Step 1:** Create the customers table

-   Look at the sample data below
-   Write CREATE TABLE with correct data types
-   Take a screenshot => name it `create_table.png`

**Step 2:** Insert the sample data

-   Copy the INSERT statement and run it

**Step 3:** Write SELECT queries

-   For each question below, write the SELECT query
-   Take a screenshot showing your code + results
-   Name screenshots: `query1.png`, `query2.png`, etc.

**Step 4:** Submit your work

-   Create a folder named: `YourName_Database_HW`
-   Put all 16 screenshots in the folder
-   Zip the folder
-   Upload the zip file

---

## Create Table & Insert Data

**Step 1: Create the customers table yourself!**

Look at the sample data below and create a table with appropriate:

-   Column names
-   Data types (VARCHAR, INT, DECIMAL, DATE, CHAR)
-   Field lengths (hint: names need about 50 characters, emails need 100)
-   Primary key (hint: use AUTO_INCREMENT for id)

**Step 2: Insert this sample data:**

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

**1.** Show all customers. Screenshot: `query1.png`

**2.** Show only female customers. Screenshot: `query2.png`

**3.** Show customers older than 30. Screenshot: `query3.png`

**4.** Show customers from New York. Screenshot: `query4.png`

**5.** Show customers in Sales department. Screenshot: `query5.png`

**6.** Show customers with salary greater than $60,000. Screenshot: `query6.png`

**7.** Show customers hired after 2022-01-01. Screenshot: `query7.png`

**8.** Show customers aged between 25 and 30. Screenshot: `query8.png`

**9.** Show customers whose first name starts with 'J'. Screenshot: `query9.png`

**10.** Show the oldest customer (highest age). Screenshot: `query10.png`

**11.** Show the youngest customer (lowest age). Screenshot: `query11.png`

**12.** Count how many customers are in each department. Screenshot: `query12.png`

**13.** Show the average salary by department. Screenshot: `query13.png`

**14.** Show the highest salary in each city. Screenshot: `query14.png`

**15.** Count how many male and female customers. Screenshot: `query15.png`

---

## Need Help?

If you get stuck, try looking up these SQL concepts:

-   Pattern matching with LIKE and wildcards
-   GROUP BY for grouping data
-   Aggregate functions: COUNT(), AVG(), MAX(), MIN()
-   ORDER BY and LIMIT for sorting and limiting results

---

## Submission

Submit a folder named: `YourName_Database_HW`

Include **16 screenshots**:

-   `create_table.png` - Your CREATE TABLE statement
-   `query1.png` to `query15.png` - Each query with results

Each query screenshot should show:

-   Your SQL query in the editor
-   The results below
