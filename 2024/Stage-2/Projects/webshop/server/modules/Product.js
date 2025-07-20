class Product {
    constructor(args) {
        this.db = args.db;
        this.response = args.response;
        this.url = args.url;
        this.pathname = args.pathname;
        this.httpCallback = args.httpCallback;
    }

    routes() {
        if (this.pathname === "/api/products") {
            this.getProducts();
        }
    }

    getProducts() {
        // Get category_id from URL
        const productsID = parseInt(this.url.searchParams.get("product"));

        // Get category_id from URL
        const categoryID = parseInt(this.url.searchParams.get("category"));

        // Get search query from URL
        const search = this.url.searchParams.get("search");

        // Create SQL query
        let sql = `SELECT id, name, price, description, image FROM products WHERE deleted_at IS NULL`;

        // If category_id is provided, add it to the SQL query
        if (productsID) {
            sql += ` AND id = ${productsID}`;
        }

        // If category_id is provided, add it to the SQL query
        if (categoryID) {
            sql += ` AND category_id = ${categoryID}`;
        }

        // If search query is provided, add it to the SQL query
        if (search) {
            sql += ` AND name LIKE '%${search}%'`;
        }

        // Fetch products from database
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
}

export default Product;
