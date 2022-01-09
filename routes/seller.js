const db = require("../db/index");
const router = require("express").Router();

// get sellers
router.get("/getsellers", (req, res) => {
  let sql = "SELECT * FROM seller";
  let query = db.query(sql, (err, results) => {
    if (err) throw err;
    console.log(results);
    res.send(results);
  });
});

// get single seller
router.get("/getseller/:id", (req, res) => {
  let sql = `SELECT * FROM seller WHERE seller_id=${req.params.id}`;
  let query = db.query(sql, (err, result) => {
    if (err) throw err;
    console.log(result);
    res.send(result);
  });
});

router.post("/addseller", (req, res) => {
  let newSeller = req.body;
  let sql = "INSERT INTO seller SET ?";
  let query = db.query(sql, newSeller, (err, result) => {
    if (err) throw err;
    console.log(result);
    res.send("Seller added successfully");
  });
});

module.exports = router;
