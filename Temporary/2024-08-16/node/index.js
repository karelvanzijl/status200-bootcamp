const mysql = require("mysql2");

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    database: "bootcamp-school",
});

connection.query("SELECT * FROM Students", (err, results) => {
    if (err) {
        console.error(err);
        return;
    }

    results.forEach(function (student, index) {
        console.log(
            "ID: " +
                student.StudentID +
                " ~ " +
                student.FirstName +
                " " +
                student.LastName
        );
    });

    connection.end();
});
