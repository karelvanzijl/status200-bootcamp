# Query Parameters

Query parameters are used to pass additional information to the server in a URL. They are typically used to filter or sort data, or to specify options for the request.

## Syntax

Query parameters are appended to the URL after a question mark (`?`). Each parameter is a key-value pair, separated by an equals sign (`=`). Multiple parameters are separated by an ampersand (`&`).

### Example

```
https://example.com/reviews?id=12345
```

-   `id` is the key, and `12345` is the value.

```
https://example.com/reviews?id=12345&sort=desc&limit=10
```

-   `id` is the first key with value `12345`.
-   `sort` is the second key with value `desc`.
-   `limit` is the third key with value `10`.

## How to get Query Parameters (Client-Side)

To retrieve query parameters in a web application, you can use the `URLSearchParams` interface in JavaScript. This allows you to easily access the values of the parameters.

### Example

```javascript
// Get the query string part of the URL (everything after the ?)
const queryString = window.location.search;

// Create a URLSearchParams object
const urlParams = new URLSearchParams(queryString);

// Get the value of "id"
const reviewId = urlParams.get("id");

// Get the value of "sort"
const sortOrder = urlParams.get("sort");

// Get the value of "limit"
const limit = urlParams.get("limit");

console.log(`Review ID: ${reviewId}`);
console.log(`Sort Order: ${sortOrder}`);
console.log(`Limit: ${limit}`);
```

### Example used in class

`reviews.html?id=12`

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Review</title>
    </head>
    <body>
        <script>
            // Get the query string part of the URL (everything after the ?)
            const queryString = window.location.search;

            // Create a URLSearchParams object
            const urlParams = new URLSearchParams(queryString);

            // Get the value of "id"
            const reviewId = urlParams.get("id");

            // Go fetch the review data from the server
            fetch("http://localhost:3000/reviews/" + reviewId)
                .then(function (response) {
                    return response.text();
                })
                .then(function (data) {
                    const review = JSON.parse(data);
                    console.log(review);
                });
        </script>
    </body>
</html>
```

1. The script retrieves the query string from the URL.
2. It creates a `URLSearchParams` object to parse the query string.
3. It extracts the value of the `id` parameter.
4. It uses the `fetch` API to request the review data from the server using the extracted `id`.
5. The response is processed as text, parsed as JSON, and logged to the console.
