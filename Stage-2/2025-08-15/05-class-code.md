# Code used in class

## Code templates

### Node server

User this code to create your initial Node.js server. Based on the project you'll need to modify it to your needs.

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
    let message = JSON.stringify({
        message: "Hello, World!",
    });

    // Write the response
    res.write(message);

    // Send response back to the client
    res.end();
});

// Start the server and listen on the specified port
const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});
```

### `fetch()` function (client-side)

Use this code to make a simple `fetch()` request from the client side.

-   Adjust the URL and method as needed.
-   Wen using this `fetch()` function, you'll only need to write your logic inside the last `.then()` block.

```javascript
fetch("http://localhost:3000/")
    .then(function (response) {
        return response.text();
    })
    .then(function (data) {
        // Your logic here
        console.log(data);
    });
```

---

## Code used in class

You can use the following code snippets as a reference for the class exercises. These snippets are designed to demonstrate basic functionality and can be modified to suit your project requirements.

The code below was used to create the last exercice:

**Client-Side**

```html
<!-- products.html -->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Products</title>
        <style>
            * {
                margin: 0;
                padding: 0;
            }
            body {
                font-family: Verdana, Geneva, Tahoma, sans-serif;
                display: flex;
                flex-direction: column;
                gap: 20px;
                align-items: center;
            }
            #result {
                display: flex;
                flex-direction: column;
                gap: 20px;
            }
            .card {
                border: 1px solid black;
                border-radius: 10px;
                padding: 10px;
            }
        </style>
    </head>
    <body>
        <h1>Product Overview</h1>
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
                        <div class="card">
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
            * {
                margin: 0;
                padding: 0;
            }
            body {
                font-family: Verdana, Geneva, Tahoma, sans-serif;
                display: flex;
                flex-direction: column;
                gap: 20px;
                align-items: center;
            }
            #result {
                display: flex;
                flex-direction: column;
                gap: 20px;
            }
            .card {
                border: 1px solid black;
                border-radius: 10px;
                padding: 10px;
            }
        </style>
    </head>
    <body>
        <h1>Services Overview</h1>
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
                        <div class="card">
                            <h4>${services[i].name}</h4>
                            <p>Duration: ${services[i].duration} hours</p>
                        </div>
                        `;
                    }
                });
        </script>
    </body>
</html>
```

### Node server

```javascript
// Import the built-in HTTP module
const http = require("http");

// Mimic product data from database
const products = [
    { name: "Wireless Mouse", price: 79 },
    { name: "Bluetooth Headphones", price: 249 },
    { name: "Mechanical Keyboard", price: 329 },
    { name: "USB-C Hub", price: 119 },
    { name: "Portable SSD 1TB", price: 459 },
    { name: "Smartwatch", price: 699 },
    { name: "4K Monitor", price: 1299 },
    { name: "Gaming Chair", price: 899 },
];

// Mimic data from database
const services = [
    { name: "Website Design", duration: 40 },
    { name: "SEO Optimization", duration: 15 },
    { name: "Computer Repair", duration: 3 },
    { name: "Online Marketing Consultation", duration: 5 },
    { name: "Cloud Storage Setup", duration: 2 },
    { name: "Photography Session", duration: 4 },
    { name: "Home Cleaning Service", duration: 6 },
    { name: "Language Tutoring", duration: 2 },
];

// Create an HTTP server
const server = http.createServer((req, res) => {
    // Set CORS headers
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
    res.setHeader("Access-Control-Allow-Headers", "Content-Type");

    // Set response status and content type
    res.writeHead(200, { "Content-Type": "application/json" });

    if (req.url == "/products") {
        res.write(JSON.stringify(products));
    } else if (req.url == "/services") {
        res.write(JSON.stringify(services));
    }

    res.end();
});

// Start the server and listen on the specified port
const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});
```
