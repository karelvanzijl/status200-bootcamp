import http from "http";

const server = http.createServer((request, response) => {
    if (request.url === "/") {
        response.write("Hello World");
        response.end();
    }

    if (request.url === "/api/products") {
        response.write(
            JSON.stringify([
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
            ])
        );
        response.end();
    }
});

server.listen(3000);

console.log("Listening on port 3000...");
