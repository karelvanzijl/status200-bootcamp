# JSON - Sending Objects and Arrays as Strings

## The Problem: Servers Can Only Send Strings

You've learned that servers send data as **text/plain** strings. But what if we want to send more complex data like:

-   Arrays: `["Apple", "Banana", "Orange"]`
-   Objects: `{name: "John", age: 25, city: "New York"}`

**The Issue:**

```javascript
// This WON'T work - servers can only send strings!
res.end(["Apple", "Banana", "Orange"]); // L Error!
res.end({ name: "John", age: 25 }); // L Error!
```

**The Solution:** Convert everything to strings first, then convert back!

---

## What is JSON?

**JSON** stands for **JavaScript Object Notation**. It's a way to convert JavaScript objects and arrays into strings (and back again).

**Key Points:**

-   **JSON.stringify()** - Converts objects/arrays → strings
-   **JSON.parse()** - Converts strings → objects/arrays
-   Servers can send JSON strings
-   Browsers can convert JSON strings back to objects/arrays

**The Flow:**

1. Server: Object/Array → `JSON.stringify()` → String → Send to browser
2. Browser: String → `JSON.parse()` → Object/Array → Use in JavaScript

---

## JSON.stringify() - Objects/Arrays to Strings

### Converting Arrays

```javascript
const fruits = ["Apple", "Banana", "Orange"];
const jsonString = JSON.stringify(fruits);

console.log(fruits); // ["Apple", "Banana", "Orange"]
console.log(jsonString); // '["Apple","Banana","Orange"]'
console.log(typeof jsonString); // "string"
```

### Converting Objects

```javascript
const person = { name: "John", age: 25, city: "New York" };
const jsonString = JSON.stringify(person);

console.log(person); // {name: "John", age: 25, city: "New York"}
console.log(jsonString); // '{"name":"John","age":25,"city":"New York"}'
console.log(typeof jsonString); // "string"
```

### Converting Complex Data

```javascript
const data = {
    users: ["Alice", "Bob", "Charlie"],
    settings: { theme: "dark", language: "en" },
    count: 42,
};

const jsonString = JSON.stringify(data);
console.log(jsonString);
// '{"users":["Alice","Bob","Charlie"],"settings":{"theme":"dark","language":"en"},"count":42}'
```

---

## Server Examples - Sending JSON Strings

### Example 1: Simple Array Server

```javascript
const http = require("http");

const server = http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "text/plain" });

    const fruits = ["Apple", "Banana", "Orange", "Grape"];
    const jsonString = JSON.stringify(fruits);

    res.end(jsonString);
});

server.listen(3000, () => {
    console.log("Array server running at http://localhost:3000/");
});
```

### Example 2: User Data Server

```javascript
const http = require("http");

const server = http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "text/plain" });

    const user = {
        name: "Sarah Johnson",
        email: "sarah@example.com",
        age: 28,
        skills: ["JavaScript", "HTML", "CSS"],
    };

    const jsonString = JSON.stringify(user);
    res.end(jsonString);
});

server.listen(3000, () => {
    console.log("User server running at http://localhost:3000/");
});
```

### Example 3: Product Catalog Server

```javascript
const http = require("http");

const server = http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "text/plain" });

    const products = [
        { id: 1, name: "Laptop", price: 899, inStock: true },
        { id: 2, name: "Phone", price: 699, inStock: false },
        { id: 3, name: "Tablet", price: 399, inStock: true },
    ];

    const jsonString = JSON.stringify(products);
    res.end(jsonString);
});

server.listen(3000, () => {
    console.log("Products server running at http://localhost:3000/");
});
```

---

## JSON.parse() - Strings Back to Objects/Arrays

### Converting JSON String to Array

```javascript
const jsonString = '["Apple","Banana","Orange"]';
const fruits = JSON.parse(jsonString);

console.log(jsonString); // '["Apple","Banana","Orange"]'
console.log(fruits); // ["Apple", "Banana", "Orange"]
console.log(typeof fruits); // "object" (arrays are objects)
```

### Converting JSON String to Object

```javascript
const jsonString = '{"name":"John","age":25,"city":"New York"}';
const person = JSON.parse(jsonString);

console.log(jsonString); // '{"name":"John","age":25,"city":"New York"}'
console.log(person); // {name: "John", age: 25, city: "New York"}
console.log(person.name); // "John"
console.log(person.age); // 25
```

---

## Complete Examples - Server + HTML with JSON

### Example 1: Fruit List Display

**Server (`fruit-server.js`):**

```javascript
const http = require("http");

const server = http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "text/plain" });

    const fruits = ["Apple", "Banana", "Orange", "Grape", "Strawberry"];
    const jsonString = JSON.stringify(fruits);

    res.end(jsonString);
});

server.listen(3000, () => {
    console.log("Fruit server running at http://localhost:3000/");
});
```

**HTML (`fruit-display.html`):**

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Fruit List</title>
        <style>
            body {
                font-family: Arial;
                padding: 20px;
            }
            .fruit-list {
                background: #f8f9fa;
                padding: 20px;
                border-radius: 8px;
            }
            .fruit-item {
                padding: 8px;
                margin: 4px 0;
                background: white;
                border-radius: 4px;
            }
            button {
                padding: 10px 20px;
                margin: 10px 0;
            }
        </style>
    </head>
    <body>
        <h1><S Fruit Store</h1>
        <button onclick="loadFruits()">Load Fruits</button>
        <div id="fruits">Click button to load fruits!</div>

        <script>
            function loadFruits() {
                fetch("http://localhost:3000/")
                    .then((response) => response.text())
                    .then((jsonString) => {
                        // Convert JSON string back to array
                        const fruits = JSON.parse(jsonString);

                        // Display using innerHTML
                        let html =
                            '<div class="fruit-list"><h3>Available Fruits:</h3>';
                        for (let fruit of fruits) {
                            html += `<div class="fruit-item">${fruit}</div>`;
                        }
                        html += "</div>";

                        document.getElementById("fruits").innerHTML = html;
                    });
            }
        </script>
    </body>
