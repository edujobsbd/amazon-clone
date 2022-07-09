const express = require("express");
const authRouter = require("./routes/auth");
const mongoose = require("mongoose");

const PORT = 3000;

const app = express();

const DB =
  "mongodb+srv://mehedi:mehedi123@cluster0.bwsxo.mongodb.net/?retryWrites=true&w=majority";

app.use(express.json());
app.use(authRouter);

mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection Successfull");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, () => {
  console.log("connected at PORT " + PORT);
});
