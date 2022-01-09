const mysql = require("mysql");

//Create connection
const db = mysql.createConnection({
  host: process.env.host,
  port: process.env.PORT,
  user: process.env.USER,
  password: process.env.PASSWORD,
  database: process.env.DATABASE,
});

//Connect
db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log("MySQL Connected");
});

module.exports = db;
