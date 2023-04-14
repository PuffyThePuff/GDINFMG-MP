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

const app = express();

function getMovelist(character){
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM ??;', [character], function (err, results, fields){
            if (err){
                console.log("query failed");
                console.error(err);
                return;
            }
            resolve(results);
        })
    })
}

function createMoveData(character, move){
    move = JSON.parse(move);
    move.moveID.replace(/\'/g, ""); 
    move.notation.replace(/\'/g, "");
    move.guard.replace(/\'/g, "");
    if (move.invuln){
        move.invuln.replace(/\'/g, "");;
    }
    pool.query('INSERT INTO ?? (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln) values ROW ("??", "??", ?, "??", ?, "??", ?, ?, "??")',
    [character,
        move.moveID, 
        move.notation, 
        move.damage, 
        move.guard, 
        move.startup, 
        move.active, 
        move.recovery, 
        move.on_block, 
        move.invuln],
        function (err, results, fields){
            if (err){
                console.log("query failed");
                console.error(err);
                return;
            }
            console.log(results);
        })
}

function sendPunishList(character, on_block){
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM ?? WHERE startup <= ?', [character, on_block], function (err, results, fields){
            if (err){
                console.log("query failed");
                console.error(err);
                return;
            }
            resolve(results);
            console.log(results);
        })
    })
};

function searchFastestMove(character){
    return new Promise((resolve, reject) => {
        pool.query('SELECT moveID, startup FROM ?? WHERE startup = (SELECT MIN(startup) FROM ??);', [character, character], function (err, results, fields){
            if (err){
                console.log("query failed");
                console.error(err);
                return;
            }
            resolve(results);
            console.log(results);
        })
    })
}

function updateMove(character, move){
    move = JSON.parse(move);
    move.moveID.replace(/\'/g, ""); 
    move.notation.replace(/\'/g, "");
    move.guard.replace(/\'/g, "");
    if (move.invuln){
        move.invuln.replace(/\'/g, "");;
    }
    pool.query('UPDATE ?? SET notation = ??, damage = ?, guard = ??, startup = ?, active = ??, recovery = ?, on_block = ?, invuln = ?? WHERE moveID = ??;'),
    [character, 
        move.notation, 
        move.damage, 
        move.guard, 
        move.startup, 
        move.active, 
        move.recovery, 
        move.on_block, 
        move.invuln,
        move.moveID],
        function (err, results, fields){
            if (err){
                console.log("query failed");
                console.error(err);
                return;
            }
            console.log(results);
        }
}

function deleteMove(character, moveID){
    pool.query("DELETE FROM ?? WHERE moveID = ??;", [character, moveID], function (err, results, fields){
        if (err){
            console.log("query failed");
            console.error(err);
            return;
        }
        resolve(results);
        console.log(results);
    });
}

app.get("/movelist/:character", async (req, res) => {
    const result = await getMovelist(req.params.character)
    let movelist = {};
    movelist = result;
    res.send(movelist);
});

app.get("/createMove/:character/:data", (req, res) => {
    const move = JSON.parse(req.data);
    createMoveData(req.character, move);
    res.send("Move ?? created for ??", [move.moveID, req.character]);
});

app.get("/punish/:character/:id", async (req, res) => {
    const result = await sendPunishList(req.params.character, req.params.id)
    let punishList = {};
    punishList = result;
    console.log(punishList)
    res.send(punishList);
});

app.get("/fastest/:character", async (req, res) => {
    const result = await searchFastestMove(req.params.character);
    let fastest = {};
    fastest = result;
    console.log(fastest);
    res.send(fastest);
})

app.get("/update/:character/:id", async (req, res) => {
    const move = JSON.parse(req.params.move);
    updateMove(req.character, move);
    res.send("Move ?? update for ??", [move.moveID, req.character]);    
})

app.get("/delete/:character/:id", async (req, res) => {
    deleteMove(req.character, req.id);
    res.send("Move ?? deleted for ??", [req.id, req.character]);
})

app.listen(process.env.PORT, function(){
    console.log("Server now listening");
});

//sendPunishList('anji', 10);
//createMoveData("anji", '{ "moveID": "6D", "notation": "6D", "damage": 31, "guard": "Low", "startup": 10, "active": "3", "recovery": 22, "on_block": -11, "invuln": null }');