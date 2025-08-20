# SQL Fundamentals 

## Every App Uses Databases - Here's Why You Need to Learn SQL

Have you ever wondered how your favorite apps remember everything about you? When you open Instagram, how does it show YOUR photos? When you shop on shoppee, how does it remember what's in YOUR cart? When you log into Netflix, how does it know YOUR viewing history?

**The answer: Databases.**

Every website, every app, every digital service you use stores information in databases. And to work with that information, developers use SQL.

## What is a Database?

A **database** is an organized collection of data stored electronically. Think of it as a super-powered digital filing cabinet with multiple drawers (called tables), where each drawer contains folders (called records) with specific information about users, products, posts, etc.

### Real-World Database Examples

Every website and app you use relies on databases:

#### **Netflix**
- **Users table**: Your account info, preferences, viewing history
- **Movies table**: Title, genre, release date, rating
- **Reviews table**: User ratings and comments
- **Viewing_history table**: What you watched and when

#### **Banking App**
- **Accounts table**: Account numbers, balances, account types
- **Transactions table**: Deposits, withdrawals, transfers
- **Users table**: Customer information and login credentials

**Without databases, these websites would lose all your data every time you refresh the page!**

## What is SQL?

Now that you understand databases store all this information, here's the key question: **How do we actually GET that information out of the database?**

**SQL** (Structured Query Language) is a programming language designed specifically for managing and manipulating data stored in databases. Think of it as a way to "talk" to databases - you can ask questions, add information, update records, and organize data.

SQL is like asking questions in a very specific way:
- "Show me all students who are older than 18"
- "Add a new student named John with email john@example.com"
- "Update Sarah's age to 21"
- "Delete all students who graduated"

## Why Do We Need SQL?

1. **Data Storage**: Store millions of records efficiently
2. **Data Retrieval**: Find specific information quickly
3. **Data Relationships**: Connect related information (users and their posts)
4. **Data Security**: Control who can access what information
5. **Data Integrity**: Ensure data is accurate and consistent

## Introduction to TablePlus

**TablePlus** is a modern, user-friendly database management tool that makes working with SQL databases much easier than traditional command-line tools.


We'll first begin with **SQLite** because:
- **No server setup** - works immediately
- **File-based** - easy to share and backup
- **Same SQL syntax** - transfers to other databases
- **Lightweight** - won't slow down your computer
- **Perfect for learning** - focus on SQL, not configuration

Later, we'll move to **MySQL** for real-world server experience.

## Installation Guide

### Step 1: Download TablePlus

**For both Windows and Mac:**
1. Go to https://tableplus.com/download/
2. Click the download button for your operating system
3. The download will start automatically

### Step 2: Install TablePlus

#### **For Mac:**
1. Open the downloaded `.dmg` file
2. Drag TablePlus to your Applications folder
3. Launch TablePlus from Applications

#### **For Windows:**
1. Run the downloaded `.exe` file
2. Follow the installation wizard
3. Launch TablePlus from Start Menu or Desktop

### Step 3: First Launch
- TablePlus will open with a free trial (perfect for learning!)
- You'll see an empty connection screen

## Creating Your First Database

### Step 1: Create New Connection
1. Click **"Create connection..."** at the bottom
2. Choose **"SQLite"** from the database types

### Step 2: Set Up SQLite Database
1. **Name**: Enter "SQL Practice" (or any name you like)
2. **Database**: Click the folder icon and save as `student_database.db` on your Desktop
3. Click **"Connect"**

### Step 3: Understanding the Interface

You'll now see three main areas:
- **Left Panel (Items)**: Shows your tables (empty for now)
- **Center Panel (SQL Query)**: Where you write SQL commands
- **Bottom Panel (Console)**: Shows results and messages

## Your First Table

Let's create a table to store student information:

### Step 1: Create Students Table

In the SQL Query area, type:

```sql
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    email TEXT,
    major TEXT
);
```

**Press Cmd+Enter (Mac) or Ctrl+Enter (Windows)** to run the command.

### Step 2: Verify Table Creation

- Look in the left panel - you should see "students" table
- Console should show "Query 1 OK"

### Step 3: Add Sample Data

```sql
INSERT INTO students (name, age, email, major) VALUES 
('Alice Johnson', 20, 'alice@email.com', 'Computer Science'),
('Bob Smith', 19, 'bob@email.com', 'Engineering'),
('Carol Davis', 21, 'carol@email.com', 'Business'),
('David Lee', 22, 'david@email.com', 'Computer Science'),
('Emma Wilson', 18, 'emma@email.com', 'Art');
```

### Step 4: View Your Data

```sql
SELECT * FROM students;
```

You should see a beautiful table with all your student data!

## Essential SQL Commands

### 1. SELECT (Reading Data)

