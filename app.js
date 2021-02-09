const express = require("express");
const app = express();

app.get("/", (req, res) => res.send({ version: process.version }));
// app.get("/", (req, res) => res.send("nowa zmiana "));

// jeśli chcesz w powyższej linii coś zmienić i zobaczyć do na obrazie to będziesz musiał to przebudować i uruchomić od nowa (zobacz readme.md)

app.listen(8080, () => console.log("Server is up!"));

// to jest przykładowy obraz który stworzy apkę w node express
