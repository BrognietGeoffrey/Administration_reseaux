var express = require('express');

const http = require('http');
var mariadb = require('mariadb/callback');

var app = express();
var database = express.Router();

const conn = mariadb.createConnection({host:'database', user:'root', password:"dataisneeded", database:"b2b"});

const PATH = __dirname + '/public/';

app.get('/', function(req, res) {
    res.sendFile('/public/html/acceuil.html', {root: __dirname });
});

app.get('/api/vendors', (req, res) => {
  conn.query("SELECT * FROM Vendeurs", (err, rows) => {
    if (err) {
      throw err;
    }
    res.set('Content-Type', 'application/json');
    res.send(rows);
  });
});

app.post('/api/add_vendor', (req, res) => {
  if (req.query.last_name === undefined || req.query.first_name === undefined) {
    res.set('Content-Type', 'text/plain');
    res.send("error the vendor not be added");
  }
  else{
    conn.query("INSERT INTO Vendeurs (first_name, last_name) values (?, ?);",[req.query.first_name, req.query.last_name] ,(err, rows) => {
      if (err) {
        throw err;
      }
      res.set('Content-Type', 'text/plain');
      res.send("Le vendeur " + req.query.first_name + " " + req.query.last_name + " a bien été ajouté");
    });
  }
})

.use('/', express.static('public'))

.use(function(req, res, next){
    res.setHeader('Content-Type', 'text/plain');
    res.status(404).send('Page introuvable !');
});


app.listen(8080);
