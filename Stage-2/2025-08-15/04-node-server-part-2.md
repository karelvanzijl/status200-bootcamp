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

# Practice

Let's use the code we created in the previous section:

**Server Code:**

```javascript
// Create an array of products
const products = [
    { id: 1, name: "Product 1", price: 100 },
    { id: 2, name: "Product 2", price: 200 },
    { id: 3, name: "Product 3", price: 300 },
];

// Import the built-in HTTP module
const http = require("http");

// Create an HTTP server
const server = http.createServer((req, res) => {
    // Set CORS headers
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
    res.setHeader("Access-Control-Allow-Headers", "Content-Type");

    // Set response status and content type
    res.writeHead(200, { "Content-Type": "application/json" });

    // Stringify the products array to JSON
    let response = JSON.stringify(products);

    // Write the response
    res.write(JSON.stringify(response));
    res.end();
});

// Start the server on port 3000
const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
```

**Client Code:**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Server Client Interaction</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }
            h1 {
                color: #333;
            }
            .product,
            .service {
                border: 1px solid #ccc;
                padding: 10px;
                margin: 10px 0;
            }
        </style>
    </head>
    <body>
        <p>
            <button onclick="fetchProducts()">Fetch Products</button>
        </p>
        <h1 id="title"></h1>
        <div id="items"></div>

        <script>
            function fetchProducts() {
                fetch("http://localhost:3000")
                    .then((response) => response.json())
                    .then((data) => {
                        document.getElementById("title").innerText = "Products";
                        const itemsDiv = document.getElementById("items");
                        itemsDiv.innerHTML = "";
                        data.forEach((product) => {
                            itemsDiv.innerHTML += `<div class="product">
                                <h2>${product.name}</h2>
                                <p>Price: $${product.price}</p>
                            </div>`;
                        });
                    });
            }
        </script>
    </body>
</html>
```

### Task 1 - add routes

-   `/` - Home page
-   `/products` - Products page
-   `/services` - Services page

Test to make sure these routes work!

**Solution - Node server:**

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
    res.writeHead(200, { "Content-Type": "application/json" });

    // Your logic
    if (req.url === "/") {
        res.write(JSON.stringify({ message: "Welcome to the Home Page!" }));
    } else if (req.url === "/products") {
        res.write(JSON.stringify(products));
    } else if (req.url === "/services") {
        res.write(JSON.stringify(services));
    }

    // Send response back to the client
    res.end();
});

// Start the server and listen on the specified port
const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});
```

### Task 2: fetch services

-   Add another button to fetch services.
-   When clicked, it should fetch data from the `/services` route and display it in a similar way to the products.

**Solution - Client code:**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Server Client Interaction</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }
            h1 {
                color: #333;
            }
            .product,
            .service {
                border: 1px solid #ccc;
                padding: 10px;
                margin: 10px 0;
            }
        </style>
    </head>
    <body>
        <p>
            <button onclick="fetchProducts()">Fetch Products</button>
            <button onclick="fetchServices()">Fetch Services</button>
        </p>
        <h1 id="title"></h1>
        <div id="items"></div>

        <script>
            function fetchProducts() {
                fetch("http://localhost:3000")
                    .then((response) => response.json())
                    .then((data) => {
                        document.getElementById("title").innerText = "Products";
                        const itemsDiv = document.getElementById("items");
                        itemsDiv.innerHTML = "";
                        data.forEach((product) => {
                            itemsDiv.innerHTML += `
                                <div class="product">
                                    <h2>${product.name}</h2>
                                    <p>Price: $${product.price}</p>
                                </div>
                            `;
                        });
                    });
            }

            function fetchServices() {
                fetch("http://localhost:3000/services")
                    .then((response) => response.json())
                    .then((data) => {
                        document.getElementById("title").innerText = "Services";
                        const itemsDiv = document.getElementById("items");
                        itemsDiv.innerHTML = "";
                        data.forEach((service) => {
                            itemsDiv.innerHTML += `
                                <div class="service">
                                    <h2>${service.name}</h2>
                                    <p>Price: $${service.price}</p>
                                </div>
                            `;
                        });
                    });
            }
        </script>
    </body>
