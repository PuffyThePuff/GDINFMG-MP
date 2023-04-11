// import mysql2
// using mysql = mysql2
const mysql = require("mysql2");
const express = require("express");
require("dotenv").config();

// const connection = mysql.createConnection({
//     host: "localhost",
//     user: "root",
//     password: "puffythepuff",
//     database: "world"
// });

// const pool = mysql.createPool({
//     host: process.env.SQL_HOST,
//     user: "root",
//     password: process.env.SQL_PASSWORD,
//     database: process.env.SQL_DB,
//     connectionLimit: 10,
//     connectTimeout: 5000    //ms
// });

// const columns = ["name", "surfaceArea"];
// pool.query("SELECT ?? FROM country LIMIT ?;", [columns, 5], function (err, results, fields){
//     if (err){
//         console.log("query failed");
//         console.error(err);
//         return;
//     }
//     console.log(results);
// });

// connection.end();

// const example = require("./sampleModule.js");

// console.log(example.myPerson);
// example.myFunction();

const app = express();

app.get("/", (req, res) => {
    res.send("test get");
});

app.listen(process.env.PORT, function(){
    console.log("Server now listening");
});