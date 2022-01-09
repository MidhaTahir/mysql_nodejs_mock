const db = require("../db/index");
const router = require("express").Router();

// get customers
router.get("/getcustomers", (req, res) => {
  let sql = "SELECT * FROM customer";
  let query = db.query(sql, (err, results) => {
    if (err) throw err;
    console.log(results);
    res.send(results);
  });
});

// get single customer
router.get("/getcustomer/:id", (req, res) => {
  let sql = `SELECT * FROM customer WHERE customer_id=${req.params.id}`;
  let query = db.query(sql, (err, result) => {
    if (err) throw err;
    console.log(result);
    res.send(result);
  });
});

router.post("/addcustomer", (req, res) => {
  let newCustomer = req.body;
  let sql = "INSERT INTO customer SET ?";
  let query = db.query(sql, newCustomer, (err, result) => {
    if (err) throw err;
    console.log(result);
    res.send("Customer added successfully");
  });
});

module.exports = router;
