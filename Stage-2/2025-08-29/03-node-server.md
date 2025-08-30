# Node Server

Some basics to get you started with your Node Server.

-   [Setting Up](#setting-up)
-   [Route Params](#route-params)
-   [Query Params](#query-params)
-   [CRUD Operations](#crud-operations)
-   [Additional Resources](#additional-resources)

---

## Setting Up

-   Create a folder named `server`
-   Inside that folder, run `npm init -y`
-   Run `npm install express cors mysql2`
-   Create a file named `index.js` and add the following code:

```javascript
const express = require("express");
const cors = require("cors");
const mysql = require("mysql2/promise");
const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());

const db = mysql.createPool({
    host: "localhost",
    user: "your_username",
    password: "your_password",
    database: "your_database",
});

// START - Your routes here

app.get("/", (req, res) => {
    res.json({ message: "Hello World!" });
});

// END - Your routes here

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
```

-   Run the server with `node --watch index.js` if you have installed.

Your server is now set up to handle requests. You can add your routes where indicated.

---

## Parameters

### Route Params

Route parameters are values that are part of the URL path. They are used to capture dynamic values in the URL:

```javascript
app.get("/products/:id", (req, res) => {
    const productId = req.params.id;
    // rest of your code
});
```

> If you choose to use `:parameterName` as a route parameter, you'll need `req.params.parameterName` to access the value.

### Query Params

Query parameters are key-value pairs that are appended to the URL after a question mark (`?`). They are used to filter or sort data:

URL: `http://localhost:3000/products?sortBy=price&order=asc`

```javascript
app.get("/products", (req, res) => {
    const sortBy = req.query.sortBy; // e.g., 'price'
    const order = req.query.order; // e.g., 'asc'
    // rest of your code
});
```

> If you choose to use `?key=value` as a query parameter, you'll need `req.query.key` to access the value.

---

### CRUD Operations

-   app.**get**(...) - `Read` data from the server (`GET` request)
-   app.**post**(...) - `Create` new data on the server (`POST` request)
-   app.**put**(...) - `Update` existing data on the server (`PUT` request)
-   app.**delete**(...) - `Delete` data from the server (`DELETE` request)

---

Additional Resources

More information and examples about CRUD operations can be found in the [RESTful API documentation](../2025-08-28/01-restful-api.md).
