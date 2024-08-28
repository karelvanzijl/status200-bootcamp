class Category {
    constructor(args) {
        this.db = args.db;
        this.response = args.response;
        this.url = args.url;
        this.pathname = args.pathname;
        this.httpCallback = args.httpCallback;
    }

    routes() {
        if (this.pathname.startsWith("/api/categories")) {
            if (this.pathname === "/api/categories") {
                this.getCategories();
            } else if (this.pathname.startsWith("/api/categories/")) {
                this.getCategory();
            }
        }
    }

    getCategories() {
        const sql = `SELECT id, name, image FROM categories WHERE deleted_at IS NULL`;
        this.db.query(sql, [], (categories) => {
            if (categories.length === 0) {
                this.httpCallback(this.response, 404, {
                    message: "Categories not found",
                });
                return;
            }
            this.httpCallback(this.response, 200, {
                categories: categories,
            });
            return;
        });
    }

    getCategory() {
        const categoryId = parseInt(this.pathname.split("/")[3]);
        if (isNaN(categoryId)) {
            this.httpCallback(this.response, 400, {
                message: "Category ID is not valid",
            });
            return;
        }
        const sql = `SELECT id, name, image, description FROM categories WHERE id=? AND deleted_at IS NULL`;
        this.db.query(sql, [categoryId], (category) => {
            if (category.length === 0) {
                this.httpCallback(this.response, 404, {
                    message: "Category not found",
                });
                return;
            }

            // If the pathname does not end with "/products", return the category
            if (!this.pathname.endsWith("/products")) {
                this.httpCallback(this.response, 200, {
                    category: category[0],
                });
                return;
            }
            // If the pathname ends with "/products", return the category products
            const sql = `SELECT p.id, p.name, p.price, p.image FROM products p JOIN categories c ON p.category_id=c.id WHERE c.id=? AND p.deleted_at IS NULL`;
            this.db.query(sql, [categoryId], (products) => {
                if (products.length === 0) {
                    this.httpCallback(this.response, 404, {
                        message: "Category Products not found",
                    });
                    return;
                }
                this.httpCallback(this.response, 200, {
                    category: category[0],
                    products: products,
                });
                return;
            });
        });
    }
}

export default Category;
