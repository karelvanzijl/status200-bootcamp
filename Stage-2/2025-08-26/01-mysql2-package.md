# MySQL2 Package Manual: Connect & Query Your Database

## What is mysql2?

`mysql2` is a Node.js package that lets you connect to MySQL databases and run SQL queries using JavaScript. Think of it as a translator between your JavaScript code and your MySQL database.

---

## Installation

### Step 1: Install the Package

In your terminal, navigate to your project folder and run:

```bash
npm install mysql2
```

This downloads the mysql2 package and adds it to your project.

### Step 2: Verify Installation

Check your `package.json` file - you should see:

```json
{
    "dependencies": {
        "mysql2": "^3.6.0"
    }
}
```

---

## Basic Setup

### Step 1: Require the Package

At the top of your JavaScript file, add:

```javascript
const mysql = require("mysql2/promise");
```

**Important**: Notice we're using `"mysql2/promise"` - this gives us the async/await version that works with our restaurant waiter approach!

### Step 2: Create a Database Connection

```javascript
const mysql = require("mysql2/promise");

const db = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "your_password",
    database: "your_database_name",
    port: 3306,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
    namedPlaceholders: true, // allows :id, :name, ...
});
```

---

## Understanding connection.query()

The `connection.query()` method is your main tool for talking to the database. Here's what it returns:

### What Does query() Return?

`connection.query()` always returns an **array with 2 elements**:

```javascript
const [rows, fields] = await connection.query("SELECT * FROM users");
```

-   **rows**: The actual data from your query (what you usually want)
-   **fields**: Information about the columns (usually ignore this)

### Different Types of Queries Return Different Things

#### SELECT Queries - Getting Data

```javascript
const [rows, fields] = await connection.query("SELECT * FROM users");

console.log(rows);
// Output: Array of objects
// [
//   { id: 1, name: "John", email: "john@email.com" },
//   { id: 2, name: "Jane", email: "jane@email.com" }
// ]
```

#### INSERT Queries - Adding Data

```javascript
const [result, fields] = await connection.query(
    "INSERT INTO users (name, email) VALUES ('Bob', 'bob@email.com')"
);

console.log(result);
// Output: Information about what happened
// {
//   insertId: 3,        // The ID of the new row
//   affectedRows: 1     // How many rows were added
// }
```

#### UPDATE Queries - Changing Data

```javascript
const [result, fields] = await connection.query(
    "UPDATE users SET email = 'newemail@email.com' WHERE id = 1"
);

console.log(result);
// Output:
// {
//   affectedRows: 1,    // How many rows were changed
//   changedRows: 1      // How many rows actually had different data
// }
```

#### DELETE Queries - Removing Data

```javascript
const [result, fields] = await connection.query(
    "DELETE FROM users WHERE id = 1"
);

console.log(result);
// Output:
// {
//   affectedRows: 1     // How many rows were deleted
// }
```

---

## Practical Examples

### Example 1: Getting All Users

```javascript
// Assuming you created the connection pool as shown above

async function getAllUsers() {
    // Run a SELECT query
    const [users] = await db.query("SELECT * FROM users");

    // users is an array of user objects
    console.log("All users:", users);

    // Return users
    return users;
}

getAllUsers();
```

### Example 2: Getting One Specific User

```javascript
// Assuming you created the connection pool as shown above

async function getUser() {
    // Run a SELECT query with a WHERE clause
    const [users] = await db.query("SELECT * FROM users WHERE id = 1");

    // Log the user in the console
    console.log("Found user:", users[0]);

    // Return the first user (there should only be one)
    return users[0];
}

getUser();
```

### Example 3: Adding a New User

```javascript
// Assuming you created the connection pool as shown above

async function addUser() {
    // Run an INSERT query
    const [insertInfo] = await db.query(
        "INSERT INTO users (name, email) VALUES ('Alice', 'alice@email.com')"
    );

    // insertInfo contains insertId and affectedRows
    console.log("New user added with ID:", insertInfo.insertId);
    console.log("Rows affected:", insertInfo.affectedRows);

    // Return the new user's ID
    return insertInfo.insertId;
}

addUser();
```

### Example 4: Updating User Information

```javascript
async function updateUser() {
    // Assuming you created the connection pool as shown above

    // Run an UPDATE query
    const [updateInfo] = await db.query(
        "UPDATE users SET email = 'john.new@email.com' WHERE id = 1"
    );

    // Log how many rows were affected
    if (updateInfo.affectedRows > 0) {
        console.log("User updated successfully!");
    } else {
        console.log("No user found with that ID");
    }

    // Return true if update worked
    return updateInfo.affectedRows > 0;
}

updateUser();
```

---

## Common Patterns You'll Use

### Pattern 1: Simple Query Function

```javascript
async function runQuery(sql) {
    // Initialize connection variable
    let db;

    try {
        // Try to connect
        db = mysql.createPool({
            host: "localhost",
            user: "root",
            password: "your_password",
            database: "your_database_name",
            port: 3306,
            waitForConnections: true,
            connectionLimit: 10,
            queueLimit: 0,
            namedPlaceholders: true, // allows :id, :name, ...
        });

        // run the query
        const [results] = await db.query(sql);

        // return only the rows
        return results;
    } catch (error) {
        console.log("Query error:", error.message);
        throw error;
    } finally {
        if (db) {
            await db.end();
        }
    }
}

// Usage:
const users = await runQuery("SELECT * FROM users");
const user = await runQuery("SELECT * FROM users WHERE id = 1");
```

### Pattern 2: Multiple Queries in One Function

```javascript
async function getUserWithOrders() {
    // Initialize connection variable
    let db;

    try {
        // Try to connect
        db = mysql.createPool({
            host: "localhost",
            user: "root",
            password: "your_password",
            database: "your_database_name",
            port: 3306,
            waitForConnections: true,
            connectionLimit: 10,
            queueLimit: 0,
            namedPlaceholders: true, // allows :id, :name, ...
        });

        // Get user info
        const [users] = await db.query("SELECT * FROM users WHERE id = 1");

        // Get their orders
        const [orders] = await db.query(
            "SELECT * FROM orders WHERE user_id = 1"
        );

        // Return combined data
        return {
            user: users[0], // first user (should only be one)
            orders: orders, // all their orders
        };
    } catch (error) {
        console.log("Error:", error.message);
        throw error;
    } finally {
        if (db) {
            await db.end();
        }
    }
}
```

---

## Key Points to Remember

1. **Always use `"mysql2/promise"`** - This gives you async/await support
2. **query() returns an array** - Use `const results = await query()`
    - results[0] = rows (data you want)
    - results[1] = fields (metadata you usually ignore)
3. **Different queries return different things**:
    - SELECT: Array of row objects
    - UPDATE/DELETE: Object with `affectedRows`
    - INSERT: Object with `insertId` and `affectedRows`
4. **Always close connections** - Use `await connection.end()` when done
5. **Use try-catch** - Database operations can fail!

---

## Quick Reference

```javascript
// Setup
const mysql = require("mysql2/promise");

// Connect
const connection = await mysql.createConnection({ config });

// Query patterns
const [rows] = await connection.query("SELECT * FROM table");
const [result] = await connection.query("INSERT INTO table VALUES ('value')");
const [users] = await connection.query("SELECT * FROM users WHERE id = 1");

// Close
await connection.end();
```

Now you're ready to connect your JavaScript applications to MySQL databases using async/await!
