var express = require('express');

const http = require('http');
var mariadb = require('mariadb/callback');

var app = express();
var database = express.Router();

const PATH = __dirname + '/public/';

app.get('/api/tools', (req, res) => {
  const conn = mariadb.createConnection({host:'172.20.0.100', user:'root', password:"dataisneeded", database:"b2b"});
  conn.query("SELECT * FROM Outils", (err, rows) => {
    if (err) {
      throw err;
    }
    conn.end();
    res.set('Content-Type', 'application/json');
    res.send(rows);
  });
});

app.get('/', function(req, res) {
    res.sendFile('/public/html/acceuil_intranet.html', {root: __dirname });
})

.use('/', express.static('public'))

.use(function(req, res, next){
    res.setHeader('Content-Type', 'text/plain');
    res.status(404).send('Page introuvable !');
});


app.listen(8080);
