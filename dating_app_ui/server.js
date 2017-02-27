var express = require('express');
var app = express();
var port = 4000 || process.env.PORT;

app.use(express.static('public'));

app.listen(port, function() {
  console.log('Cash me on Port 4000');
});