</html>
```

### Example 2: User Profile Display

**Server (`user-server.js`):**

```javascript
const http = require("http");

const server = http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "text/plain" });

    const user = {
        name: "Alex Martinez",
        email: "alex@example.com",
        age: 30,
        location: "San Francisco",
        skills: ["JavaScript", "Python", "React", "Node.js"],
        isOnline: true,
    };

    const jsonString = JSON.stringify(user);
    res.end(jsonString);
});

server.listen(3000, () => {
    console.log("User server running at http://localhost:3000/");
});
```

**HTML (`user-profile.html`):**

```html
<!DOCTYPE html>
<html>
    <head>
        <title>User Profile</title>
        <style>
            body {
                font-family: Arial;
                padding: 20px;
                background: #f5f5f5;
            }
            .profile-card {
                background: white;
                border-radius: 12px;
                padding: 25px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                max-width: 400px;
            }
            .status-online {
                color: #28a745;
            }
            .status-offline {
                color: #dc3545;
            }
            .skills {
                display: flex;
                flex-wrap: wrap;
                gap: 8px;
                margin-top: 10px;
            }
            .skill {
                background: #007bff;
                color: white;
                padding: 4px 12px;
                border-radius: 20px;
                font-size: 14px;
            }
            button {
                padding: 12px 24px;
                margin: 10px 0;
                background: #007bff;
                color: white;
                border: none;
                border-radius: 6px;
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        <h1>User Profile</h1>
        <button onclick="loadProfile()">Load Profile</button>
        <div id="profile">Click button to load profile!</div>

        <script>
            function loadProfile() {
                fetch("http://localhost:3000/")
                    .then((response) => response.text())
                    .then((jsonString) => {
                        // Convert JSON string back to object
                        const user = JSON.parse(jsonString);

                        // Build skills HTML
                        let skillsHtml = "";
                        for (let skill of user.skills) {
                            skillsHtml += `<span class="skill">${skill}</span>`;
                        }

                        // Display using innerHTML
                        document.getElementById("profile").innerHTML = `
                        <div class="profile-card">
                            <h2>${user.name}</h2>
                            <p><strong>Email:</strong> ${user.email}</p>
                            <p><strong>Age:</strong> ${user.age}</p>
                            <p><strong>Location:</strong> ${user.location}</p>
                            <p><strong>Status:</strong> 
                                <span class="${
                                    user.isOnline
                                        ? "status-online"
                                        : "status-offline"
                                }">
                                    ${user.isOnline ? "Online" : "Offline"}
                                </span>
                            </p>
                            <p><strong>Skills:</strong></p>
                            <div class="skills">${skillsHtml}</div>
                        </div>
                    `;
                    });
            }
        </script>
    </body>
</html>
```

---

## Understanding the JSON Flow

```javascript
// Server Side:
const data = ["Apple", "Banana", "Orange"]; // 1. JavaScript array
const jsonString = JSON.stringify(data); // 2. Convert to string
res.end(jsonString); // 3. Send string to browser

// Browser Side:
fetch("http://localhost:3000/") // 4. Get string from server
    .then((response) => response.text()) // 5. Extract string
    .then((jsonString) => {
        // 6. jsonString is still a string
        const data = JSON.parse(jsonString); // 7. Convert string back to array
        // Now data is a JavaScript array again!  // 8. Use as normal JavaScript
    });
```

---

## Practice Exercises

### Exercise 1: Student Grades Server

Create a server that sends an array of student objects, and display them in a grade table.

**Server Data:**

```javascript
const students = [
    { name: "Alice", grade: 95, subject: "Math" },
    { name: "Bob", grade: 87, subject: "Science" },
    { name: "Charlie", grade: 92, subject: "English" },
];
```

**Your Task:** Create the server and HTML page that displays this as a formatted table.

**HTML Table:**

```html
<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Grade</th>
            <th>Subject</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Alice</td>
            <td>95</td>
            <td>Math</td>
        </tr>
    </tbody>
</table>
```

### Exercise 2: Weather Data Dashboard

Create a server that sends weather information for multiple cities.

**Server Data:**

```javascript
const weather = {
    cities: [
        { name: "New York", temp: 22, condition: "Sunny" },
        { name: "London", temp: 15, condition: "Cloudy" },
        { name: "Tokyo", temp: 28, condition: "Rainy" },
    ],
    lastUpdated: new Date().toLocaleString(),
};
```

**Your Task:** Display as weather cards with styling.

### Exercise 3: Shopping Cart System

Create a server that sends shopping cart data and display with total calculation.

**Server Data:**

```javascript
const cart = {
    items: [
        { name: "Laptop", price: 899, quantity: 1 },
        { name: "Mouse", price: 29, quantity: 2 },
    ],
    user: "John Doe",
};
```

**Your Task:** Calculate and display total price, item count, etc.

---

## Key Takeaways

1. **Servers can only send strings** - not objects or arrays directly
2. **JSON.stringify()** converts objects/arrays → strings (for sending)
3. **JSON.parse()** converts strings → objects/arrays (for using)
4. **JSON strings look like JavaScript** but they're still strings
5. **Perfect for complex data** - users, products, lists, settings, etc.
6. **Use with innerHTML** to create rich, dynamic interfaces
