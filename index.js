const express = require("express");
const cors = require("cors");
const app = express();

//middlewares
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

// router
app.get("/", (request, response) => {
  response.json({ info: "Api running" });
});

app.use("/seller", require("./routes/seller"));
app.use("/customer", require("./routes/customer"));


// server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () =>
  console.log(`Server started to run on port: ${process.env.PORT || "5000"}`)
);
