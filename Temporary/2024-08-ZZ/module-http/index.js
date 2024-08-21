import http from "http";

const server = http.createServer((request, response) => {
    if (request.url === "/") {
        response.write("Hello World");
        response.end();
    }

    if (request.url === "/api/products") {
        /*
            Database query that gets all the products

            SELECT * FROM products;
            
            Lets assume our mysql2 package return the following object as the query result
        */
        const result = [
            {
                id: 1,
                name: "Product 1",
            },
            {
                id: 2,
                name: "Product 2",
            },
            {
                id: 3,
                name: "Product 3",
            },
        ];

        /*
            Now we're going to send back this result using a JSON string
            
            Remember: JSON.stringify()
        */
        const response = JSON.stringify(result);

        response.write(response);
        response.end();
    }
});

server.listen(3000);

console.log("Listening on port 3000...");
