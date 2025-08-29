# Fetch API

The Fetch API is a modern interface that allows you to make HTTP requests to servers from web browsers. It provides a more powerful and flexible way to interact with resources over the network compared to older methods like XMLHttpRequest.

-   [Basic structure](#basic-structure)
-   [GET Request](#get-request)
-   [DELETE Request](#delete-request)
-   [POST Request](#post-request)
-   [PUT Request](#put-request)
-   [Additional Resources](#additional-resources)

---

## Setting Up

No setup is required for the Fetch API as it is built into modern browsers.

---

## Basic structure

The basic syntax of the `fetch` function is as follows:

```javascript
fetch(url, {
    // HTTP method (GET, POST, PUT, DELETE)
    method: "GET",
    headers: {
        // Specify the content type
        "Content-Type": "application/json",
    },
    // Body of the request (for POST, PUT)
    body: JSON.stringify(data),
})
    .then((response) => {
        // Handle the response
        return response.json(); // Parse JSON response
    })
    .then((data) => {
        // Use the data from the response
        // Your logic to handle the data
        console.log(data);
    });
```

-   `url`: The URL of the resource you want to fetch.
-   `method`: The HTTP method you want to use (e.g., GET, POST, PUT, DELETE). If not specified, it defaults to `GET`.
-   `headers`: An object containing any headers you want to include in the request.
-   `body`: The body of the request, typically used with `POST` or `PUT` methods. It should be a string, so you often use `JSON.stringify()` to convert a JavaScript object to a JSON string.
-   `then()`: A method that returns a Promise. It takes a callback function that is executed when the Promise is resolved. The first `then()` handles the response, and the second `then()` processes the data.

---

## `GET` Request

To fetch data from a server, you can use the `fetch` function. Here's an example of how to make a `GET` request:

> **Server side `app.get("/data")`**

```javascript
fetch("https://api.example.com/data")
    .then((response) => response.json())
    .then((data) => {
        // Your logic to handle the data
        console.log(data);
    })
    // Handle errors. You don't need to do this because we haven't covered it in class.
    // But it's good practice to include error handling in real applications.
    // You might want to explain this part in your own time.
    .catch((error) => {
        console.error("There was a problem with the fetch operation:", error);
    });
```

You can add `Query Parameters` to the URL if it suits your needs. Of cause the server needs to be able to handle them, you'll have to write the server code for that.

> **Server side `app.get("/data")`**. Use `req.query.keyName` to access query parameters on the server side.

For example:

```javascript
fetch("https://api.example.com/data?sortBy=price&order=asc")
    .then((response) => response.json())
    .then((data) => {
        // Your logic to handle the data
        console.log(data);
    })
    // Handle errors. You don't need to do this because we haven't covered it in class.
    // But it's good practice to include error handling in real applications.
    // You might want to explain this part in your own time.
    .catch((error) => {
        console.error("There was a problem with the fetch operation:", error);
    });
```

---

## `DELETE` Request

To delete data from a server, you can use the `fetch` function with the `DELETE` method. Here's an example of how to make a `DELETE` request:

> **Server side `app.delete("/data/:id")`**

```javascript
fetch("https://api.example.com/data/1", {
    method: "DELETE",
})
    .then((response) => {
        if (response.ok) {
            console.log("Resource deleted successfully");
        } else {
            console.error("Failed to delete resource");
        }
    })
    // Handle errors. You don't need to do this because we haven't covered it in class.
    // But it's good practice to include error handling in real applications.
    // You might want to explain this part in your own time.
    .catch((error) => {
        console.error("There was a problem with the fetch operation:", error);
    });
```

---

## `POST` Request

To send data to a server, you can use the `fetch` function with the `POST` method. Here's an example of how to make a `POST` request:

> **Server side `app.post("/data")`**

```javascript
const data = {
    name: "New Item",
    price: 100,
};

fetch("https://api.example.com/data", {
    method: "POST",
    headers: {
        "Content-Type": "application/json",
    },
    body: JSON.stringify(data),
})
    .then((response) => response.json())
    .then((data) => {
        // Your logic to handle the response data
        console.log("Success:", data);
    })
    // Handle errors. You don't need to do this because we haven't covered it in class.
    // But it's good practice to include error handling in real applications.
    // You might want to explain this part in your own time.
    .catch((error) => {
        console.error("There was a problem with the fetch operation:", error);
    });
```

---

## PUT Request

To update data on a server, you can use the `fetch` function with the `PUT` method. Here's an example of how to make a `PUT` request:

> **Server side `app.put("/data/:id")`**

```javascript
const updatedData = {
    name: "Updated Item",
    price: 150,
};

fetch("https://api.example.com/data/1", {
    method: "PUT",
    headers: {
        "Content-Type": "application/json",
    },
    body: JSON.stringify(updatedData),
})
    .then((response) => response.json())
    .then((data) => {
        // Your logic to handle the response data
        console.log("Success:", data);
    })
    // Handle errors. You don't need to do this because we haven't covered it in class.
    // But it's good practice to include error handling in real applications.
    // You might want to explain this part in your own time.
    .catch((error) => {
        console.error("There was a problem with the fetch operation:", error);
    });
```

---

## Additional Resources

Documentation for RESTful API design: [RESTful API documentation](../2025-08-28/01-restful-api.md).
