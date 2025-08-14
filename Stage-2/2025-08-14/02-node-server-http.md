# Node.js HTTP Server

## What is a Node.js Server?

A **Node.js HTTP server** is a program that listens for requests from web browsers and responds with content. Think of it as your own mini-website that runs on your computer.

**Key Points:**

-   Runs JavaScript on your computer (not in the browser)
-   Can serve HTML, text, JSON, or files
-   Perfect for building web applications and APIs
-   Uses Node.js built-in `http` module

---

## Basic Server Setup

### Step 1: Create Your Server File

Create a new file called `server.js` and copy-paste this code:

```javascript
const http = require("http");

const server = http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "text/html" });
    res.end("<h1>Hello World!</h1><p>My first Node.js server is running!</p>");
});

const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});
```

### Step 2: Run Your Server

Open your terminal in the same folder as `server.js` and run:

```bash
node server.js
```

You should see: `Server running at http://localhost:3000/`

### Step 3: View in Browser

Open your web browser and go to: **http://localhost:3000/**

You'll see your "Hello World!" message!

### Step 4: Stop the Server

Press `Ctrl + C` (Windows/Linux) or `Cmd + C` (Mac) in the terminal to stop the server.

---

## Example Servers (Copy & Paste Ready)

### Example 1: Simple Text Response

```javascript
const http = require("http");

const server = http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "text/plain" });
    res.end("Welcome to my Node.js server!");
});

server.listen(3000, () => {
    console.log("Server running at http://localhost:3000/");
});
```

### Example 2: HTML Page with Styling

```javascript
const http = require("http");

const server = http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "text/html" });

    const html = `
    <!DOCTYPE html>
    <html>
    <head>
        <title>My Server Page</title>
        <style>
            body { font-family: Arial; background-color: #f0f8ff; padding: 20px; }
            h1 { color: #333; text-align: center; }
            .container { max-width: 600px; margin: 0 auto; }
            .info { background: white; padding: 20px; border-radius: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>My Node.js Server</h1>
            <div class="info">
                <p><strong>Server Status:</strong> Running perfectly!</p>
                <p><strong>Port:</strong> 3000</p>
                <p><strong>Time:</strong> ${new Date().toLocaleString()}</p>
                <p>This page is served by Node.js, not a regular HTML file!</p>
            </div>
        </div>
    </body>
    </html>
    `;

    res.end(html);
});

server.listen(3000, () => {
    console.log("Server running at http://localhost:3000/");
});
```

---

## How to Test Your Server

### Browser Testing

1. Start your server: `node server.js`
2. Open browser to `http://localhost:3000/`
3. You should see your content immediately
4. Try refreshing the page
5. For multiple routes example, try:
    - `http://localhost:3000/`

### Making Changes

1. Stop the server (`Ctrl+C`)
2. Edit your `server.js` file
3. Save the file
4. Restart: `node server.js`
5. Refresh your browser

### Make things a bit easier for yourself:

```bash
node --watch server.js
```

This will automatically restart the server whenever you save changes to `server.js`.

---

## Understanding the Code

```javascript
const http = require('http');           // Import Node.js HTTP module
const server = http.createServer(...);  // Create server
res.writeHead(200, {...});             // Set response status and headers
res.end('content');                     // Send response and close connection
server.listen(3000, ...);              // Start listening on port 3000
```

**Key Concepts:**

-   `require('http')` - Loads Node.js built-in HTTP module
-   `createServer()` - Creates a new HTTP server
-   `req` - Incoming request from browser
-   `res` - Response we send back to browser
-   `Content-Type` - Tells browser what type of content we're sending
-   `listen()` - Makes server start accepting connections

---

## Common Issues & Solutions

### Port Already in Use

```
Error: listen EADDRINUSE: address already in use :::3000
```

**Solution:** Use a different port (like 3001, 8080, etc.) or stop the other server.

### Server Won't Stop

**Solution:** Press `Ctrl+C` (or `Cmd+C` on Mac) in the terminal.

### Changes Don't Show

**Solution:** Stop server (`Ctrl+C`), then restart (`node server.js`).

### Can't Access from Browser

**Solution:** Make sure the server is running and use the correct URL: `http://localhost:3000/`
