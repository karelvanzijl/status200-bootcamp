class Database {
    constructor(args) {
        // Set properties
        this.connection = args.connection;
        this.response = args.response;
        this.httpCallback = args.httpCallback;
    }

    query(sql, args, moduleCallback) {
        // Run query
        this.connection.execute(sql, args, (err, results, fields) => {
            // Error handling
            if (err) {
                // Log error
                console.log(err);

                // Run callback
                this.httpCallback(this.response, 500, [
                    {
                        field: "result",
                        message: "Internal server error",
                    },
                ]);
                return;
            }

            // Run callback
            moduleCallback(results, fields);
            return;
        });
    }
}

export default Database;
