var express = require('express');
var app = express();
var env = process.env.NODE_ENV || 'dev';
var appdir = 'app';
if(env === 'production'){
  appdir = 'dist';
}

console.log('Environment :: ' + env);

console.log('__dirname', __dirname + '\n');

app.use(express.static(__dirname + '/' + appdir));

app.get('/', function (req, res) {
  //console.log('res', res);
  res.redirect('/index.html');
});

app.listen(5000);
console.log('Server started at :: http://localhost:5000/');
