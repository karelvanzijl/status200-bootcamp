# Node.js HTTP Server - Part 2

In this part, we will build a basic Node.js HTTP server that can handle different routes and respond with appropriate messages. This will help you understand how to create a server, set up routes, and handle requests in Node.js.

## Template for a Basic Node.js HTTP Server

This template provides a basic structure for creating a Node.js HTTP server. It includes CORS headers, response handling, and a simple HTML response.

```javascript
// Import the built-in HTTP module
const http = require("http");

// Create an HTTP server
const server = http.createServer((req, res) => {
    // Set CORS headers
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
    res.setHeader("Access-Control-Allow-Headers", "Content-Type");

    // Set response status and content type
    res.writeHead(200, { "Content-Type": "text/html" });

    // Create the response (new ... res.write)
    res.write(`<h1>Welcome to my Node.js server!</h1>`);
    res.write(`<p>You requested: ${req.url}</p>`);

    // Send the response
    res.end();
});

// Define the port to listen on
const PORT = 3000;

// Start the server and listen on the specified port
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});
```

## Starting the Server

To start the server, follow these steps:

1. **Create a file** named `server.js` and copy the code above into it.
2. **Open your terminal** in the same folder as `server.js`.
3. **Run the server** using the command:

    ```bash
    node server.js

    # Or (when developing):
    node --watch server.js
    ```

4. You should see the message: `Server running at http://localhost:3000/

## Testing the Server

5. **Open your web browser** and go to: **http://localhost:3000/**
6. You should see the message: "Welcome to my Node.js server!" along with the requested URL.

## Important Notes

-   Only **_one_ server can listen on a specific port at a time**. If you try to start another server on the same port, you'll get an error.
-   You **_can_ have multiple servers running**, but they have to listen on **different ports**. For example, you can run one server on port 3000, another on port 4000 and another on port 5000:<br><br>

    ```javascript
    // server1.js
    server.listen(3000);

    // server2.js
    server.listen(4000);

    // server3.js
    server.listen(5000);
    ```

-   To stop the server, press `Ctrl + C` in the terminal where the server is running.

---

# Routes

A route is a specific path on your server that responds to requests. For example:

-   `/` is the root route, which is the default when you visit your server.
-   `/services` could be a route that lists services.
-   `/products` could be a route that lists products.

**_The server gives a different response based on the route requested._**

## How do we handle routes?

You can handle routes by checking the **`req.url`** property in your server code. Here's an example of how to handle different routes:

```javascript
let response;

// Home page
if (req.url === "/") {
    response = "<h1>Welcome to the Home Page!</h1>";
}

// Services page
if (req.url === "/services") {
    response = "<h1>Services Page</h1>";
}

// Products page
if (req.url === "/products") {
    response = "<h1>Products Page</h1>";
}

// 404 Not Found (if no route matches)
if (!response) {
    response = "<h1>404 Not Found</h1>";
}

res.write(response);
res.end();
```

### Example of a Complete Server with Routes

```javascript
const http = require("http");

const server = http.createServer((req, res) => {
    // Set CORS headers
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
    res.setHeader("Access-Control-Allow-Headers", "Content-Type");

    // Set response status and content type
    res.writeHead(200, { "Content-Type": "text/html" });

    // Initialize response variable
    let response;

    // Home page
    if (req.url === "/") {
        response = "<h1>Welcome to the Home Page!</h1>";
    }
    // Services page
    if (req.url === "/services") {
        response = "<h1>Services Page</h1>";
    }
    // Products page
    if (req.url === "/products") {
        response = "<h1>Products Page</h1>";
    }
    // 404 Not Found
    if (!response) {
        response = "<h1>404 Not Found</h1>";
    }

    res.write(response);
    res.end();
});

// Start the server
const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
```

After creating the server, you can test it by visiting different routes in your browser:

-   **http://localhost:3000/** for the home page
-   **http://localhost:3000/services** for the services page
-   **http://localhost:3000/products** for the products page
-   Any other route will return a 404 Not Found message.

---

# Exercise

## Task 1

Create a simple Node.js server that responds with "Hello, World!" when you visit the root URL (`/`).

## Task 2

Modify your server so it responds differently when you visit:

-   `/`
    -   Response: "Welcome to the Home Page!"
-   `/about`
    -   Response: "About Us"
-   `/contact`
    -   Response: "Contact Us"

## Task 3

What happens if you try to load a route that doesn't exist?

## Task 4

Take care of routes requests that do not exist by returning a `404 Not Found` message.
