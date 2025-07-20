class User {
    constructor(db, response, url, pathname, httpCallback) {
        this.db = db;
        this.response = response;
        this.url = url;
        this.pathname = pathname;
        this.httpCallback = httpCallback;
    }

    create(args) {
        const sql =
            "INSERT INTO users (email, password, name) VALUES (?, ?, ?)";
        this.db.query(sql, args, () => {
            this.httpCallback(this.response, 201, [
                {
                    field: "result",
                    message: "User created",
                },
            ]);
            return;
        });
    }
}

export default User;
