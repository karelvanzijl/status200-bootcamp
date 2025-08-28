# Debugging

In this stage, you will learn how to debug your application effectively. Debugging is an essential skill for any developer, as it helps you identify and fix issues in your code.

### Common Issues and Solutions

**We get a 404 error or a cannot get /route**

What do we do?

-   We check if the URL in the fetch in the frontend matches the URL in the backend in express.
-   We check if the server is running...
-   We test if the server actually serves the request. we can do localhost:3000/...
-   If it's a dynamic path then we check if the input from the url is being put in the query.
-   We test if the query is correct, by running the query in table plus.

**Sometimes our code used to work but now it doesn't anymore**

What do we do?

-   We ask ourselves this question, WHAT DID WE LAST CHANGE BEFORE IT CRASHED?
-   We console.log() and check the outputs in the new code.
-   We go through the code line by line and understand what's going wrong.
-   If we still can't figure it out we can commment out all the recent changes.
-   We code it again slowly.

## Remember This

Statement 1:

-   THINK BEFORE YOU CODE!!
-   not code before you think.
-   You need to understand what is the purpose of the code you are writing.
-   Pressing buttons randomly in a planes cocpit will not make the plane fly.
-   Pressing buttons and paddles randomly in a car will not make you drive.

Statment 2:

-   You have a bug what to do?
-   You understand the damn problem causing the bug?
-   Can you solve a problem in your life without understanding the damn problem.
-   Can you solve a math problem without understanding the problem.

---

# Summary

## Steps to Debug

#### 1. Reproduce the Issue

Ensure you can consistently reproduce the issue you are trying to debug.

#### 2. Check the Console

Look for any error messages in the console. These messages can provide clues about what went wrong.

**Client-side**:

In your browser, open the Developer Tools (usually by pressing F12 or right-clicking and selecting "Inspect").

**Server-side**:

In Node.js, check the terminal where your server is running.

# Is there an Error Message?

## # YES

If there is an error message, follow these steps:

#### 1. Read the Error Messages

Carefully read any error messages you find. They often indicate the type of error and the line number where it occurred. You don't need to understand everything in the message, but look for keywords that can guide your investigation.

#### 2. Find the Problematic Code

Use the information from the error messages to locate the part of your code that is causing the issue.

#### 3. Read the Code

Carefully read through the problematic code. Look for common issues such as:

-   Syntax errors (missing brackets, commas, etc.)
-   Incorrect variable names
-   Logic errors (e.g., using the wrong operator)
-   Incorrect API endpoints or URLs
-   Missing or incorrect database queries
-   Mismatching ID names or parameters

#### 4. Try to Fix the Issue

Based on your understanding of the code, make changes to fix the issue. This might involve correcting syntax, changing variable names, or adjusting logic.

## # NO

If there is no error message, it means the code is running but not producing the expected results. In this case, follow these steps:

-   **Add Console Logs**: Insert `console.log()` statements at various points in your code to check the values of variables and the flow of execution. This can help you identify where things are going wrong.

-   **Check Function Calls**: Ensure that functions are being called as expected and that they are receiving the correct parameters. Are you calling a certain function at all, or maybe you are calling it to multiple times when you shoudn't?

-   **Check Network Requests**: If your application makes network requests (e.g., fetching data from an API), use the Network tab in your browser's Developer Tools to inspect these requests. Check if they are successful and if the responses contain the expected data. Does the request URL look correct? Is it sending the right parameters?

-   **Check Data**: Ensure that the data being fetched from the server or database is correct. You can log the data to the console to verify its contents.

---

# Class Exercises

Below a series of codes with bugs. Try to debug them using the steps outlined above.

### Exercise 1

```javascript
function greet(name) {
    return "Hello, " + Name;
}
console.log(greet("Alice"));

// Output: ReferenceError: Name is not defined
```

### Exercise 2

```javascript
function printName() {
    console.log(userName);
}
printName();

// Output: ReferenceError: userName is not defined
```

### Exercise 3

```javascript
const total = 100;
total();

// Output: TypeError: total is not a function
```

### Exercise 4