</html>
```

### Task 3: 404 Not Found

-   make sure your server handles requests to routes that do not exist by returning a `404 Not Found` message.

**Solution - Node server:**

We use this "Not Found" to handle requests to routes that we do not have defined. Normally a user would never see this, but it is good to have a fallback in case of errors.

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
    res.writeHead(200, { "Content-Type": "application/json" });

    // Your logic
    if (req.url === "/") {
        res.write(JSON.stringify({ message: "Welcome to the Home Page!" }));
    } else if (req.url === "/products") {
        res.write(JSON.stringify(products));
    } else if (req.url === "/services") {
        res.write(JSON.stringify(services));
    } else {
        res.write(JSON.stringify({ message: "404 Not Found" }));
    }

    // Send response back to the client
    res.end();
});

// Start the server and listen on the specified port
const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});
```

---

# Exercise - different pages

We now use buttons to fetch data from the server and change the content of the page dynamically. On the same page we show the products and services.

In reality, you would probably want to have different pages for products and services. Each page would automatically fetch the relevant data when the page loads.

-   Can you modify the code to create separate pages for the homepage, products and services?
-   And make sure the server responds with the correct data for each page?
-   Fetch the data from the server when the page loads?

**Solution - Node server:**

Same code as before, we already have the routes set up for `/`, `/products`, and `/services`. We don't need to change the server code for this exercise, but we will modify the client code to create separate pages.

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
    res.writeHead(200, { "Content-Type": "application/json" });

    // Your logic
    if (req.url === "/") {
        res.write(JSON.stringify({ message: "Welcome to the Home Page!" }));
    } else if (req.url === "/products") {
        res.write(JSON.stringify(products));
    } else if (req.url === "/services") {
        res.write(JSON.stringify(services));
    } else {
        res.write(JSON.stringify({ message: "404 Not Found" }));
    }

    // Send response back to the client
    res.end();
});

// Start the server and listen on the specified port
const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});
```

**Solution - Client code:**

```html
<!-- index.html -->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Server Client Interaction</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }
            h1 {
                color: #333;
            }
        </style>
    </head>
    <body>
        <h1 id="message"></h1>
    </body>
    <script>
        // Fetch the home page data when the page loads
        fetch("http://localhost:3000/")
            .then((response) => response.text())
            .then((data) => {
                data = JSON.parse(data);
                document.getElementById("message").textContent = data.message;
            });
    </script>
</html>
```

```html
<!-- products.html -->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Products</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }
            h1 {
                color: #333;
            }
            .product {
                border: 1px solid #ccc;
                padding: 10px;
                margin: 10px 0;
            }
        </style>
    </head>
    <body>
        <h1>Products</h1>
        <a href="services.html">Services</a>
        <div id="result"></div>
        <script>
            let resultDisplay = document.getElementById("result");
            fetch("http://localhost:3000/products")
                .then(function (response) {
                    return response.text();
                })
                .then(function (data) {
                    const products = JSON.parse(data);

                    for (let i = 0; i < products.length; i++) {
                        resultDisplay.innerHTML += `
                        <div class="product">
                            <h4>${products[i].name}</h4>
                            <p>Price: ${products[i].price}</p>
                        </div>
                        `;
                    }
                });
        </script>
    </body>
</html>
```

```html
<!-- services.html -->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Services</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }
            h1 {
                color: #333;
            }
            .service {
                border: 1px solid #ccc;
                padding: 10px;
                margin: 10px 0;
            }
        </style>
    </head>
    <body>
        <h1>Services</h1>
        <a href="products.html">Products</a>
        <div id="result"></div>
        <script>
            let resultDisplay = document.getElementById("result");
            fetch("http://localhost:3000/services")
                .then(function (response) {
                    return response.text();
                })
                .then(function (data) {
                    const services = JSON.parse(data);

                    for (let i = 0; i < services.length; i++) {
                        resultDisplay.innerHTML += `
                        <div class="service">
                            <h4>${services[i].name}</h4>
                            <p>Price: ${services[i].price}</p>
                        </div>
                        `;
                    }
                });
        </script>
    </body>
</html>
```
