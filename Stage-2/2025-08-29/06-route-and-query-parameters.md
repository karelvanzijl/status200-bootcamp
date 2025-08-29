# Route & Query Parameters

-   [Route Parameters](#route-parameters)
-   [Query Parameters](#query-parameters)
    -   [Server-side](#server-side)
    -   [Client-side](#client-side)

---

## Route Parameters

Route parameters are used to capture dynamic values in the URL path. They are defined in the route definition by prefixing a segment with a colon (`:`). For example, in the route `/products/:id`, `:id` is a route parameter that can capture different product IDs.

When a request is made to a URL that matches this pattern, the value of the route parameter can be accessed in the request handler. For example, if a user navigates to `/products/123`, the value `123` can be accessed as `req.params.id` in an Express.js application.

> **We generally use _route parameters_ when talking to an API (Node Server in our case), for example to get a specific product by its ID.**

### Example

```javascript
// Client-side
fetch("/products/123")
    .then((response) => response.json())
    .then((data) => console.log(data));

// Server-side
app.get("/products/:id", (req, res) => {
    // Get the product ID from the route parameter (should be '123' in this case)
    const productId = req.params.id;

    // Use productId to fetch product details from the database
    res.send(`Product ID: ${productId}`);
});
```

### You decide the name

There are no restrictions on the names you can use for route parameters. You can name them whatever makes sense for your application, as long as they are prefixed with a colon (`:`) in the route definition.

**In general:**

When you define the route `products/:parameterName`, you can access the value of `parameterName` in your request handler using `req.params.parameterName`.

---

## Query Parameters

We use _query parameters_ both on the client-side and server-side.

A query parameter is a key-value pair that is appended to the end of a URL after a question mark (`?`). Multiple query parameters can be included in a URL, separated by ampersands (`&`).

`http://...?key1=value1&key2=value2`

-   `key1` and `key2` are the names of the query parameters.
-   `value1` and `value2` are the corresponding values for those parameters.

### Client-side

For example, when we created a page `movie.html`, we could add query parameters to the URL like this: `movie.html?id=123`. Here, `id` is a query parameter with the value `123`.

In the frontend, we can access this query parameter using JavaScript:

```javascript
const urlParams = new URLSearchParams(window.location.search);
const movieId = urlParams.get("id"); // movieId will be '123'
```

We can then use this `movieId` to fetch specific data from our backend server.

```javascript
fetch(`/api/movies/${movieId}`)
    .then((response) => response.json())
    .then((data) => console.log(data));
```

### Server-side

We can also use query parameters on the server-side to filter or sort data for example.

When making a request to a server (using fetch), you can include query parameters in the URL to send additional information to the server.

```javascript
fetch("/products?sortBY=price&direction=asc")
    .then((response) => response.json())
    .then((data) => console.log(data));
```

On the server-side, you can access these query parameters using `req.query` in an Express.js application.

```javascript
app.get("/products", (req, res) => {
    const sortBy = req.query.sortBY; // 'price'
    const direction = req.query.direction; // 'asc'
    // Use sortBy and direction to sort products from the database
    res.send(`Sort by: ${sortBy}, Direction: ${direction}`);
});
```

### You decide the names

There are no restrictions on the names you can use for query parameters. You can name them whatever makes sense for your application.
