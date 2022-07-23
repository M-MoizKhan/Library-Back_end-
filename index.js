var express = require("express");
var mysql = require("mysql");
var cors = require("cors");

var app = express();
app.use(cors());

var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "library",
});

connection.connect();
console.log("Connect");

app.get("/getstudents", async function(req, res) {
    res.setHeader("Access-Control-Allow-Origin", "*");
    connection.query("SELECT * FROM students", function(err, result) {
        if (err) throw err;
        res.send(result);
    });
});

app.get("/getbooks", async function(req, res) {
    res.setHeader("Access-Control-Allow-Origin", "*");
    connection.query("SELECT * FROM books", function(err, result) {
        if (err) throw err;
        res.send(result);
    });
});

var server = app.listen(8081, function() {
    var host = server.address().address;
    var port = server.address().port;
    console.log("Example app listening at http://%s:%s", host, port);
});