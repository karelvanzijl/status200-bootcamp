import http from "http";

const server = http.createServer((request, response) => {
    // Set CORS headers
    response.setHeader("Access-Control-Allow-Origin", "*");
    response.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
    response.setHeader("Access-Control-Allow-Headers", "Content-Type");

    // Get path
    const url = new URL(request.url, `http://${request.headers.host}`);
    const pathname = url.pathname;

    /* 
        Find ID in path
     
        Example: http://localhost:port/api/categories/2/products
    
        Code: 
        
        - parseInt(pathname.split("/")[3]);
    */

    /* 
        Find ID in URL Query Parameters
     
        Example": http://localhost:port/something?name=John&age=30
    
        Code:

        - const parsedUrl = url.parse(req.url, true);
        - const queryParams = parsedUrl.query; 
        - console.log(queryParams); 
    */

    // Route - GET welcome
    if (request.url === "/") {
        // Response
        response.write("Welcome to my API");

        // Close response
        response.end();
    }

    // Route - GET all categories
    if (pathname.startsWith("/api/categories/")) {
        // Tell client response is JSON string
        response.writeHead(200, { "Content-Type": "application/json" });

        // Response
        response.write(
            JSON.stringify([
                {
                    id: 1,
                    name: "Category 1",
                },
                {
                    id: 2,
                    name: "Category 2",
                },
                {
                    id: 3,
                    name: "Category 3",
                },
            ])
        );

        // Close response
        response.end();
    }

    /*
        Example of an error response
    */
    // response.statusCode = 404;
    // response.write("Not Found");
    // response.end();
});

server.listen(3000);

console.log("Listening on port 3000...");
