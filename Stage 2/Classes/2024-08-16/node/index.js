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

const test = {
    name: "John",
    age: 25,
    city: "New York",
    greet: function () {
        console.log("Hello 1");
    },
};

test.greet();

const test2 = [
    () => {
        console.log("Hello 2");
    },
];

test2[0]();

let person = {
    name: "John",
    age: 30,
    isStudent: true,
};
console.log(person.name); // Outputs "John"
console.log(person["name"]); // Outputs "John"
