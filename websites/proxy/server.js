var http = require('http'),
    httpProxy = require('http-proxy');

var proxy_www = new httpProxy.createProxyServer({
        target: {
            host: 'www',
            port: 8080
        }
});

var proxy_b2b = new httpProxy.createProxyServer({
        target: {
            host: 'b2b',
            port: 8080
        }
});

    http.createServer(function(req, res) {
        if (req.headers.host === 'http://www.wt2-3.ephec-ti.be') {
            proxy_www.proxyRequest(req, res);
            proxy_www.on('error', function(err, req, res) {
                if (err) console.log(err);
                res.writeHead(500);
                res.end('Oops, something went very wrong...');
            });
        } else if (req.headers.host === 'http://b2b.wt2-3.ephec-ti.be') {
            proxy_b2b.proxyRequest(req, res);
            proxy_b2b.on('error', function(err, req, res) {
                if (err) console.log(err);
                res.writeHead(500);
                res.end('Oops, something went very wrong...');
            });
        }
        else{
            res.set('Content-Type', 'text/plain');
            res.send('Veuillez introduire un GUID pour retrouver l\'image !');
        }
    }).listen(8080);
