import http from "http";

const categories = [
    { id: 1, name: "Electronics" },
    { id: 2, name: "Books" },
    { id: 3, name: "Clothing" },
];

const products = {
    1: [
        { id: 1, name: "Smartphone" },
        { id: 2, name: "Laptop" },
        { id: 3, name: "Headphones" },
    ],
    2: [
        { id: 4, name: "Fiction Book" },
        { id: 5, name: "Non-fiction Book" },
    ],
    3: [
        { id: 6, name: "T-shirt" },
        { id: 7, name: "Jeans" },
    ],
};

const server = http.createServer((request, response) => {
    // Set CORS headers
    response.setHeader("Access-Control-Allow-Origin", "*");
    response.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
    response.setHeader("Access-Control-Allow-Headers", "Content-Type");

    const url = new URL(request.url, `http://${request.headers.host}`);
    const pathname = url.pathname;

    console.log(pathname);

    if (request.method === "GET" && pathname === "/api/categories") {
        response.writeHead(200, { "Content-Type": "application/json" });
        response.write(JSON.stringify(categories));
        response.end();
    } else if (
        request.method === "GET" &&
        pathname.startsWith("/api/categories/")
    ) {
        const categoryId = parseInt(pathname.split("/")[3]);

        if (products[categoryId]) {
            response.writeHead(200, { "Content-Type": "application/json" });
            response.write(JSON.stringify(products[categoryId]));
        } else {
            response.statusCode = 404;
            response.write("Category not found");
        }
        response.end();
    } else if (
        request.method === "GET" &&
        pathname.startsWith("/api/products/")
    ) {
        const productId = parseInt(pathname.split("/")[3]);

        const product = Object.values(products)
            .flat()
            .find((p) => p.id === productId);

        if (product) {
            response.writeHead(200, { "Content-Type": "application/json" });
            response.write(JSON.stringify(product));
        } else {
            response.statusCode = 404;
            response.write("Product not found");
        }
        response.end();
    } else {
        response.statusCode = 404;
        response.write("Not Found");
        response.end();
    }
});

server.listen(3000);

console.log("Listening on port 3000...");
