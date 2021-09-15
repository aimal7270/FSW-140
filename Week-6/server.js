const express = require("express");
const mysql = require("mysql");

// connection to mySql database
const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "avengers",
});
// catch errors
db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log("connected to MySql database");
});

// select data from existing table
/*sqlRouter.get('/avengers',(req,res, next) =>{
    let sql = "SELECT * FROM avengers"
    db.query(sql, (err, rest) =>{
        if(err){
            throw(err,next)
        }
        console.log("result")
        res.send(result)
    })
}); */

// Setup Server express
const app = express();

//Create database
// app.get('./createDB', (req, res) =>{
//     let myQuery = " CREATE DATABASE CAPSTONE"
//     db.query(myQuery, (err, result) =>{
//         if(err){
//             throw(err)
//         }
//         console.log(result)
//         res.send("CAPSTONE Database Created sucssefully!")
//     })
// })

// Create table
app.get("/createTable", (req, res) => {
  let myQuery =
  "CREATE TABLE `avengers1` (`ID` int NOT NULL AUTO_INCREMENT,`title` varchar(75)  DEFAULT NULL, message  VARCHAR(250),PRIMARY KEY (`ID`))";
  db.query(myQuery, (err, result) => {
    if (err) {
      throw err;
    }
    console.log(result);
    res.send("avengers1 Table Created sucssefully!");
  });
});

// Insert Row
app.get("/insertRowOne",
  (req, res) => {
    let post = { title: "Line1", message: "Welcome to SQL First Row" };
    let myQuery = "INSERT  INTO avengers1 SET ?";
    //Run Command
    db.query(myQuery, post, (err, result) => {
      if (err) {
        throw err;
      }
      console.log(result);
      res.send("Row Created Sucessfully");
    });
  });

// SecondRow
app.get("/insertRow2",
  (req, res) => {
    let post = { title: "Line2", message: "SQL Second Row" };
    let myQuery = "INSERT INTO avengers1 SET ?";
    //Run Command
    db.query(myQuery, post, (err, result) => {
      if (err) {
        throw err;
      }
      console.log(result);
      res.send("Second Row Created Sucessfully");
    });
  });

// Display Rows
app.get("/displayRows",
  (req, res) => {
    let myQuery = "SELECT * FROM avengers";
    //Run Command
    db.query(myQuery, (err, result) => {
      if (err) {
        throw err;
      }
      console.log(result);
      res.send({result, msg:"Selected Query Displayed Sucessfully"});
    });
  });

// Update Query
app.get("./updateRow/:avengers1", (req, res) => {
  let newTitle = "Here is my Updated Title Column";
  let myQuery = `UPDATE avengers SET title ='${newTitle}' WHERE avengers1 = ${(req, params.cap)}`
  //Run Command
  db.query(myQuery, (err, result) => {
    if (err) {
      throw err;
    }
    console.log(result);
    res.send("Updated Sucessfully");
  });
});

// Delete Query
app.get("/deleteRow/:avengers1", (req, res) => {
  let myQuery = `DELETE FROM cap WHERE avengers1 = ${(req, params.cap)}`;
  //Run Command
  db.query(myQuery, (err, result) => {
    if (err) {
      throw err;
    }
    console.log(result);
    res.send("Deleted Sucessfully");
  });
});

app.listen("4000", () => {
  console.log("Connected to server 4000");
});