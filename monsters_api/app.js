const express = require("express");
const app = express();
const pool = require("./db");

app.get("/monsters", (request, response, next) => {
  pool.query("SELECT * FROM monsters ORDER BY id ASC", (err, res) => {
    if (err) return next(err);

    response.json(res.rows);
  });
});

app.use((err, req, res, next) => {
  res.json(err);
});

module.exports = app;
