# JavaScript fetch() - Getting Data from Servers

## What is fetch()?

**fetch()** is a JavaScript function that lets your webpage get data from a server without reloading the page. Think of it as sending a messenger to get information and bring it back to display on your page.

**Perfect combination with what we just learned:**

-   **Node.js server** = Creates and sends data
-   **innerHTML** = Displays data on the webpage
-   **fetch()** = Gets data from server to webpage

---

## Why do we want to get data from servers?

Servers can provide dynamic content, like:

-   User profiles
-   Product lists
-   News articles

#### SnapChat Example

When you open the SnapChat app, it fetches your friends' stories, messages, and more from the server. This way, you always see the latest updates without needing to refresh the app.

Could we hardocode an array inside the mobile app? Yes, but it would be static and not update with new data. Every time a new story is added, the app would need to be updated, redeployed and downloaded by users.

This is not practical for apps that change frequently, like SnapChat.

By using a server, the app can always show the most current information, by providing the latest data from the server when you (your app or webpage) request / asks for it.

#### In general

Most modern websites and apps use servers to provide dynamic content. Think of:

-   Grab
-   Shopee
-   Netflix
-   Spotify
-   Twitter
-   TikTok
-   Zalando
-   etc.

They all use servers to store and retrieve data, which is then displayed on your webpage or app.

## `fetch()`

We can use **fetch()** to ask the server for this data and display it on our webpage. It allows us send requests (ask the server for data). The server then responds with the requested data, which we can then display on our webpage using **innerHTML**.

1. **fetch()** sends a request to the server
2. The server processes the request and sends back data
3. We use **innerHTML** to display the data on the webpage

---

# Lets try it out!

## Basic fetch() Syntax

```javascript
fetch("http://localhost:3000/")
    .then(function (response) {
        return response.text(); // Convert response to text
    })
    .then(function (data) {
        console.log(data); // Use the data (display it, store it, etc.)
    });
```

**What this does:**

1. `fetch()` - Ask the server for data
2. `.text()` - Convert the response to a text string
3. Use the data (display it, store it, etc.)

### Arrow Function Syntax (optional)

Another way to write the same code as above, but using arrow functions:

```javascript
fetch("http://localhost:3000/")
    .then((response) => response.text()) // Convert response to text
    .then((data) => {
        console.log(data); // Use the data (display it, store it, etc.)
    });
```

The arrow function syntax is shorter and often easier to read, especially for simple functions. Both versions do the same thing, so you can use whichever you prefer.

**What we're used to:**

```javascript
let counter = 0;
function counter() {
    counter++;
    return counter;
}
```

**What you'll often see in modern JavaScript:**

```javascript
let counter = 0;
const counter = () => {
    counter++;
    return counter;
};
```

Both to exactly the same thing, but the arrow function syntax is more concise and often preferred in modern JavaScript.

_As mentioned, it's up to you which syntax you prefer._

#### Variable types (a bit advanced, bit off-topic)

We've learned about primitive data types and reference data types in JavaScript:

-   Primitive types:

    -   `string`,
    -   `number`,
    -   `boolean`,
    -   `null`,
    -   `undefined`
        <br>

-   Reference types:
    -   `object`,
    -   `array`,
    -   `function`

A function is actually a data type in JavaScript, just like an object or an array. This means you can actually stor a function in an array or an object, and pass it around like any other data type.

> Don't worry if this is a bit confusing right now, we won't be using it during this course. But it's good to know that functions are also a data type in JavaScript!

---

## Step-by-Step Example

### Step 1: Create a Simple Server

First, create `server.js` with this code:

```javascript
const http = require("http");

const server = http.createServer((req, res) => {
    // Set CORS headers
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
    res.setHeader("Access-Control-Allow-Headers", "Content-Type");

    // Set response status and content type
    res.writeHead(200, { "Content-Type": "text/plain" });

    // Send a simple response
    res.end("Hello from the server!");
});

server.listen(3000, () => {
    console.log("Server running at http://localhost:3000/");
});
```

### Step 2: Create Your HTML Page

