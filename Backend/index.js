// import mysql2
// using mysql = mysql2
const mysql = require("mysql2");
const express = require("express");
const { CharacterData } = require("./character");

require("dotenv").config();

// const connection = mysql.createConnection({
//     host: "localhost",
//     user: "root",
//     password: "puffythepuff",
//     database: "world"
// });

const pool = mysql.createPool({
    host: process.env.SQL_HOST,
    user: "root",
    password: process.env.SQL_PASSWORD,
    database: process.env.SQL_DB,
     connectionLimit: 10,
     connectTimeout: 5000    //ms
    });

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

const tableName = ["characters", "moves"];
pool.query("SELECT * FROM characters;",  function (err, results, fields){
        if (err){
            console.log("query failed");
            console.error(err);
            return;
        }
        console.log(results);
    });

    
    function insertCharacterToDB(character){
        ///Works but has an extra `` on strings e.g `Ramlethal` instead of Ramlethal
        ///There could be a more efficient way
        pool.query(`INSERT IGNORE INTO characters VALUES (??,?, ?, ?, ??, ??, ? , ??, ?, ?);`, [character.name, character.defense, character.guts, character.prejump, character.weight, character.backdash, character.forward_dash, character.unique_movement,character.RISC_multiplier, character.movement_tension_gain],    function (err, result) {
            if (err) throw err;
            console.log(character.name, " has been placed to the Database");
        });
        };
        
        CharacterData.name = 'Ramlethal';
        CharacterData.defense = 100;
        CharacterData.guts = 2;
        CharacterData.prejump = 2;
        CharacterData.weight = "Light";
        CharacterData.backdash = 10;
        CharacterData.forward_dash = 10;
        CharacterData.unique_movement = null;
        CharacterData.RISC_multiplier = 1;
        CharacterData.movement_tension_gain = 1;
        insertCharacterToDB(CharacterData);

app.get("/", (req, res) => {
    res.send("test get");
});

app.listen(process.env.PORT, function(){
    console.log("Server now listening");
});