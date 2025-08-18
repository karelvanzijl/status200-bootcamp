# Express

Express is a minimal and flexible Node.js web application framework that provides a robust set of features for building web and mobile applications. It is designed to make the development of web applications easier and faster by providing a simple interface for handling HTTP requests, routing, and middleware.

So far we've used the built-in HTTP module to create a server, we can do everything with it, but it will quickly become cumbersome as our application grows. Express simplifies the process of building web applications by providing a set of tools and conventions that make it easier to handle requests, responses, and routing.

## Setup

1. Create a new directory for your project.
2. Navigate to the directory in your terminal.
3. Run `npm init -y` to create a `package.json` file.
4. Install Express by running `npm install express`.
5. Install Cors by running `npm install cors`.
6. Create a new file named `app.js` (or any name you prefer).
7. Open the file in your code editor and start writing your Express application.

## Started Template

```javascript
const express = require("express");
const cors = require("cors");
const app = express();
const port = 3000;

app.use(cors());
app.listen(port, () => {
    console.log(`Server app listening at http://localhost:${port}`);
});

/*
 *   ↑↑↑ DO NOT change the code above this comment.
 *   ==============================================
 *   ↓↓↓ ADD your code below this comment.
 */

res.send("Welcome to my Node.js app!");
```

#### Explanation

The top part of the code, **which you don't have to change**, is a basic setup for an Express application:

-   We import the Express module and create an instance of it.
-   We define a port for our server to listen on.
    -   It does not matter which port you use, but 3000 is a common choice for development. Try it yourself and change the port to 9999, for example.
-   The server listens on the specified port and logs a message to the console when it starts successfully.

The bottom part of the code is where you will add **your own routes and logic**.

-   At the moment it always returns "Welcome to my Node.js app!"

## Routes - Static

Just like we did in the HTTP module, we can define routes in Express to handle different HTTP requests. A route is a path that the server listens to, and it can respond with different content based on the request.

### Example Routes

Here are some example routes you can add to your Express application:

-   `/` - A route that responds with a welcome message.

```javascript
app.get("/", (req, res) => {
    res.send("Welcome to my Node.js app!");
});
```

-   `/about` - A route that responds with an about page (HTML).

```javascript
app.get("/about", (req, res) => {
    res.send("<h1>About Us</h1><p>This is the about page.</p>");
});
```

-   `/categories` - A route that responds with a list of categories in JSON format.

```javascript
app.get("categories", (req, res) => {
    res.json(categories);
});
```

-   `/contact/nl` - A route that responds with Dutch contact information.
-   `/contact/my` - A route that responds with Malay contact information.
-   `/contact/us` - A route that responds with US contact information.

```javascript
app.get("/contact/nl", (req, res) => {
    res.send("<h1>Contact Us</h1><p>Neem gerust contact met ons op!</p>");
});

app.get("/contact/my", (req, res) => {
    res.send("<h1>Contact Us</h1><p>Sila hubungi kami!</p>");
});

app.get("/contact/us", (req, res) => {
    res.send("<h1>Contact Us</h1><p>Feel free to reach out!</p>");
});
```

## Routes - Dynamic

In addition to static routes, you can also create dynamic routes that accept parameters. This allows you to create more flexible and reusable routes.

### Example Dynamic Route

Here is an example of a dynamic route that accepts a parameter:

```javascript
app.get("/accounts/:id", (req, res) => {
    const accountId = req.params.id;
    res.send(`Account ID: ${accountId}`);
});
```

This route will respond with the account ID when you access it with a specific ID, like `/accounts/123`. Output will be: `Account ID: 123`

---

### Introduction code used in class

```javascript
const express = require("express");
const cors = require("cors");
const app = express();
const port = 3000;

app.use(cors());
app.listen(port, () => {
    console.log(`Server app listening at http://localhost:${port}`);
});

/*
 *   ↑↑↑ DO NOT change the code above this comment.
 *   ==============================================
 *   ↓↓↓ ADD your code below this comment.
 */

app.get("/", (req, res) => {
    res.send("Welcome to my Node.js app!");
});

app.get("/about", (req, res) => {
    res.send("<h1>About Us</h1><p>This is the about page.</p>");
});

app.get("/contact", (req, res) => {
    res.send("<h1>Contact Us</h1><p>Feel free to reach out!</p>");
});

app.get("/accounts", (req, res) => {
    res.json(accounts);
});

app.get("/categories", (req, res) => {
    res.json(categories);
});

// Account Data
const accounts = [
    { id: 1, name: "Alice", email: "alice@example.com" },
    { id: 2, name: "Bob", email: "bob@example.com" },
    { id: 3, name: "Charlie", email: "charlie@example.com" },
];

// Category Data
const categories = [
    {
        name: "Technology",
        productCount: 10,
    },
    {
        name: "Health",
        productCount: 5,
    },
    {
        name: "Lifestyle",
        productCount: 8,
    },
    {
        name: "Education",
        productCount: 12,
    },
];
```
