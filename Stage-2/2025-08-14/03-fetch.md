# JavaScript fetch() - Getting Data from Servers

## What is fetch()?

**fetch()** is a JavaScript function that lets your webpage get data from a server without reloading the page. Think of it as sending a messenger to get information and bring it back to display on your page.

**Perfect combination with what we just learned:**

-   **Node.js server** = Creates and sends data
-   **innerHTML** = Displays data on the webpage
-   **fetch()** = Gets data from server to webpage

---

## Basic fetch() Syntax

```javascript
fetch("http://localhost:3000/")
    .then((response) => response.text())
    .then((data) => {
        // Use the data here
        console.log(data);
    });
```

**What this does:**

1. `fetch()` - Ask the server for data
2. `.text()` - Convert the response to a text string
3. Use the data (display it, store it, etc.)

---

## Step-by-Step Example

### Step 1: Create a Simple Server

First, create `server.js` with this code:

```javascript
const http = require("http");

const server = http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "text/plain" });
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
                    .then((response) => response.text())
                    .then((data) => {
                        document.getElementById("result").innerHTML = data;
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
4. Watch the content update with innerHTML!

---

## Examples for Practice

### Server Example 1: Simple Counter

```javascript
const http = require("http");

let counter = 0;

const server = http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "text/plain" });
    counter++;
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
                    .then((response) => response.text())
                    .then((data) => {
                        document.getElementById("counter").innerHTML = `
                        <div class="counter-display">
                            ${data}
                        </div>
                    `;
                    });
            }

            function startAutoRefresh() {
                // Update every 2 seconds
                refreshInterval = setInterval(updateCounter, 2000);
            }

            function stopAutoRefresh() {
                clearInterval(refreshInterval);
            }
        </script>
    </body>
</html>
```

---

## Understanding fetch() Step by Step

```javascript
fetch("http://localhost:3000/") // 1. Ask server for data
    .then((response) => response.text()) // 2. Convert response to text
    .then((data) => {
        // 3. Use the text data
        console.log(data); // 4. Do something with it
        element.innerHTML = data; // 5. Display with innerHTML
    });
```

**What each part does:**

1. **fetch()** - Sends request to server
2. **response.text()** - Converts server response to readable text
3. **data** - The actual text string from server
4. **innerHTML** - Displays the text on your webpage

---

## Common Patterns

### Pattern 1: Simple Text Display

```javascript
fetch("http://localhost:3000/")
    .then((response) => response.text())
    .then((data) => {
        document.getElementById("content").innerHTML = data;
    });
```

### Pattern 2: Styled Content Display

```javascript
fetch("http://localhost:3000/")
    .then((response) => response.text())
    .then((data) => {
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
4. **Auto-refresh** creates live, updating content
5. **Perfect combination:** Server creates data → fetch() gets data → innerHTML displays data
