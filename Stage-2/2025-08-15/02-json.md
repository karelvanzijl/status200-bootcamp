# JSON Data

So far we've created a basic Node.js HTTP server that responds to requests with a simple text or HTML messages.

But often we use Node.js to build APIs that can handle different routes and return something called **JSON data**. In this part, we will extend our server to handle different routes and respond with JSON data.

## Introduction

So far we used Arrays and Objects in our website JavaScript code, processed them, and displayed them on the page. This all works great, but it's not realistic.

#### Shopee Example

When you go to the Shopee website, you can search for products, view product details, and add products to your cart.

Every day new products are added to and remove from Shopee by merchants.

How does the Shopee website or mobile app know which products are available?

They can not just use a hardcoded list of products in the HTML JavaScript code or in the mobile app code. It would mean that every time a new product is added, the Shopee team would need to update the code and redeploy the website and app.

**Solution**:
Shopee uses a **server** that stores all the products in a database. When you search for products, the Shopee website or app sends a request to the server, which then retrieves the product data from the database and sends it back as JSON data.

-   product categories
-   product details
-   product reviews
-   order history
-   user profiles
-   etc.

#### In general

Almost all modern websites and mobile apps use a server to store and retrieve data. The server can handle different routes and respond with data, which can then be processed by the website or app.

-   Netflix
-   Spotify
-   Twitter
-   TikTok
-   Snapchat
-   Zalando
-   Grab
-   etc.

## How does the Shopee server send the data?

Lets mimic the Shopee server and try to send some data back to the client (your web browser) when you request a specific route.

### Lets try it out with our current knowledge

1. Create a Node.js server.
2. Lets try to send an array of products as a response
3. Lets ignore routes for now, our server will respond to all requests trying to send teh array of products.

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

    // Create an array of products
    const products = [
        { id: 1, name: "Product 1", price: 100 },
        { id: 2, name: "Product 2", price: 200 },
        { id: 3, name: "Product 3", price: 300 },
    ];

    // Let try to send the products array as a response
    res.write(products);

    // Send the response
    res.end();
});

