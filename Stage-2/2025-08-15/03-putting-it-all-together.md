# Server & Client

We've learned how to:

-   Create a simple Node.js server
-   Send responses based on routes
-   Use the `fetch()` API to get data from a server
-   Use `innerHTML` to display data on a webpage
-   Use `JSON.stringify()` to convert JavaScript objects to JSON strings
-   Use `JSON.parse()` to convert JSON strings back to JavaScript objects

Now, let's put it all together to create a complete server-client interaction.

## Putting It All Together

### Step 1: Create a Node.js Server

Let's create a Node.js server that responds to different routes. We'll use the `http` module to create the server and handle requests.

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

### Step 2: Start the Server

To start the server, save the code above in a file named `server.js` and run it using Node.js:

```bash
node server.js
```

Or

```bash
node --watch server.js
```

You should see a message indicating that the server is running on `http://localhost:3000`.

### Step 3: Fetch Data from the Server

Now, let's use the `fetch()` API to get data from our server. We'll create a simple HTML file that fetches and displays the products and services.

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
