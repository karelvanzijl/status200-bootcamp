// Implement the mysql2 package
const mysql = require("mysql2");

// Create the connection to database
const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    database: "bootcamp",
});

// A simple SELECT query
connection.query("SELECT * FROM `customer`", function (err, results, fields) {
    // results contains rows returned by server
    console.log(results);
    // fields contains extra meta data about results, if available
    console.log(fields);
});