// Start the server and listen on the specified port
const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});
```

4. Load the server in your web browser at **http://localhost:3000/**

#### Did it work?

No, it didn't work. You should see an error in your terminal where the server is running. Also your web browser should show an error message or a blank page.

#### Why? What is going on?

Go back to your terminal that is running the server and look at the output. You should see an error message like this:

```bash
node:_http_outgoing:949
    throw new ERR_INVALID_ARG_TYPE(
    ^

TypeError [ERR_INVALID_ARG_TYPE]: The "chunk" argument must be of type string or an instance of Buffer or Uint8Array. Received an instance of Array
    at write_ (node:_http_outgoing:949:11)
    at ServerResponse.write (node:_http_outgoing:904:15)
    at Server.<anonymous> (/Users/karelvanzijl/Desktop/Bootcamp/Exercises/Node/aug-13-homework/script.js:22:9)
    at Server.emit (node:events:507:28)
    at parserOnIncoming (node:_http_server:1153:12)
    at HTTPParser.parserOnHeadersComplete (node:_http_common:117:17) {
  code: 'ERR_INVALID_ARG_TYPE'
}

Node.js v23.11.0
Failed running 'script.js'
```

Do you see the error message? It says that the "chunk" argument must be of type string or an instance of Buffer or Uint8Array, but it received an instance of Array.

#### What does this mean?

This means that the `res.write()` method expects a string or a Buffer, but we tried to send an array directly. The server is trying to write the array as a response, but it doesn't know how to convert it to a string.

---

# JSON to the rescue!

To fix this, we need to convert the array of products to a JSON string before sending it as a response.

**JSON (JavaScript Object Notation)** is a lightweight data interchange format that is easy to read and write for humans and machines. It is often used to send data between a server and a client.

> JSON is a text format that is completely language independent but uses conventions that are familiar to programmers of the C family of languages, which includes C, C++, C#, Java, JavaScript, Perl, Python, and many others.

A JSON string looks like this:

```json
[
    { "id": 1, "name": "Product 1", "price": 100 },
    { "id": 2, "name": "Product 2", "price": 200 },
    { "id": 3, "name": "Product 3", "price": 300 }
]
```

Looks familiar, right? It's just like an array of objects in JavaScript, but it's a string representation of that data.

## `JSON.stringify()`

To convert our array of products to a JSON string, we can use the `JSON.stringify()` method. This method takes a JavaScript object or array and converts it to a JSON string.

### Let's test this out

Write a little node script to test the `JSON.stringify()` method:

```javascript
// Create an array of products
const products = [
    { id: 1, name: "Product 1", price: 100 },
    { id: 2, name: "Product 2", price: 200 },
    { id: 3, name: "Product 3", price: 300 },
];

// Log the "typeof" of the products array
console.log(typeof products);

// Convert the array to a JSON string
const jsonString = JSON.stringify(products);

// Log the typeof of the JSON string
console.log(typeof jsonString);
```

As you can see, the `typeof` of the `products` array is "object", but the `typeof` of the `jsonString` is "string". **This means that we can now send the JSON string as a response.**

## `JSON.parse()`

But how does the client (your web browser) know how to handle this JSON string? We can loop through an array of objects in JavaScript, but we can't loop through a string.

To convert a JSON string back to a JavaScript object or array, we can use the `JSON.parse()` method. This method takes a JSON string and converts it back to a JavaScript object or array.

### Let's test this out

Let's use the above example and convert the JSON string back to a JavaScript object or array:

```javascript
// Create an array of products
const products = [
    { id: 1, name: "Product 1", price: 100 },
    { id: 2, name: "Product 2", price: 200 },
    { id: 3, name: "Product 3", price: 300 },
];

// Log the "typeof" of the products array
console.log(typeof products);

// Convert the array to a JSON string
const jsonString = JSON.stringify(products);

// Log the typeof of the JSON string
console.log(typeof jsonString);

// Convert the JSON string back to a JavaScript object or array
const parsedProducts = JSON.parse(jsonString);

// Log the typeof of the parsed products
console.log(typeof parsedProducts);
```

Now, the `typeof` of the `parsedProducts` is "object" again, which means we can loop through it and access its properties just like we did with the original `products` array.

## Updating the Server to Use JSON

Now that we know how to convert an array to a JSON string and back, let's update our server code to send the products array as a JSON response.

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

    // Create an array of products
    const products = [
        { id: 1, name: "Product 1", price: 100 },
        { id: 2, name: "Product 2", price: 200 },
        { id: 3, name: "Product 3", price: 300 },
    ];

    // Convert the products array to a JSON string
    const jsonString = JSON.stringify(products);

    // Send the JSON string as a response
    res.write(jsonString);
    res.end();
});

// Start the server and listen on the specified port
const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});
```

---

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Products</title>
        <style>
            .product {
                border: 1px solid black;
                margin-bottom: 20px;
            }
        </style>
    </head>
    <body>
        <h1>products</h1>

        <button onclick="getProducts()">Get Products</button>

        <div id="products"></div>

        <script>
            let productsList = document.getElementById("products");

            function getProducts() {
                fetch("http://localhost:3000/")
                    .then(function (response) {
                        return response.text(); // Convert response to text
                    })
                    .then(function (data) {
                        const products = JSON.parse(data);

                        let htmlOutput = "";

                        for (let i = 0; i < products.length; i++) {
                            htmlOutput += `
                                <div class="product">
                                    <h2>${products[i].name}</h2>
                                    <p>Price: MYR${products[i].price}</p>
                                </div>
                            `;
                        }

                        productsList.innerHTML = htmlOutput;
                    });
            }
        </script>
    </body>
</html>
```