```javascript
function sayHi {
    console.log("Hi");
  }

// Output: SyntaxError: Unexpected token '{'
```

### Exercise 5

```javascript
const express = require("express");
const app = express();

app.get("/", (req, res) => {
    res.send("Hiiii");
});

// Output: Error: Cannot find module 'express'
```

### Exercise 6

```javascript
const pool = mysql.createPool({
    host: "localhost",
    user: "admin",
    password: "",
    database: "",
});

app.get('/api/users', (req, res) => {
    const queryResult = await db.query('SELEC \* FROM users')
    res.json(queryResult[0])
});
```

### Exercise 7

```javascript
// website.js (client-side)
fetch("http://localhost:3000/genre/" + genre)
    .then(function (response) {
        return response.text();
    })
    .then(function (data) {
        let genres = JSON.parse(data);
        // code continues...
    });
```

```javascript
// server.js (server-side)
app.get("/genres/:genre", async (req, res) => {
    const queryResult = await db.query(
        "SELECT * FROM genres WHERE genre_name =" + genre
    );
    res.json(queryResult[0]);
});
```

### Exercise 8

```sql
-- Database
CREATE TABLE classrooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    classroom_id INT,
    FOREIGN KEY (classroom_id) REFERENCES classrooms(id)
);
```

```javascript
// server.js (server-side)
app.get('/students',async (req, res) => {
    const query = `     SELECT *
      FROM student
    `;
    const queryResult = await db.query(query)
    res.json(queryResult[0])
});

app.get('/students-classrooms', (req, res) => {
    const queryresult = await db.query(`
        SELECT *
        FROM students
        JOIN classrooms ON students.id = classrooms.id;
    `)
    res.json(queryResult[0])
});
```

### Exercise 9

```html
<div id="containers"></div>
;
```

```javascript
// website.js (client-side)
const persons = [
    {
        id: 1,
        name: "Alice",
        age: 25,
        hobbies: ["reading", "cycling", "cooking"],
        address: {
            city: "New York",
            zip: "10001",
        },
    },
    {
        id: 2,
        name: "Bob",
        age: 30,
        hobbies: ["gaming", "hiking"],
        address: {
            city: "San Francisco",
            zip: "94105",
        },
    },
];

const container = document.getElementById("container");

let html = "";

for (let i = 0; i < persons.length; i++) {
    html += `
        <div class="person" id="person-${person[i].id}">
            <h2>${persons[i].Name} (Age: ${person[i].age})</h2>
            <p>
                Lives in: ${persons.address.city} - ${person.address.zip}
            </p>
        </div>
    `;
}

container.innerHTML = html;

// The Problem: We don't see anything!!
```

### Exercise 10

```html
<div id="userList"></div>
;
```

```javascript
// website.js (client-side)
const users = [
    { name: "Alice", age: 17, city: "New York" },
    { name: "Bob", age: 18, city: "Los Angeles" },
    { name: "Charlie", age: 16, city: "Chicago" },
    { name: "Diana", age: 19, city: "Houston" },
];

const container = document.getElementById("userList");

let html = "";

for (let index = 0; index < users.length; index++) {
    const user = users[i];

    // Only display if user is an adult
    if (user.age > 18) {
        html += `
            <div class="user">
                <h3>${user.name}</h3>
                <p>Age: ${user.age}</p>
                <p>City: ${user.city}</p>
            </div>
        `;
    }
}

container.innerHTML = Html;

// The Problem: We don't see anything!!
```

---

# Solutions to Exercises

### Exercise 1 Solution

```javascript
function greet(name) {
    return "Hello, " + name; // Changed 'Name' to 'name'
}
console.log(greet("Alice")); // Output: Hello, Alice
```

### Exercise 2 Solution

```javascript
function printName() {
    const userName = "John"; // Defined userName
    console.log(userName);
}
printName(); // Output: John
```

### Exercise 3 Solution

```javascript
const total = 100;
console.log(total); // Changed total() to console.log(total)
// Output: 100
```

### Exercise 4 Solution

```javascript
function sayHi() {
    // Added parentheses
    console.log("Hi");
}
sayHi(); // Output: Hi
```

