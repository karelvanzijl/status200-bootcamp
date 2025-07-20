class Category {
    constructor(args) {
        this.db = args.db;
        this.response = args.response;
        this.url = args.url;
        this.pathname = args.pathname;
        this.httpCallback = args.httpCallback;
    }

    routes() {
        if (this.pathname === "/api/categories") {
            this.getCategories();
        }
    }

    getCategories() {
        // Get category_id from URL
        const category = parseInt(this.url.searchParams.get("category"));

        // Create SQL query
        let sql = `SELECT id, name, description, image FROM categories WHERE deleted_at IS NULL`;

        // If category_id is provided, add it to the SQL query
        if (category) {
            sql += ` AND id = ${category}`;
        }

        // Fetch categories from database
        this.db.query(sql, [], (categories) => {
            if (categories.length === 0) {
                this.httpCallback(this.response, 404, {
                    message: "Category data not found",
                });
                return;
            }
            this.httpCallback(this.response, 200, {
                categories: categories,
            });
            return;
        });
    }
}

export default Category;
