const express = require("express")
const sqlRouter = express.Router()
const mysql =require("mysql")



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
  sqlRouter.get('/data',(req,res, next) =>{
      let sql = "SELECT * FROM avengers"
      db.query(sql, (err, result) =>{
          if(err){
              throw(err,next)
          }
          console.log("result")
          res.send(result)
      })
  }); 

  module.exports = sqlRouter