Create `index.html`:

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Fetch Practice</title>
        <style>
            body {
                font-family: Arial;
                padding: 20px;
            }
            button {
                padding: 10px 20px;
                font-size: 16px;
                margin: 10px 0;
            }
            #result {
                background: #f0f8ff;
                padding: 15px;
                border-radius: 8px;
                margin: 10px 0;
                min-height: 50px;
            }
        </style>
    </head>
    <body>
        <h1>Fetch Data Example</h1>
        <button onclick="getData()">Get Data from Server</button>
        <div id="result">Click the button to fetch data!</div>

        <script>
            function getData() {
                fetch("http://localhost:3000/")
                    .then(function (response) {
                        return response.text(); // Convert response to text
                    })
                    .then(function (data) {
                        document.getElementById("result").innerHTML = data; // Display the data
                    });
            }
        </script>
    </body>
</html>
```

### Step 3: Test It

1. Start your server: `node server.js`
2. Open `index.html` in your browser
3. Click "Get Data from Server"
    - As you can see it fecthes data from `http://localhost:3000/`. Just like we did earlier in the browser ourself.
    - But now we are using JavaScript to do it instead of us.
4. Watch the content update with innerHTML!

---

## Examples for Practice

### Server Example 1: Simple Counter

```javascript
const http = require("http");

let counter = 0;

const server = http.createServer((req, res) => {
    // Set CORS headers
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
    res.setHeader("Access-Control-Allow-Headers", "Content-Type");

    // Set response status and content type
    res.writeHead(200, { "Content-Type": "text/plain" });

    // Increment the counter and send the response
    counter++;

    // Send the current counter value
    res.end(`Page has been visited ${counter} times`);
});

server.listen(3000, () => {
    console.log("Counter server running at http://localhost:3000/");
});
```

### HTML Example 1: Simple Counter

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Live Counter</title>
        <style>
            .counter-display {
                background: #ff6b6b;
                color: white;
                padding: 40px;
                border-radius: 20px;
                text-align: center;
                font-size: 24px;
                margin: 20px 0;
            }
            .controls button {
                margin: 5px;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        <h1>Live Visit Counter</h1>

        <div class="controls">
            <button onclick="updateCounter()">Update Counter</button>
            <button onclick="startAutoRefresh()">Start Auto Refresh</button>
            <button onclick="stopAutoRefresh()">Stop Auto Refresh</button>
        </div>

        <div id="counter">Click update to see the counter!</div>

        <script>
            let refreshInterval;

            function updateCounter() {
                fetch("http://localhost:3000/")
                    .then(function (response) {
                        return response.text(); // Convert response to text
                    })
                    .then(function (data) {
                        document.getElementById(
                            "counter"
                        ).innerHTML = `<div class="counter-display">${data}</div>`;
                    });
            }

            // Some "alien" code to make it auto-refresh
            // This is not part of the course, just for fun!
            // You can ignore this part if you want
            // It will automatically update the counter every 2 seconds

            function startAutoRefresh() {
                // Update every 2 seconds
                refreshInterval = setInterval(updateCounter, 2000);
            }

            function stopAutoRefresh() {
                // Stop the auto-refresh
                clearInterval(refreshInterval);
            }
        </script>
    </body>
</html>
```

---

## Common Patterns

### Pattern 1: Simple Text Display

```javascript
fetch("http://localhost:3000/")
    .then(function (response) {
        return response.text(); // Convert response to text
    })
    .then(function (data) {
        document.getElementById("content").textContent = data;
    });
```

### Pattern 2: Styled Content Display

```javascript
fetch("http://localhost:3000/")
    .then(function (response) {
        return response.text();
    })
    .then(function (data) {
        document.getElementById("content").innerHTML = `
            <div class="styled-content">
                <h2>${data}</h2>
                <p>Retrieved at: ${new Date().toLocaleTimeString()}</p>
            </div>
        `;
    });
```

### Pattern 3: Auto-Refresh Data

```javascript
// Using arrorw functions for simplicity
function refreshData() {
    fetch("http://localhost:3000/")
        .then((response) => response.text())
        .then((data) => {
            document.getElementById("content").innerHTML = data;
        });
}

// Refresh every 3 seconds
setInterval(refreshData, 3000);
```

---

## Key Takeaways

1. **fetch()** gets data from servers without reloading the page
2. **innerHTML** displays the fetched data on your webpage
3. **Servers return simple text** that we can display directly
4. **Perfect combination:** Server creates data → fetch() gets data → innerHTML displays data
