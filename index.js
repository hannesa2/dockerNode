"use strict"

const express = require('express');
let app = express();

app.get("/", (req, res) =>
{
   res.status(200).send("Hello");
});

app.listen(3000, () => {
   console.log(process.version)
   console.log("")
   var fs = require('fs');
   console.log(fs.readFileSync("/etc/hosts", "utf8"));
   console.log("")
   console.log("I'm listening.")
});

