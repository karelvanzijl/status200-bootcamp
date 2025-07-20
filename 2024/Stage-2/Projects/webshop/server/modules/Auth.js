import validator from "validator";
import User from "./User.js";

class Auth {
    constructor(args) {
        this.db = args.db;
        this.response = args.response;
        this.url = args.url;
        this.pathname = args.pathname;
        this.httpCallback = args.httpCallback;
    }

    routes() {
        if (this.pathname.startsWith("/api/auth")) {
            if (this.pathname === "/api/auth/register") {
                this.register();
            } else if (this.pathname === "/api/auth/login") {
                this.login();
            } else if (this.pathname === "/api/auth/logout") {
                this.logout();
            }
        }
    }

    login() {
        // Get email and password from URL
        const email = this.url.searchParams.get("email");
        const password = this.url.searchParams.get("password");

        // Validate email and password
        const errors = this.validateLoginInput(email, password);

        // If there are errors
        if (errors.length > 0) {
            this.httpCallback(this.response, 422, {
                errors: errors,
            });
            return;
        }

        // Check if user exists in database
        const sql = `SELECT id, email, name FROM users WHERE email=? AND password=?`;
        this.db.query(sql, [email.toLowerCase(), password], (user) => {
            // If user does not exist
            if (user.length === 0) {
                this.httpCallback(this.response, 401, {
                    errors: [
                        {
                            field: "result",
                            message: "Invalid email or password",
                        },
                    ],
                });
                return;
            }
            this.httpCallback(this.response, 200, {
                user: user[0],
            });
            return;
        });
    }

    register() {
        // Get email, password and name from URL
        const name = this.url.searchParams.get("name");
        const email = this.url.searchParams.get("email");
        const password = this.url.searchParams.get("password");
        const confirmPassword = this.url.searchParams.get("confirmPassword");

        // Validate email, password and name
        const errors = this.validateRegistrationInput(
            name,
            email,
            password,
            confirmPassword
        );

        // If there are errors
        if (errors.length > 0) {
            this.httpCallback(this.response, 422, {
                errors: errors,
            });
            return;
        }

        // Check if this email is already registered
        const sql = `SELECT id FROM users WHERE email=?`;
        this.db.query(sql, [email.toLowerCase()], (results) => {
            // If email is already registered
            if (results.length > 0) {
                this.httpCallback(this.response, 422, {
                    errors: [
                        {
                            field: "email",
                            message: "Email already registered",
                        },
                    ],
                });
                return;
            }

            // Create user object
            this.user = new User(
                this.db,
                this.response,
                this.url,
                this.pathname,
                this.httpCallback
            );

            // Create user
            this.user.create([email.toLowerCase(), password, name]);
        });
    }

    validateLoginInput(email, password) {
        // Array to store errors
        const errors = [];

        // Validate email is provided
        if (!email) {
            errors.push({
                field: "email",
                message: "Email is required",
            });
        }

        // Validate email is an email
        if (email && !validator.isEmail(email)) {
            errors.push({
                field: "email",
                message: "Email is not valid",
            });
        }

        // Validate password is provided
        if (!password) {
            errors.push({
                field: "password",
                message: "Password is required",
            });
        }

        // Return errors
        return errors;
    }

    validateRegistrationInput(name, email, password, confirmPassword) {
        // Array to store errors
        const errros = [];

        // Validate name is provided
        if (!name) {
            errros.push({
                field: "name",
                message: "Name is required",
            });
        }
        // Valdite name is at least 2 characters
        if (name && name.length < 2) {
            errros.push({
                field: "name",
                message: "Name must be at least 2 characters",
            });
        }

        // Validate name is
        if (name && !validator.isAlpha(name, "en-US", { ignore: " -" })) {
            errros.push({
                field: "name",
                message: "Name can only contain letters, spaces and hyphens",
            });
        }

        // Validate email is provided
        if (!email) {
            errros.push({
                field: "email",
                message: "Email is required",
            });
        }

        // Validate email is an email
        if (email && !validator.isEmail(email)) {
            errros.push({
                field: "email",
                message: "Email is not valid",
            });
        }

        // Validate password is provided
        if (!password) {
            errros.push({
                field: "password",
                message: "Password is required",
            });
        }

        // Validate password does not contain spaces
        if (password && password.includes(" ")) {
            errros.push({
                field: "password",
                message: "Password cannot contain spaces",
            });
        }

        // Validate password min length is 4
        if (password && password.length < 4) {
            errros.push({
                field: "password",
                message: "Password must be at least 4 characters",
            });
        }

        // Validate password confirmation is provided
        if (!confirmPassword) {
            errros.push({
                field: "confirmPassword",
                message: "Password confirmation  is required",
            });
        }

        // Validate password confirmation matches password
        if (confirmPassword && confirmPassword.includes(" ")) {
            errros.push({
                field: "confirmPassword",
                message: "Password confirmation cannot contain spaces",
            });
        }

        // Validate password confirmation min length is 4
        if (confirmPassword && confirmPassword.length < 4) {
            errros.push({
                field: "confirmPassword",
                message: "Password confirmation must be at least 4 characters",
            });
        }

        // Validate password and password confirmation match
        if (password && confirmPassword && password !== confirmPassword) {
            errros.push({
                field: "confirmPassword",
                message: "Passwords do not match",
            });
        }

        // Return errors
        return errros;
    }
}

export default Auth;
