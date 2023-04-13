// import mysql2
// using mysql = mysql2
const mysql = require("mysql2");
const express = require("express");
const { CharacterData } = require("./character");
const { movesData } = require("./moves");

require("dotenv").config();

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

// const tableName = ["characters", "moves"];
// pool.query("SELECT * FROM characters;",  function (err, results, fields){
//         if (err){
//             console.log("query failed");
//             console.error(err);
//             return;
//         }
//         console.log(results);
// });

    
// function InsertCharacterToDB(character){
//     ///Works but has an extra `` on strings e.g `Ramlethal` instead of Ramlethal
//     ///There could be a more efficient way
//     pool.query('INSERT IGNORE INTO characters VALUES ("??");', 
//     [///Character data
//         character.name
//     ],
//         function (err, result) {
//             if (err) throw err;
//             console.log(character.name, " has been placed to the Database");
//             console.log(character);
//         }
//     );
// };
        
function InsertMovesToDB(move){
    pool.query('INSERT IGNORE INTO moves VALUES("??", ?, "??", ?, "??", ?, ?, "??");', 
    [///Move Data
    move.moveID, 
    move.notation, 
    move.damage, 
    move.guard, 
    move.startup, 
    move.active, 
    move.recovery, 
    move.on_block, 
    move.invuln
], 
function (err, result) {
    if (err) throw err;
    console.log(move.moveID, " has been placed to the Database");
    console.log(move);
}  
)};

////Sample Data Adding


///Sample Move Data, is not actual data from game
    // movesData.moveID = '5P';
    // movesData.notation = '5P';
    // movesData.damage = 10;
    // movesData.guard = 'All';
    // movesData.startup = 10;
    // movesData.active =  3;
    // movesData.recovery = 3;
    // movesData.on_block =  0;
    // movesData.invuln = null;
    // InsertMovesToDB(movesData);

function sendPunishList(character, startup){
    pool.query('SELECT moveId, notation FROM ?? WHERE startup <= ?', [character, startup], function (err, results, fields){
        if (err){
            console.log("query failed");
            console.error(err);
            return;
        }
        console.log(results);
        return results;
    })
};

// sendPunishList('anji', 10);

app.get("/punish", (req, res) => {
    res.send(sendPunishList(req.params.character, req.params.startup));
});

app.listen(process.env.PORT, function(){
    console.log("Server now listening");
});