const https = require('https');
const fs = require('fs');

const options = {
  key: fs.readFileSync('certificado.key'),
  cert: fs.readFileSync('certificado.pem')
};

https.createServer(options, (req, res) => {
  res.writeHead(200);
  res.end('hello world\n');
}).listen(443);