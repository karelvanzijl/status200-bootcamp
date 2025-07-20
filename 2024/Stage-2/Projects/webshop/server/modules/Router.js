import { URL } from "url";
import Auth from "./Auth.js";
import Category from "./Category.js";
import Database from "./Database.js";
import Order from "./Order.js";
import Product from "./Product.js";

const routes = [
    // Auth routes
    "/api/auth/register",
    "/api/auth/login",
    "/api/auth/logout",

    // Category routes
    "/api/categories",

    // Products routes
    "/api/products",

    // Order routes
    "/api/orders/pdf",
];

// Replace {id} with a regex pattern to match any number
const routePatterns = routes.map((route) => {
    // Adjust if {id} can be something other than digits
    const pattern = route.replace(/{id}/g, "\\d+");

    // Return a regex pattern that matches the entire string
    return new RegExp(`^${pattern}$`);
});

class Router {
    constructor(args) {
        // Initialize properties
        this.connection = args.connection;
        this.request = args.request;
        this.response = args.response;
        this.httpCallback = args.httpCallback;

        // Get URL
        this.url = this.getUrl();

        // Get pathname
        this.pathname = this.getPathname();

        // Create Database instance
        this.db = new Database(args);

        // Add key-value pairs to args
        args.db = this.db;
        args.url = this.url;
        args.pathname = this.pathname;

        // Create Auth instance
        this.auth = new Auth(args);

        // Create Category instance
        this.category = new Category(args);

        // Create Order instance
        this.order = new Order(args);

        // Create Product instance
        this.product = new Product(args);
    }

    route() {
        if (this.validatePath()) {
            this.auth.routes();
            this.category.routes();
            this.product.routes();
            this.order.routes();
        } else {
            this.httpCallback(this.response, 404, [{ message: "Not found" }]);
        }
    }

    getUrl() {
        return new URL(this.request.url, `http://${this.request.headers.host}`);
    }

    getPathname() {
        return this.url.pathname;
    }

    validatePath() {
        return routePatterns.some((pattern) => pattern.test(this.pathname));
    }
}

export default Router;
