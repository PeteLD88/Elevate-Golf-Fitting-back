require("dotenv").config();
const express = require("express");
const bodyParser = require("body-parser");

const userRoutes = require("./routes/user-routes");

const app = express();
app.use(bodyParser.json());

app.use("/users", userRoutes);

const port = process.env.PORT || 6969;
app.listen(port, () => console.log(`Listen on port ${port}...`));