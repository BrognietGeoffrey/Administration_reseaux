var express = require('express');

const http = require('http');

var app = express();

app.get('/', function(req, res) {
    res.sendFile('/public/html/acceuil_intranet.html', {root: __dirname });
})

.use('/', express.static('public'))

.use(function(req, res, next){
    res.setHeader('Content-Type', 'text/plain');
    res.status(404).send('Page introuvable !');
});


app.listen(8080);
