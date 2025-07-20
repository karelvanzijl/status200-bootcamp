// Import modules
import http from "http";
import mysql from "mysql2";
import Router from "./modules/Router.js";

// Create connection
const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    database: "bootcamp-webshop",
});

// Create server
const server = http.createServer((request, response) => {
    // Set CORS headers
    response.setHeader("Access-Control-Allow-Origin", "*");
    response.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
    response.setHeader("Access-Control-Allow-Headers", "Content-Type");

    // Connect to database
    connection.connect((err) => {
        if (err) {
            // Log error
            console.log("Error connecting to database");

            // Run callback
            httpCallback(response, 500, [
                { message: "Internal database error" },
            ]);
            return;
        }
        console.log("Connected to database");

        // Initialize router
        const router = new Router({
            connection: connection,
            request: request,
            response: response,
            httpCallback: httpCallback,
        });

        // Route request
        router.route();
    });
});

// HTTP callback
// Takes care of all responses
function httpCallback(response, status, results) {
    // Always respond with JSON
    response.writeHead(status, { "Content-Type": "application/json" });

    // Send results as JSON
    response.write(JSON.stringify({ status: status, ...results }));

    // End response
    response.end();
}

// Listen on port 3000
server.listen(3000);

console.log("Listening on port 3000");