```sql
-- Get all students
SELECT * FROM students;

-- Get specific columns
SELECT name, major FROM students;

-- Get students with conditions
SELECT * FROM students WHERE age > 20;

-- Get Computer Science students
SELECT * FROM students WHERE major = 'Computer Science';

-- Make readable sentences with CONCAT
SELECT CONCAT(name, " studies ", major) FROM students;

-- Count how many students you have
SELECT COUNT(*) FROM students;
```

### 2. INSERT (Adding Data)

```sql
-- Add one new student
INSERT INTO students (name, age, email, major) 
VALUES ('Frank Chen', 23, 'frank@email.com', 'Mathematics');
```

### 3. UPDATE (Modifying Data)

```sql
-- Update Bob's age
UPDATE students SET age = 20 WHERE name = 'Bob Smith';

-- Update multiple fields
UPDATE students SET age = 19, major = 'Physics' WHERE name = 'Emma Wilson';
```

### 4. DELETE (Removing Data)

```sql
-- Delete a specific student
DELETE FROM students WHERE name = 'Frank Chen';

-- Delete students by condition
DELETE FROM students WHERE age < 18;
```

## Installing the Diagram Plugin

Visual diagrams help you understand database relationships much better!

### Step 1: Access Plugin Menu
1. Go to **TablePlus menu** → **Preferences** → **Plugins**
   - **Mac**: TablePlus → Preferences → Plugins
   - **Windows**: File → Preferences → Plugins

### Step 2: Install Diagram Generator
1. Click **"Manage Plugins"**
2. Search for **"Diagram Generator"**
3. Click **"Install"**
4. Restart TablePlus

### Step 3: Using Diagrams

Once installed, you can:
1. Right-click on your database
2. Select **"Generate Diagram"**
3. See your tables as visual boxes with relationships

## Working with Multiple Tables

Let's create a more complex example to see why diagrams are helpful:

### Create Courses Table

```sql
CREATE TABLE courses (
    id INTEGER PRIMARY KEY,
    course_name TEXT NOT NULL,
    instructor TEXT,
    credits INTEGER
);
```

### Create Enrollments Table (Links Students to Courses)

```sql
CREATE TABLE enrollments (
    id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
    grade TEXT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);
```

### Add Sample Data

```sql
-- Add courses
INSERT INTO courses (course_name, instructor, credits) VALUES 
('Introduction to Programming', 'Dr. Smith', 3),
('Database Design', 'Prof. Johnson', 4),
('Web Development', 'Dr. Brown', 3);

-- Add enrollments
INSERT INTO enrollments (student_id, course_id, grade) VALUES 
(1, 1, 'A'),
(1, 2, 'B+'),
(2, 1, 'B'),
(3, 3, 'A-');
```

### Generate Diagram

Now use the Diagram Generator to see how these tables connect! You'll see:
- **students** table connected to **enrollments**
- **courses** table connected to **enrollments**
- Visual lines showing the relationships

## Practice Tasks

### Task 1: Basic Queries
Write SQL commands to:

1. Show all students from the Computer Science major
2. Find students older than 20
3. Display only student names and emails
4. Count how many students are in the database

### Task 2: Data Modification
1. Add yourself as a new student
2. Update Alice's major to 'Data Science'
3. Delete any student younger than 18

### Task 3: Advanced Queries
1. Find all students who are exactly 20 years old
2. Show students whose names start with 'A'
3. Count how many Engineering students there are

## Task Answers

### Task 1 Answers:

1. ```sql
   SELECT * FROM students WHERE major = 'Computer Science';
   ```

2. ```sql
   SELECT * FROM students WHERE age > 20;
   ```

3. ```sql
   SELECT name, email FROM students;
   ```

4. ```sql
   SELECT COUNT(*) FROM students;
   ```

### Task 2 Answers:

1. ```sql
   INSERT INTO students (name, age, email, major) 
   VALUES ('Your Name', 25, 'your.email@example.com', 'Your Major');
   ```

2. ```sql
   UPDATE students SET major = 'Data Science' WHERE name = 'Alice Johnson';
   ```

3. ```sql
   DELETE FROM students WHERE age < 18;
   ```

### Task 3 Answers:

1. ```sql
   SELECT * FROM students WHERE age = 20;
   ```

2. ```sql
   SELECT * FROM students WHERE name LIKE 'A%';
   ```

3. ```sql
   SELECT COUNT(*) FROM students WHERE major = 'Engineering';
   ```


## Key Takeaways

- **SQL is everywhere** - every app and website uses databases
- **TablePlus makes SQL visual** and beginner-friendly
- **SQLite is perfect for learning** without server complexity
- **Diagrams help visualize** table relationships
- **Practice is essential** - the more you write SQL, the better you get


---


