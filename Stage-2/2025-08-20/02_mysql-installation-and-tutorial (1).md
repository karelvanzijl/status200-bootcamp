# SQL, MySQL, and TablePlus Setup Guide

## From SQLite to MySQL - Your Next Step

**Why we're moving to MySQL:**
- Used by major websites like Facebook, Twitter, YouTube, Netflix
- Client-server architecture - multiple people can access the same database
- Industry standard - what you'll use in your job
- Built for applications that scale to millions of users

## What is MySQL?

**MySQL** is a **database server** - a powerful program that:
- **Stores data** for multiple applications
- **Manages user access** and permissions
- **Handles multiple connections** simultaneously
- **Ensures data integrity** and security
- **Scales** to handle massive amounts of data

## Installing MySQL

### Step 1: Download MySQL

1. Go to **https://dev.mysql.com/downloads/mysql/**
2. Click **"MySQL Community Downloads"**
3. Choose **"MySQL Community Server"** (it's free!)

### Step 2: Choose Your Operating System

#### **For Windows:**
1. Download **"MySQL Installer for Windows"**
2. Choose **"mysql-installer-web-community-x.x.x.msi"**

#### **For Mac:**
1. Download **"MySQL Community Server"**
2. Choose the **DMG Archive** for your Mac (Intel or Apple Silicon)

### Step 3: Installation Process

#### **Windows Installation:**
1. **Run the installer** (.msi file)
2. Choose **"Developer Default"** setup type
3. **Install all components** (MySQL Server, Workbench, etc.)
4. **Set up root password** - Choose something you'll remember!
5. **Configure MySQL as a Windows Service** (recommended)
6. **Test the connection** - installer will verify everything works

#### **Mac Installation:**
1. **Open the .dmg file** and run the installer
2. **Follow the installation wizard**
3. **Set root password** when prompted - Write it down!
4. **Start MySQL** - it will run automatically
5. **System Preferences** will show a MySQL panel to start/stop the server

### Step 4: Verify Installation

#### **Important Information to Remember:**
- **Username:** `root`
- **Password:** [The password you set during installation]
- **Port:** `3306` (default)
- **Host:** `localhost` or `127.0.0.1`

## Connecting TablePlus to MySQL

### Step 1: Create New MySQL Connection

1. **Open TablePlus**
2. **Click "Create connection..."**
3. **Choose "MySQL"** (not SQLite this time!)

### Step 2: Fill in Connection Details

```
Name: MySQL Bootcamp
Host: 127.0.0.1
Port: 3306
User: root
Password: [your MySQL password]
Database: [leave blank for now]
```

### Step 3: Test and Connect

1. **Click "Test"** - should show success message
2. **Click "Connect"**
3. **You'll see system databases** - mysql, information_schema, performance_schema

## Creating Your First MySQL Database

### Step 1: Create Database

In the SQL Query area, type:

```sql
CREATE DATABASE bootcamp_mysql;
```

**Run it** (Cmd+Enter or Ctrl+Enter)

### Step 2: Use Your Database

```sql
USE bootcamp_mysql;
```

**Notice:** Now the top bar shows "bootcamp_mysql" instead of a system database.

## Starting Simple - Your First Table

### Create Students Table

```sql
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);
```

## Learning the 4 Essential Operations

### 1. INSERT - Adding Data

```sql
-- Add single student
INSERT INTO students (name, email) 
VALUES ('Aamena', 'aamena@email.com');

-- Add multiple students at once
INSERT INTO students (name, email) 
VALUES 
('Abdalla', 'abdalla@email.com'),
('Ahmed', 'ahmed@email.com'),
('Azizullah', 'azizullah@email.com'),
('Elyas', 'elyas@email.com');
```

### 2. SELECT - Reading Data

```sql
-- See all students
SELECT * FROM students;

-- See specific columns
SELECT name, email FROM students;

-- Find students with conditions
SELECT * FROM students WHERE name = 'Aamena';

-- Find students whose names start with 'A'
SELECT * FROM students WHERE name LIKE 'A%';

-- Sort by name alphabetically
SELECT * FROM students ORDER BY name ASC;

-- Count total students
SELECT COUNT(*) FROM students;
```

### 3. UPDATE - Changing Data

```sql
-- Change one student's email
UPDATE students SET email = 'ahmed.new@email.com' WHERE name = 'Ahmed';

-- Change multiple students' emails
UPDATE students SET email = CONCAT(LOWER(name), '@bootcamp.com') WHERE name IN ('Aamena', 'Abdalla');
```

### 4. DELETE - Removing Data

```sql
-- Remove specific student
DELETE FROM students WHERE name = 'Azizullah';

-- Remove students by condition
DELETE FROM students WHERE email LIKE '%@email.com';

-- Remove all students (but keep table)
DELETE FROM students;
```

## Practice Task 1

Now try these yourself:

1. **Add 4 new students** with names: Esther, Farwa, Fathima, Gong
2. **Show all students** whose names start with 'F'
3. **Update Esther's** email to 'esther.new@email.com'
4. **Count** how many students you have
5. **Delete** a student named 'Gong'

<details>
<summary><strong>Answers</strong></summary>

```sql
-- 1. Add 4 new students
INSERT INTO students (name, email) VALUES 
('Esther', 'esther@email.com'),
('Farwa', 'farwa@email.com'),
('Fathima', 'fathima@email.com'),
('Gong', 'gong@email.com');

-- 2. Students starting with 'F'
SELECT * FROM students WHERE name LIKE 'F%';

-- 3. Update Esther's email
UPDATE students SET email = 'esther.new@email.com' WHERE name = 'Esther';

-- 4. Count students
SELECT COUNT(*) FROM students;

-- 5. Delete Gong
DELETE FROM students WHERE name = 'Gong';
```

</details>

## Working with Multiple Tables

### Create Courses Table

```sql
CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    instructor VARCHAR(50),
    credits INT
);
```

### Add Courses

```sql
INSERT INTO courses (title, instructor, credits) VALUES
('Web Development', 'Dr. Smith', 3),
('Database Design', 'Prof. Johnson', 4),
('Programming Basics', 'Dr. Brown', 3),
('Data Science', 'Dr. Wilson', 4);
```

### Create Connection Table (Enrollments)

```sql
CREATE TABLE enrollments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade VARCHAR(5)
);
```

### Connect Students to Courses

```sql
INSERT INTO enrollments (student_id, course_id, grade) VALUES
(1, 1, 'A'),    -- Aamena in Web Development
(1, 2, 'B+'),   -- Aamena in Database Design
(2, 1, 'B'),    -- Abdalla in Web Development
(3, 3, 'A-'),   -- Ahmed in Programming Basics
(4, 1, 'A'),    -- Elyas in Web Development
(5, 4, 'B+'),   -- Esther in Data Science
(6, 2, 'A'),    -- Farwa in Database Design
(7, 3, 'B+');   -- Fathima in Programming Basics
```

### Simple Functions Practice

```sql
-- Count total students
SELECT COUNT(*) FROM students;

-- Count total courses  
SELECT COUNT(*) FROM courses;

-- Average credits per course
SELECT AVG(credits) FROM courses;

-- Total credits offered
SELECT SUM(credits) FROM courses;
```

### String Functions

```sql
-- Show course titles in uppercase
SELECT UPPER(title) FROM courses;

-- Show student names in lowercase
SELECT LOWER(name) FROM students;

-- Find courses with 'Development' in the title
SELECT * FROM courses WHERE title LIKE '%Development%';

-- Count letters in course titles
SELECT title, LENGTH(title) FROM courses;

-- Combine course and instructor
SELECT CONCAT(title, ' by ', instructor) FROM courses;
```

## Practice Task 2

Try these simple functions:

1. **Count** how many courses you have
2. **Show** all student names in uppercase
3. **Find** courses that contain the word 'Design'
4. **Calculate** the total credits of all courses combined

<details>
<summary><strong>Answers</strong></summary>

```sql
-- 1. Count courses
SELECT COUNT(*) FROM courses;

-- 2. Highest credits
SELECT title, MAX(credits) FROM courses;

-- 3. Uppercase names
SELECT UPPER(name) FROM students;

-- 4. Courses with 'Design'
SELECT * FROM courses WHERE title LIKE '%Design%';

-- 5. Total credits
SELECT SUM(credits) FROM courses;
```

</details>

## Working with Multiple Tables (Simple)

When you see letters like `s`, `c`, `e` in SQL - these are **shortcuts** (called aliases):

```sql
FROM students s, courses c, enrollments e
```

This means:
- `s` = students table
- `c` = courses table  
- `e` = enrollments table

So `s.name` means "name from students table" and `c.title` means "title from courses table".

**For now, let's stick to single tables - we'll learn multiple tables in the next guide!**

## Learning Functions

### Math Functions

```sql
-- Count total students
SELECT COUNT(*) FROM students;

-- Count students by name length
SELECT LENGTH(name) AS name_length, COUNT(*) AS student_count 
FROM students 
GROUP BY LENGTH(name);

-- Sum of all credits
SELECT SUM(credits) AS total_credits FROM courses;

-- Average credits per course
SELECT AVG(credits) AS average_credits FROM courses;

-- Course with most and least credits
SELECT MAX(credits) AS most_credits, MIN(credits) AS least_credits FROM courses;
```

### String Functions

```sql
-- Combine name with email
SELECT CONCAT(name, ' - ', email) AS student_info FROM students;

-- Uppercase names
SELECT UPPER(name) AS name_upper FROM students;

-- Lowercase names
SELECT LOWER(name) AS name_lower FROM students;

-- Names starting with specific letter
SELECT * FROM students WHERE name LIKE 'A%';

-- Names containing specific letters
SELECT * FROM students WHERE name LIKE '%ar%';

-- Length of names
SELECT name, LENGTH(name) AS name_length FROM students;

-- First 3 letters of name
SELECT name, LEFT(name, 3) AS name_start FROM students;
```

### Date Functions

Let's add enrollment dates to practice with dates:

```sql
-- Add enrollment_date column
ALTER TABLE students ADD COLUMN enrollment_date DATE;

-- Update with some dates
UPDATE students SET enrollment_date = '2025-01-15' WHERE name = 'Aamena';
UPDATE students SET enrollment_date = '2025-01-20' WHERE name = 'Abdalla';
UPDATE students SET enrollment_date = '2025-02-01' WHERE name = 'Ahmed';
UPDATE students SET enrollment_date = '2025-01-25' WHERE name = 'Elyas';
UPDATE students SET enrollment_date = '2025-02-10' WHERE name = 'Esther';
UPDATE students SET enrollment_date = '2025-01-30' WHERE name = 'Farwa';
UPDATE students SET enrollment_date = '2025-02-05' WHERE name = 'Fathima';

-- Current date
SELECT CURDATE() AS today;

-- Days since enrollment
SELECT name, enrollment_date, 
       DATEDIFF(CURDATE(), enrollment_date) AS days_enrolled
FROM students
WHERE enrollment_date IS NOT NULL;

-- Year from date
SELECT name, YEAR(enrollment_date) AS enrollment_year 
FROM students 
WHERE enrollment_date IS NOT NULL;

-- Students enrolled in January
SELECT * FROM students 
WHERE MONTH(enrollment_date) = 1;
```

## Practice Task 3

Try these function exercises:

1. **Find the total** number of credits across all courses
2. **Show all student names** in lowercase
3. **Count** how many students have names longer than 5 characters
4. **Find** students who enrolled in February 2025
5. **Calculate** how many days ago each student enrolled

<details>
<summary><strong>Answers</strong></summary>

```sql
-- 1. Total credits
SELECT SUM(credits) AS total_credits FROM courses;

-- 2. Lowercase names
SELECT LOWER(name) AS lowercase_name FROM students;

-- 3. Names longer than 5 characters
SELECT COUNT(*) FROM students WHERE LENGTH(name) > 5;

-- 4. February 2025 enrollments
SELECT * FROM students 
WHERE enrollment_date BETWEEN '2025-02-01' AND '2025-02-28';

-- 5. Days since enrollment
SELECT name, DATEDIFF(CURDATE(), enrollment_date) AS days_ago
FROM students
WHERE enrollment_date IS NOT NULL;
```

</details>

## Building a Complete System

### Create Departments Table

```sql
CREATE TABLE departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    head_instructor VARCHAR(50),
    budget DECIMAL(10,2)
);
```

### Add Departments

```sql
INSERT INTO departments (name, head_instructor, budget) VALUES
('Computer Science', 'Dr. Smith', 150000.00),
('Engineering', 'Prof. Johnson', 200000.00),
('Business', 'Dr. Brown', 120000.00),
('Arts', 'Prof. Wilson', 80000.00);
```

### Connect Courses to Departments

```sql
-- Add department_id column to courses
ALTER TABLE courses ADD COLUMN department_id INT;

-- Update existing courses with departments
UPDATE courses SET department_id = 1 WHERE title = 'Web Development';
UPDATE courses SET department_id = 1 WHERE title = 'Database Design';
UPDATE courses SET department_id = 1 WHERE title = 'Programming Basics';
UPDATE courses SET department_id = 1 WHERE title = 'Data Science';
UPDATE courses SET department_id = 1 WHERE title = 'Mobile Development';
```

### Simple Practice

```sql
-- Count how many departments you have
SELECT COUNT(*) FROM departments;

-- Find the department with the highest budget
SELECT name, budget FROM departments ORDER BY budget DESC LIMIT 1;

-- Show all department names in uppercase
SELECT UPPER(name) FROM departments;

-- Find departments with budget over 100000
SELECT * FROM departments WHERE budget > 100000;
```

## Practice Task 3

Try these simple exercises:

1. **Count** how many departments you created
2. **Show** all department names in lowercase
3. **Find** the department with the smallest budget
4. **Add** a new department called 'Science' with head instructor 'Dr. Green' and budget 95000

<details>
<summary><strong>Answers</strong></summary>

```sql
-- 1. Count departments
SELECT COUNT(*) FROM departments;

-- 2. Lowercase names
SELECT LOWER(name) FROM departments;

-- 3. Smallest budget
SELECT name, budget FROM departments ORDER BY budget ASC LIMIT 1;

-- 4. Add Science department
INSERT INTO departments (name, head_instructor, budget) 
VALUES ('Science', 'Dr. Green', 95000);
```

</details>

## Essential SQL Command Reference

### **Basic Operations**
```sql
-- See data
SELECT * FROM table_name;

-- Add data  
INSERT INTO table_name (column1, column2) VALUES ('value1', 'value2');

-- Change data
UPDATE table_name SET column1 = 'new_value' WHERE condition;

-- Remove data
DELETE FROM table_name WHERE condition;
```

### **Filtering and Sorting**
```sql
-- Find specific records
WHERE name = 'Aamena'
WHERE age > 20
WHERE name LIKE 'A%'

-- Sort results
ORDER BY age DESC
ORDER BY name ASC

-- Limit results
LIMIT 5
```

### **Useful Functions**
```sql
-- Count, Average, Max, Min
SELECT COUNT(*), AVG(age), MAX(age), MIN(age) FROM students;

-- Group data
SELECT major, COUNT(*) FROM students GROUP BY major;

-- Combine text
SELECT CONCAT(name, ' - ', email) FROM students;
```

### **Table Management**
```sql
-- Create table
CREATE TABLE name (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(50));

-- See structure
DESCRIBE table_name;

-- Add column
ALTER TABLE table_name ADD COLUMN new_column VARCHAR(50);
```

## **Need More Help? Check These Resources:**

### **W3Schools SQL Tutorial** (Best for Beginners)
**https://www.w3schools.com/sql/**
- Free and comprehensive
- Try-it-yourself editor
- Search any SQL command


### **SQL Cheat Sheet** (Quick Reference)
**https://www.sqltutorial.org/sql-cheat-sheet/**
- All commands on one page

**Remember: Professional developers don't memorize everything - they know where to look it up!**

---

