const mysql = require("mysql2");

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    database: "bootcamp-school",
});

const arr = ["A", "B", "C", "D"];

const obj = { name: "Karel", age: 49 };

console.log("Arr :", typeof arr);
console.log("Obj :", typeof obj);