### Exercise 5 Solution

```javascript
const express = require("express");
const app = express();
// Make sure to install express using npm install express
app.get("/", (req, res) => {
    res.send("Hiiii");
});
```

### Exercise 6 Solution

```javascript
const pool = mysql.createPool({
    host: "localhost",
    user: "your_username", // Added username
    password: "your_password", // Added password
    database: "your_database", // Added database name
});

app.get("/api/users", async (req, res) => {
    // Added async
    const queryResult = await pool.query("SELECT * FROM users"); // Fixed SQL syntax and used pool
    res.json(queryResult[0]);
});
```

### Exercise 7 Solution

```javascript
// website.js (client-side)
fetch("http://localhost:3000/genres/" + genre) // Changed /genre/ to /genres/
    .then(function (response) {
        return response.json(); // Changed response.text() to response.json()
    })
    .then(function (data) {
        let genres = data; // Changed to use data directly
        // code continues...
    });
```

```javascript
// server.js (server-side)
app.get("/genres/:genre", async (req, res) => {
    // Added async
    const genre = req.params.genre; // Extracted genre from params
    const queryResult = await db.query(
        "SELECT * FROM genres WHERE genre_name = ?",
        [genre] // Used parameterized query
    );
    res.json(queryResult[0]);
});
```

### Exercise 8 Solution

```sql
-- Database
CREATE TABLE classrooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    classroom_id INT,
    FOREIGN KEY (classroom_id) REFERENCES classrooms(id)
);
```

```javascript
// server.js (server-side)
app.get("/students", async (req, res) => {
    // Added async
    const query = `SELECT * FROM students`; // Changed 'student' to 'students'
    const queryResult = await db.query(query);
    res.json(queryResult[0]);
});

app.get("/students-classrooms", async (req, res) => {
    // Added async
    const queryResult = await db.query(`
        SELECT *
        FROM students
        JOIN classrooms ON students.classroom_id = classrooms.id; // Fixed join condition
    `);
    res.json(queryResult[0]);
});
```

### Exercise 9

```html
<div id="container"></div>
```

```javascript
// website.js (client-side)
const persons = [
    {
        id: 1,
        name: "Alice",
        age: 25,
        hobbies: ["reading", "cycling", "cooking"],
        address: {
            city: "New York",
            zip: "10001",
        },
    },
    {
        id: 2,
        name: "Bob",
        age: 30,
        hobbies: ["gaming", "hiking"],
        address: {
            city: "San Francisco",
            zip: "94105",
        },
    },
];

const container = document.getElementById("container"); // Changed 'containers' to 'container'

let html = "";

for (let i = 0; i < persons.length; i++) {
    html += `
        <div class="person" id="person-${persons[i].id}">
            <!-- Changed 'person' to 'persons' -->
            <h2>${persons[i].name} (Age: ${persons[i].age})</h2> <!-- Changed 'Name' to 'name' and 'person' to 'persons' -->
            <p>
                <!-- Changed 'persons.address' to 'persons[i].address' -->
                Lives in: ${persons[i].address.city} - ${persons[i].address.zip} 
            </p>
        </div>
    `;
}

container.innerHTML = html;
```

### Exercise 10

```html
<div id="userList"></div>
```

```javascript
// website.js (client-side)
const users = [
    { name: "Alice", age: 17, city: "New York" },
    { name: "Bob", age: 18, city: "Los Angeles" },
    { name: "Charlie", age: 16, city: "Chicago" },
    { name: "Diana", age: 19, city: "Houston" },
];

const container = document.getElementById("userList");

let html = "";

for (let i = 0; i < users.length; i++) {
    const user = users[i]; // Changed 'index' to 'i'

    // Only display if user is an adult
    if (user.age >= 18) {
        // Changed > to >= to include age 18
        html += `
            <div class="user">
                <h3>${user.name}</h3>
                <p>Age: ${user.age}</p>
                <p>City: ${user.city}</p>
            </div>
        `;
    }
}

container.innerHTML = html; // Changed 'Html' to 'html'
```
