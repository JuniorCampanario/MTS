var https = require("https"),
    url = require("url"),
    path = require("path"),
    fs = require("fs")
    port = process.argv[2] || 443;

const options = {
    key: fs.readFileSync('certificado.key'),
    cert: fs.readFileSync('certificado.pem')
};

https.createServer(options, function(request, response) {

    var uri = url.parse(request.url).pathname, filename = path.join(process.cwd(), uri);
  
    var contentTypesByExtension = {
      '.html': "text/html",
      '.css':  "text/css",
      '.js':   "text/javascript"
    };
  
    fs.exists(filename, function(exists) {
      if(!exists) {
        response.writeHead(404, {"Content-Type": "text/plain"});
        response.write("404 Not Found\n");
        response.end();
        return;
      }
  
      if (fs.statSync(filename).isDirectory()) filename += '/index.html';
  
      fs.readFile(filename, "binary", function(err, file) {
        if(err) {        
          response.writeHead(500, {"Content-Type": "text/plain"});
          response.write(err + "\n");
          response.end();
          return;
        }
  
        var headers = {};
        var contentType = contentTypesByExtension[path.extname(filename)];
        if (contentType) headers["Content-Type"] = contentType;
        response.writeHead(200, headers);
        response.write(file, "binary");
        response.end();
      });
    });
  }).listen(parseInt(port, 10));
  
  console.log("Static file server running at\n  => http://104.196.31.149:" + port + "/\nCTRL + C to shutdown");