import http from "http";
import { URL } from "url";

const products = [
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

const server = http.createServer((request, response) => {
    // Get path
    const url = new URL(request.url, `http://${request.headers.host}`);
    const pathname = url.pathname;

    if (pathname === "/api/products") {
        const output = JSON.stringify(products);
        response.write(output);
        response.end();
    } else if (pathname.startsWith("/api/products")) {
        const productId = parseInt(pathname.split("/")[3]);
        const product = products.find((product) => product.id === productId);

        if (product) {
            // response.writeHead(200, { "Content-Type": "application/json" });
            response.write(JSON.stringify(product));
            response.end();
        } else {
            response.statusCode = 404;
            response.write("Product not found");
            response.end();
        }
    } else {
        response.write("Hello World");
        response.end();
    }
});

server.listen(3000);

console.log("Listening on port 3000...");
