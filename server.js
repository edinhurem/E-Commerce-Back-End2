const express = require("express");
const routes = require("./routes");
// import sequelize connection

const app = express();
const PORT = process.env.PORT || 3001;

DB_USER = "root";
DB_PW = "";
DB_NAME = "ecommerce_db";

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(routes);

// sync sequelize models to the database, then turn on the server
app.listen(PORT, () => {
  console.log(`App listening on port ${PORT}!`);
});
