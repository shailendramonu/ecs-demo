var express = require('express');
var app = express();

console.log('__dirname', __dirname + '\n');

app.use(express.static(__dirname + '/dist'));

app.get('/', function (req, res) {
  //console.log('res', res);
  res.redirect('/index.html');
});

app.listen(5000);
console.log('Server started at :: http://localhost:5000/');