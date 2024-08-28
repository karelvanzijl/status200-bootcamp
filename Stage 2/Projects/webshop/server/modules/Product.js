class Product {
    constructor(args) {
        this.db = args.db;
        this.response = args.response;
        this.url = args.url;
        this.pathname = args.pathname;
        this.httpCallback = args.httpCallback;
    }

    routes() {
        if (this.pathname.startsWith("/api/products")) {
            if (this.pathname === "/api/products") {
                this.getProducts();
            } else if (this.pathname.startsWith("/api/products/")) {
                this.getProduct();
            }
        }
    }

    getProducts() {
        const sql = `SELECT id, name, price, image FROM products WHERE deleted_at IS NULL`;
        this.db.query(sql, [], (products) => {
            if (products.length === 0) {
                this.httpCallback(this.response, 404, {
                    message: "Products not found",
                });
                return;
            }
            this.httpCallback(this.response, 200, {
                products: products,
            });
            return;
        });
    }

    getProduct() {
        const productId = parseInt(this.pathname.split("/")[3]);
        if (isNaN(productId)) {
            this.httpCallback(this.response, 400, {
                message: "Product ID is not valid",
            });
            return;
        }
        const sql = `SELECT id, name, description, description FROM products WHERE id=? AND deleted_at IS NULL`;
        this.db.query(sql, [productId], (product) => {
            if (product.length === 0) {
                this.httpCallback(this.response, 404, {
                    message: "Product not found",
                });
                return;
            }
            this.httpCallback(this.response, 200, {
                product: product[0],
            });
            return;
        });
    }
}

export default Product;
